package oit.is.hondaken.scheduler.security;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.core.userdetails.User;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.security.web.SecurityFilterChain;
import org.springframework.security.web.util.matcher.AntPathRequestMatcher;

import org.springframework.context.ApplicationListener;
import org.springframework.security.authentication.event.AuthenticationSuccessEvent;
import org.springframework.security.core.Authentication;
import org.springframework.stereotype.Component;

import oit.is.hondaken.scheduler.model.UserSettingMapper;

@Configuration
@EnableWebSecurity
public class CustomUserDetailsService implements UserDetailsService {

  @Autowired
  UserSettingMapper userSettingMapper;

  @Bean
  public SecurityFilterChain filterChain(HttpSecurity http) throws Exception {
    http.formLogin(login -> login
        .loginPage("/login").permitAll()
        .defaultSuccessUrl("/calendar", true)
        .usernameParameter("accountId")
        .passwordParameter("pw"))

        .logout(logout -> logout
            .logoutUrl("/logout")
            .logoutSuccessUrl(
                "/")
            .addLogoutHandler((request, response, authentication) -> {
              // ログアウト時にユーザーの isActive を false に設定
              if (authentication != null) {
                String username = authentication.getName();
                int Uid = userSettingMapper.selectIdByNum(username);
                userSettingMapper.updateIsActive(Uid, false);
              }
            })) // ログアウト後に / にリダイレクト
        .authorizeHttpRequests(authz -> authz
            .requestMatchers(AntPathRequestMatcher.antMatcher("/calendar/**"))
            .authenticated()
            .requestMatchers(AntPathRequestMatcher.antMatcher("/timetable/**"))
            .authenticated()
            .requestMatchers(AntPathRequestMatcher.antMatcher("/todolist/**"))
            .authenticated()
            .requestMatchers(AntPathRequestMatcher.antMatcher("/team/**"))
            .authenticated()
            .requestMatchers(AntPathRequestMatcher.antMatcher("/join/**"))
            .authenticated()
            .requestMatchers(AntPathRequestMatcher.antMatcher("/setting/**"))
            .authenticated()
            .requestMatchers(AntPathRequestMatcher.antMatcher("/teacherSetting/**"))
            .authenticated()
            .requestMatchers(AntPathRequestMatcher.antMatcher("/**"))
            .permitAll())// 上記以外は全員アクセス可能
        .csrf(csrf -> csrf
            .ignoringRequestMatchers(AntPathRequestMatcher.antMatcher(
                "/h2-console/*"))
            .ignoringRequestMatchers(AntPathRequestMatcher.antMatcher(
                "/logout")))// h2-console用にCSRF対策を無効化
        .headers(headers -> headers
            .frameOptions(frameOptions -> frameOptions
                .sameOrigin()));
    return http.build();
  }

  @Override
  public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
    // DBからパスワードを取得
    String password = userSettingMapper.selectPassByNum(username);
    String userRole = userSettingMapper.selectRoleByNum(username);

    if (password == null) {
      throw new UsernameNotFoundException("User not found: " + username);
    }
    // ユーザー情報を生成
    return User.withUsername(username)
        .password("{bcrypt}" + password)
        .roles(userRole) // 必要に応じてロールを設定
        .build();
  }

  @Component
  public class AuthenticationSuccessListener implements ApplicationListener<AuthenticationSuccessEvent> {

    private final UserSettingMapper userSettingMapper;

    public AuthenticationSuccessListener(UserSettingMapper userSettingMapper) {
      this.userSettingMapper = userSettingMapper;
    }

    @Override
    public void onApplicationEvent(AuthenticationSuccessEvent event) {
      Authentication authentication = event.getAuthentication();

      // 認証成功したユーザー名を取得
      String username = authentication.getName();

      // isActive を true に更新
      int userId = userSettingMapper.selectIdByNum(username);
      userSettingMapper.updateIsActive(userId, true);
    }
  }

}
