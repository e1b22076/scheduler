document.addEventListener("DOMContentLoaded", () => {
  const modal = document.getElementById("assignmentModal");
  const closeModal = document.getElementById("closeModal");
  const openButtons = document.querySelectorAll(".open-modal-button");
  const scheduleIdField = document.getElementById("scheduleId");

  // モーダルを開く
  openButtons.forEach(button => {
    button.addEventListener("click", () => {
      const scheduleId = button.getAttribute("data-schedule-id");
      scheduleIdField.value = scheduleId; // hidden フィールドにセット
      modal.style.display = "block";
    });
  });

  // モーダルを閉じる
  closeModal.addEventListener("click", () => {
    modal.style.display = "none";
  });

  // 外部クリックでモーダルを閉じる
  window.addEventListener("click", (event) => {
    if (event.target === modal) {
      modal.style.display = "none";
    }
  });
});
