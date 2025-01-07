package oit.is.hondaken.scheduler.service;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;
import java.security.SecureRandom;

import org.springframework.stereotype.Service;
import oit.is.hondaken.scheduler.model.Team;
// import oit.is.hondaken.scheduler.model.TeamMapper;
import oit.is.hondaken.scheduler.model.TeamMember;
// import oit.is.hondaken.scheduler.model.TeamMemberMapper;

@Service
public class TeamService {
  private static final String CHARACTERS = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789@#$%&*";
  private static final int TEAM_CODE_LENGTH = 7;
  private static final SecureRandom random = new SecureRandom();

  public void divideBelongTeam(ArrayList<Team> allTeam, ArrayList<Team> ownerTeam, ArrayList<Team> memberTeam,
      ArrayList<TeamMember> belongTeam, String myNumber) {

    Map<Integer, Team> teamMap = new HashMap<>();
    for (Team team : allTeam) {
      teamMap.put(team.getId(), team);
    }

    for (TeamMember bt : belongTeam) {
      Team team = teamMap.get(bt.getTeamId());
      if (team != null) {
        if (myNumber.equals(team.getTeamOwner())) {
          ownerTeam.add(team);
        } else {
          memberTeam.add(team);
        }
      }
    }
  }

  public String generateTeamCode() {
    StringBuilder teamCode = new StringBuilder(TEAM_CODE_LENGTH);
    for (int i = 0; i < TEAM_CODE_LENGTH; i++) {
        int index = random.nextInt(CHARACTERS.length());
        teamCode.append(CHARACTERS.charAt(index));
    }
    return teamCode.toString();
  }
}
