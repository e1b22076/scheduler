package oit.is.hondaken.scheduler.service;

// import java.util.ArrayList;
import java.util.concurrent.TimeUnit;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.scheduling.annotation.Async;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.servlet.mvc.method.annotation.SseEmitter;

import oit.is.hondaken.scheduler.model.TeamChat;
import oit.is.hondaken.scheduler.model.TeamChatMapper;

@Service
public class AsyncTeamChatService {
  boolean dbUpdated = false;

  @Autowired
  TeamChatMapper teamChatMapper;

  @Transactional
  public TeamChat syncPostTeamChat(TeamChat teamChat) {
    teamChatMapper.insertTeamChat(teamChat);
    this.dbUpdated = true;
    return teamChat;
  }

  @Async
  public void asyncShowTeamChatList(SseEmitter emitter, int teamId) {
    dbUpdated = true;
    try {
      while (true) {
        if (false == dbUpdated) {
          TimeUnit.MILLISECONDS.sleep(500);
          continue;
        }
        emitter.send(teamChatMapper.selectAllTeamChat(teamId));
        TimeUnit.MILLISECONDS.sleep(1000);
        dbUpdated = false;
      }
    } catch (Exception e) {
      emitter.complete();
    }
  }
}
