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
        .defaultSuccessUrl("/calendar")
        .usernameParameter("accountId")
        .passwordParameter("pw"))
        .logout(logout -> logout
            .logoutUrl("/logout")
            .logoutSuccessUrl("/")) // ログアウト後に / にリダイレクト
        .authorizeHttpRequests(authz -> authz
            .requestMatchers(AntPathRequestMatcher.antMatcher("/calendar/**"))
            .authenticated()
            .requestMatchers(AntPathRequestMatcher.antMatcher("/**"))
            .permitAll())// 上記以外は全員アクセス可能
        .csrf(csrf -> csrf
            .ignoringRequestMatchers(AntPathRequestMatcher.antMatcher("/h2-console/*")))// h2-console用にCSRF対策を無効化
        .headers(headers -> headers
            .frameOptions(frameOptions -> frameOptions
                .sameOrigin()));
    return http.build();
  }

  @Override
  public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
    // DBからパスワードを取得
    String password = userSettingMapper.selectPassByNum(username);

    if (password == null) {
      throw new UsernameNotFoundException("User not found: " + username);
    }
    // BCryptPasswordEncoder encoder = new BCryptPasswordEncoder();
    // String hashedPassword = encoder.encode(password);

    // ユーザー情報を生成
    return User.withUsername(username)
        .password("{bcrypt}" + password)
        .roles("USER") // 必要に応じてロールを設定
        .build();
  }
}
