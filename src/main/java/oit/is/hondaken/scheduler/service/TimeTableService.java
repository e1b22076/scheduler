package oit.is.hondaken.scheduler.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import oit.is.hondaken.scheduler.model.Schedule;
import oit.is.hondaken.scheduler.model.ScheduleMapper;
import oit.is.hondaken.scheduler.model.TimeTableMapper;

@Service
public class TimeTableService {

  @Autowired
  private TimeTableMapper timeTableMapper;

  @Autowired
  private ScheduleMapper scheduleMapper;

  // 対象の学科の授業リストをDBから取得
  public List<Schedule> getTargetClasses(String period, String day, String department, int grade) {
    int dataPeriod = convertPeriodToIndex(period);
    String dataDay = convertDayToEnglish(day);

    return scheduleMapper.selectAllClasses(dataPeriod, capitalizeFirstLetter(dataDay), department, grade);
  }

  // 学科の授業リストに連続科目を追加
  public void addClassesByContinuous(List<Schedule> targetClasses, boolean state, String period, String day, String department, int grade) {
    int checkPeriod = convertPeriodToIndex(period) - 1;
    String dataDay = convertDayToEnglish(day);
    if (checkPeriod <= 0) {
      return;
    } else {
      List<Schedule> addClasses = scheduleMapper.selectContinuousClasses(state, checkPeriod,
          capitalizeFirstLetter(dataDay), department, grade);
      targetClasses.addAll(addClasses);
    }
  }

  // 学科の授業リストにEnglishなどを追加
  public void addClassesByDepartment(List<Schedule> targetClasses, String period, String day, String department, int grade) {
    List<Schedule> addClasses = getTargetClasses(period, day, department, grade);
    targetClasses.addAll(addClasses);
  }

  // 時間割のフィールドに授業を登録にする
  public String registerClass(String myNumber, String day, String period, String classId) {
    String field = createTimeTableKey(day, period);

    boolean continuous = scheduleMapper.selectContinuousById(classId);

    if (!field.isEmpty()) {
      timeTableMapper.updateField(myNumber, field, classId);
      if (continuous == true) {
        if (convertPeriodToIndex(period) == scheduleMapper.selectDayTimeById(classId)) {
          field = updateTimeTableKey(field, 1);
          timeTableMapper.updateField(myNumber, field, classId);
        } else {
          field = updateTimeTableKey(field, -1);
          timeTableMapper.updateField(myNumber, field, classId);
        }
      }
      return "をコマに登録しました";
    } else {
      throw new IllegalArgumentException("無効な曜日または時限が指定されました");
    }
  }

  // 時間割のフィールドをNULLにする
  public String removeClass(String myNumber, String day, String period) {
    String field = createTimeTableKey(day, period);
    String classId = timeTableMapper.selectClassId(field, myNumber);

    boolean continuous = scheduleMapper.selectContinuousById(classId);

    if (!field.isEmpty()) {
      timeTableMapper.clearField(myNumber, field);
      if (continuous == true) {
        if (convertPeriodToIndex(period) == scheduleMapper.selectDayTimeById(classId)) {
          field = updateTimeTableKey(field, 1);
          timeTableMapper.clearField(myNumber, field);
        } else {
          field = updateTimeTableKey(field, -1);
          timeTableMapper.clearField(myNumber, field);
        }
      }
      return "をコマから外しました";
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
  public String convertDayToEnglish(String day) {
    Map<String, String> dayMap = Map.of(
        "月", "mon",
        "火", "tue",
        "水", "wed",
        "木", "thu",
        "金", "fri",
        "土", "sat");

    return dayMap.getOrDefault(day, ""); // 該当しない場合は空文字列
  }

  // 余分な文字を排除（例: "１限目" -> "1"）
  public int convertPeriodToIndex(String period) {
    if (period == null || period.isEmpty()) {
      return -1; // 無効な時限
    }

    String number = period.replaceAll("\\D+", ""); // 非数字文字をすべて除去

    try {
      return Integer.parseInt(number);
    } catch (NumberFormatException e) {
      throw new IllegalArgumentException("無効な時限が指定されました: " + period, e);
    }
  }

  // 時限キーを変更するメソッド
  private String updateTimeTableKey(String currentKey, int increment) {
    if (currentKey == null || currentKey.isEmpty()) {
      return ""; // 無効なキー
    }

    // 現在のキーから日付部分と時限部分を分割
    String dayKey = currentKey.replaceAll("\\d", ""); // 英語部分（例: "mon"）
    String periodPart = currentKey.replaceAll("\\D", ""); // 数字部分（例: "1"）

    try {
      int periodIndex = Integer.parseInt(periodPart); // 数字部分を整数に変換
      int newPeriodIndex = periodIndex + increment; // 増加分を計算

      if (newPeriodIndex <= 0) {
        return ""; // 負の時限は無効
      }

      return dayKey + newPeriodIndex; // 新しいキーを返す
    } catch (NumberFormatException e) {
      return ""; // 無効なキー形式の場合
    }
  }

  private String capitalizeFirstLetter(String input) {
    if (input == null || input.isEmpty()) {
      return input; // null または空文字の場合はそのまま返す
    }
    return input.substring(0, 1).toUpperCase() + input.substring(1);
  }

  // 他学科履修可能な授業の取得
  public List<Schedule> getOtherDepartmentClasses(String period, String day, String department, int grade) {
    int dataPeriod = convertPeriodToIndex(period);
    String dataDay = convertDayToEnglish(day);

    switch (department) {
      case "ID":
        return scheduleMapper.selectOtherClassID(dataPeriod, capitalizeFirstLetter(dataDay), grade);
      case "IC":
        return scheduleMapper.selectOtherClassIC(dataPeriod, capitalizeFirstLetter(dataDay), grade);
      case "IS":
        return scheduleMapper.selectOtherClassIS(dataPeriod, capitalizeFirstLetter(dataDay), grade);
      case "IM":
        return scheduleMapper.selectOtherClassIM(dataPeriod, capitalizeFirstLetter(dataDay), grade);
      case "IN":
        return scheduleMapper.selectOtherClassIN(dataPeriod, capitalizeFirstLetter(dataDay), grade);
      default:
        return List.of();
    }
  }
}
