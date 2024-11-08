package oit.is.hondaken.scheduler.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import oit.is.hondaken.scheduler.model.event;
import com.fasterxml.jackson.databind.ObjectMapper;

@RestController
@RequestMapping("/api/event")
public class RestWebController {

  @GetMapping(value = "/all")
  public String getEvents() {
    String jsonMsg = null;
    try {
      List<event> events = new ArrayList<event>();
      event event = new event();
      event.setTitle("first event");
      event.setStart("2024-10-31");
      events.add(event);

      event = new event();
      event.setTitle("second event");
      event.setStart("2024-11-01");
      event.setEnd("2017-10-12");
      events.add(event);

      // FullCalendarにエンコード済み文字列を渡す
      ObjectMapper mapper = new ObjectMapper();
      jsonMsg = mapper.writerWithDefaultPrettyPrinter().writeValueAsString(events);
    } catch (IOException ioex) {
      System.out.println(ioex.getMessage());
    }
    return jsonMsg;
  }
}
