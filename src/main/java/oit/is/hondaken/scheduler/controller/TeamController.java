package oit.is.hondaken.scheduler.controller;

import java.security.Principal;
import java.util.ArrayList;
import java.util.List;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.method.annotation.SseEmitter;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import oit.is.hondaken.scheduler.model.Team;
import oit.is.hondaken.scheduler.model.TeamMapper;
import oit.is.hondaken.scheduler.model.TeamMember;
import oit.is.hondaken.scheduler.model.TeamMemberMapper;
import oit.is.hondaken.scheduler.model.TeamChat;
import oit.is.hondaken.scheduler.model.TeamChatMapper;
import oit.is.hondaken.scheduler.service.AsyncTeamChatService;
import oit.is.hondaken.scheduler.service.TeamService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.ModelMap;

@Controller
public class TeamController {

  @Autowired
  private TeamMapper teamMapper;

  @Autowired
  private TeamMemberMapper teamMemberMapper;

  @Autowired
  private TeamChatMapper teamChatMapper;

  @Autowired
  private TeamService teamService;

  @Autowired
  private AsyncTeamChatService asyncTeamChatService;

  @GetMapping("/team")
  public String team(ModelMap model, Principal prin) {
    String myNumber = prin.getName();

    ArrayList<Team> allTeam = new ArrayList<>();
    ArrayList<Team> ownerTeam = new ArrayList<>();
    ArrayList<Team> memberTeam = new ArrayList<>();
    ArrayList<TeamMember> belongTeam = new ArrayList<>();

    allTeam = teamMapper.selectAllTeam();
    belongTeam = teamMemberMapper.selectTeamByNum(myNumber);

    teamService.divideBelongTeam(allTeam, ownerTeam, memberTeam, belongTeam, myNumber);

    model.addAttribute("ownerTeam", ownerTeam);
    model.addAttribute("memberTeam", memberTeam);

    return "team.html";
  }

  @PostMapping("/team/create")
  @Transactional
  public String createTeam(String teamName, String teamType, String description, ModelMap model, Principal prin) {
    String teamOwner = prin.getName();

    Team team = new Team();
    team.setTeamName(teamName);
    team.setTeamOwner(teamOwner);
    team.setTeamType(teamType);
    team.setTeamDescription(description);
    team.setTeamCode(teamService.generateTeamCode());

    teamMapper.insertTeam(team);

    TeamMember teamMember = new TeamMember();
    teamMember.setTeamId(team.getId());
    teamMember.setMemberId(teamOwner);

    teamMemberMapper.insertTeamMember(teamMember);

    return "redirect:/team";
  }

  @GetMapping("/team/create")
  public String teamCreate(ModelMap model, Principal prin) {
    return "teamCreate.html";
  }

  @GetMapping("/team/participate")
  public String teamParticipate(ModelMap model, Principal prin) {
    ArrayList<Team> publicTeam = new ArrayList<>();
    publicTeam = teamMapper.selectAllByTeamType("public"); // パブリックチームのみ表示

    model.addAttribute("publicTeam", publicTeam);

    return "teamParticipate.html";
  }

  @PostMapping("/team/participate/public")
  @Transactional
  public String participateTeam(int teamId, ModelMap model, Principal prin, RedirectAttributes redirectAttributes) {
    String memberId = prin.getName();

    // チームへの参加状態を確認
    boolean isAlreadyMember = teamMemberMapper.isMemberOfTeam(teamId, memberId);
    if (isAlreadyMember) {
      redirectAttributes.addFlashAttribute("message", "既に参加しています");
      return "redirect:/team/participate";
    }

    // 新しいメンバーとして登録
    TeamMember teamMember = new TeamMember();
    teamMember.setTeamId(teamId);
    teamMember.setMemberId(memberId);
    teamMemberMapper.insertTeamMember(teamMember);
    redirectAttributes.addFlashAttribute("message", "チームに参加しました");

    return "redirect:/team/chat/" + teamId;
  }

  @PostMapping("/team/participate/private")
  @Transactional
  public String participateTeam(String teamCode, ModelMap model, Principal prin, RedirectAttributes redirectAttributes) {
    String memberId = prin.getName();

    Integer teamId = teamMapper.selectTeamIdByTeamCode(teamCode);
    if (teamId == null || teamId == 0) {
      redirectAttributes.addFlashAttribute("message", "チームコードが間違っています");
      return "redirect:/team/participate";
    }

    // チームへの参加状態を確認
    boolean isAlreadyMember = teamMemberMapper.isMemberOfTeam(teamId, memberId);
    if (isAlreadyMember) {
      redirectAttributes.addFlashAttribute("message", "既に参加しています");
      return "redirect:/team/participate";
    }

    // 新しいメンバーとして登録
    TeamMember teamMember = new TeamMember();
    teamMember.setTeamId(teamId);
    teamMember.setMemberId(memberId);
    teamMemberMapper.insertTeamMember(teamMember);
    redirectAttributes.addFlashAttribute("message", "チームに参加しました");

    return "redirect:/team/chat/" + teamId;
  }

  @GetMapping("/team/chat/{teamId}")
  public String teamChat(@PathVariable("teamId") int teamId, ModelMap model, Principal prin) {
    Team team = teamMapper.selectTeamById(teamId);
    List<TeamChat> teamChats = teamChatMapper.selectAllTeamChat(teamId);

    model.addAttribute("teamChats", teamChats);
    model.addAttribute("teamName", team.getTeamName());
    model.addAttribute("teamId", teamId);
    return "teamChat.html";
  }

  @PostMapping("/team/chat/{teamId}")
  @Transactional
  public String sendTeamChat(@PathVariable("teamId") int teamId, String message, String mediaUrl, String mediaType,
      Principal prin) {
    String senderId = prin.getName();

    TeamChat teamChat = new TeamChat();
    teamChat.setTeamId(teamId);
    teamChat.setSenderId(senderId);
    teamChat.setMessage(message);
    teamChat.setMediaUrl(mediaUrl);
    teamChat.setMediaType(mediaType);
    teamChat.setSendTime(new java.sql.Timestamp(System.currentTimeMillis()));

    teamChatMapper.insertTeamChat(teamChat);

    return "redirect:/team/chat/" + teamId;
  }

  @GetMapping("/team/chat/sse/{teamId}")
  @ResponseBody
  public SseEmitter streamTeamChat(@PathVariable("teamId") int teamId) {
    SseEmitter emitter = new SseEmitter();
    asyncTeamChatService.asyncShowTeamChatList(emitter, teamId);
    return emitter;
  }
}
