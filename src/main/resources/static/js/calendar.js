function validateTime() {
  const startTime = document.getElementById("startTime").value;
  const endTime = document.getElementById("endTime").value;

  if (startTime && endTime && endTime < startTime) {
    alert("終了時間は開始時間より後に設定してください。");
    document.getElementById("endTime").value = ""; // Clear end time if invalid
  }
}

function validateForm() {
  // 日付検証
  const startDate = document.getElementById("startDate").value;
  const endDate = document.getElementById("endDate").value;

  if (startDate && endDate && endDate < startDate) {
    alert("終了日は開始日より後の日にちを設定してください。");
    return false; // 検証失敗
  }

  // 時間検証
  const startTime = document.getElementById("startTime").value;
  const endTime = document.getElementById("endTime").value;
  if (
    startTime &&
    endTime &&
    endTime < startTime &&
    (endDate == "" || // 終了日が存在する
    startDate === endDate) // 開始日と終了日が異なる場合のみ検証
  ) {
    alert("終了時間は開始時間より後に設定してください。");
    return false; // 検証失敗
  }
  return true; // 検証成功
}
