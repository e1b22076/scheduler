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

// モーダルを開いて詳細を表示
function openDetailModal(event) {
  const modal = document.getElementById('event-detail-modal');
  const overlay = document.getElementById('modal-overlay-detail');

  // イベントの詳細情報をモーダルにセット
  document.getElementById('event-title-detail').textContent = event.title;
  document.getElementById('event-description-detail').textContent = event.description || "なし";
  document.getElementById('event-start-date').textContent = event.startDate || "未設定";
  document.getElementById('event-end-date').textContent = event.endDate || "未設定";
  document.getElementById('event-start-time').textContent = event.startTime || "未設定";
  document.getElementById('event-end-time').textContent = event.endTime || "未設定";
  document.getElementById('event-location').textContent = event.location || "未設定";

  modal.classList.add('active');
  overlay.classList.add('active');
}

function closeDetailModal() {
  const modal = document.getElementById('event-detail-modal');
  const overlay = document.getElementById('modal-overlay-detail');

  modal.classList.remove('active');
  overlay.classList.remove('active');
}

// イベントクリック時にデータを渡す
document.addEventListener('DOMContentLoaded', () => {
  // すべてのイベントに対して
  document.querySelectorAll('.event-other, .event-user').forEach(eventDiv => {
    const event = {
      title: eventDiv.getAttribute('data-title'),
      description: eventDiv.getAttribute('data-description'),
      startDate: eventDiv.getAttribute('data-start-date'),
      endDate: eventDiv.getAttribute('data-end-date'),
      startTime: eventDiv.getAttribute('data-start-time'),
      endTime: eventDiv.getAttribute('data-end-time'),
      location: eventDiv.getAttribute('data-location'),
    };

    // イベントをクリック時にモーダルを開く
    eventDiv.addEventListener('click', () => openDetailModal(event));
  });
});
