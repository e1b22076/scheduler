package oit.is.hondaken.scheduler.controller;

import java.io.IOException;
import java.security.Principal;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.scheduling.annotation.Scheduled;
//import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.mvc.method.annotation.SseEmitter;

import oit.is.hondaken.scheduler.service.AsyncLogOff;

@RestController
@RequestMapping("/")
public class AutoLogOffController {
  private static final Logger logger = LoggerFactory.getLogger(ScheduleController.class);

  @Autowired
  private AsyncLogOff logOff;
  // SseEmitterがnewされるたびにカウントアップする数値
  int emitterCounter = 0;

  // 各ロールのemitterを都度newしてmapに保存していって，定期的に異なったメッセージをscheduledで周知できないか
  // 都度newしないと過去の通信が上書きされてしまう
  ConcurrentHashMap<String, SseEmitter> semap = new ConcurrentHashMap<String, SseEmitter>();

  @GetMapping("step1")
  public SseEmitter pushCount58(@AuthenticationPrincipal UserDetails user, Principal prin) {
    String myNumber = prin.getName();
    // SseEmitterの生成
    SseEmitter emitter = new SseEmitter(Long.MAX_VALUE);
    this.emitterCounter++;// newされたemitterの数

    // mapにemitterCounterを文字列にしたものとemitterを保存する
    // String semapId = "" + this.emitterCounter;
    // this.semap.put(semapId, emitter);
    try {
      this.logOff.count(emitter, myNumber);
    } catch (IOException e) {
      // 例外の名前とメッセージを表示し，mapから対象のemitterを削除する
      logger.warn("Exception:" + e.getClass().getName() + ":" + e.getMessage());
      logger.info("emitter is removed");
      // this.semap.remove(semapId);
    }
    return emitter;

  }

  @Scheduled(fixedRate = 60000)
  public void logoff() {

    // this.semap内のすべてのIDとSseEmitterを取得し，heartbeatメッセージを送る
    for (Map.Entry<String, SseEmitter> entry : this.semap.entrySet()) {
      try {
        entry.getValue().send(SseEmitter.event()
            .data("heartbeat")
            .id("" + entry.getKey()));
      } catch (IOException e) {
        // 例外の名前とメッセージを表示し，mapから対象のemitterを削除する
        logger.warn("Exception:" + e.getClass().getName() + ":" + e.getMessage());
        logger.info("emitter" + entry.getKey() + " is removed");
        this.semap.remove(entry.getKey());
      }
    }
  }
}
