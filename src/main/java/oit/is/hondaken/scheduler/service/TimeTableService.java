package oit.is.hondaken.scheduler.service;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import oit.is.hondaken.scheduler.model.TimeTableMapper;

@Service
public class TimeTableService {

  @Autowired
  private TimeTableMapper timeTableMapper;

  // 時間割のフィールドをNULLにする
  public void removeClass(String myNumber, String day, String period) {
    String field = createTimeTableKey(day, period);

    if (!field.isEmpty()) {
      timeTableMapper.clearField(myNumber, field);
    } else {
      throw new IllegalArgumentException("無効な曜日または時限が指定されました");
    }
  }

  // 曜日と時限を結合（例: "月", "1時限" -> "mon1"）
  private String createTimeTableKey(String day, String period) {
    String dayKey = convertDayToEnglish(day);
    int periodIndex = convertPeriodToIndex(period);

    if (dayKey.isEmpty() || periodIndex < 0) {
      return ""; // 無効な場合は空文字列を返す
    }

    return dayKey + (periodIndex);
  }

  // 曜日を英語に変換
  private String convertDayToEnglish(String day) {
    Map<String, String> dayMap = Map.of(
        "月", "mon",
        "火", "tue",
        "水", "wed",
        "木", "thu",
        "金", "fri",
        "土", "sat");

    return dayMap.getOrDefault(day, ""); // 該当しない場合は空文字列
  }

  // 余分な文字を排除
  private int convertPeriodToIndex(String period) {
    if (period == null || period.isEmpty()) {
      return -1; // 無効な時限
    }

    // 数字部分を抽出（例: "１時限" -> "1"）
    String number = period.replaceAll("\\D+", ""); // 非数字文字をすべて除去

    try {
      return Integer.parseInt(number);
    } catch (NumberFormatException e) {
      return -1; // 無効な時限
    }
  }
}
