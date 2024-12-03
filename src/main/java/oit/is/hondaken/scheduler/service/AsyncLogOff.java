package oit.is.hondaken.scheduler.service;

import java.io.IOException;
import java.util.concurrent.TimeUnit;

import org.springframework.scheduling.annotation.Async;
import org.springframework.stereotype.Service;
import org.springframework.web.servlet.mvc.method.annotation.SseEmitter;

@Service
public class AsyncLogOff {

  private int counter = 1;// 時間のカウント

  @Async
  public void count(SseEmitter emitter, String myNumber) throws IOException {

    try {
      while (true) {
        // ロールごとのカウンタとロール名を送る
        emitter.send(SseEmitter.event()
            .data(counter)
            .id(myNumber));
        TimeUnit.SECONDS.sleep(1);
      }
    } catch (InterruptedException e) {
      e.printStackTrace();
    }
  }
}
