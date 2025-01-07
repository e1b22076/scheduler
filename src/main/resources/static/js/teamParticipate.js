document.addEventListener("DOMContentLoaded", function () {
  const message = document.getElementById("flashMessage");

  if (message && message.innerText.trim() !== "") {
    // メッセージを表示
    message.style.display = "block";

    // 5秒後にメッセージを非表示にする
    setTimeout(function () {
      message.style.display = "none";
    }, 4000);  // 4秒後に消える
  }

  // モーダルを開く
  function openModal(element) {
    const modal = document.getElementById('teamModal');
    const teamName = element.textContent;
    const teamId = element.getAttribute('data-team-id');
    const teamDescription = element.getAttribute('data-team-description');

    document.getElementById('modalTeamName').textContent = teamName;
    document.getElementById('modalTeamDescription').textContent = teamDescription;
    document.getElementById('teamId').value = teamId; // teamId を設定

    modal.classList.remove('hidden');
    modal.style.display = 'block';
  }

  // モーダルを閉じる
  function closeModal() {
    const modal = document.getElementById('teamModal');
    modal.classList.add('hidden');
    modal.style.display = 'none';
  }

  // 関数をグローバルスコープに登録
  window.openModal = openModal;
  window.closeModal = closeModal;
});
