document.addEventListener("DOMContentLoaded", function () {
  const teamId = document.getElementById("teamId").value;
  const userId = document.getElementById("userId").value; // ユーザーIDを取得
  const eventSource = new EventSource(`/team/chat/sse/${teamId}`);

  eventSource.onmessage = function (event) {
    const teamChats = JSON.parse(event.data);
    const messageArea = document.getElementById("teamChats");
    const currentMessageCount = messageArea.childElementCount;

    for (let i = currentMessageCount; i < teamChats.length; i++) {
      const chat = teamChats[i];

      // 送信者ID
      const senderIdElement = document.createElement("small");
      senderIdElement.classList.add("sender-id");
      senderIdElement.textContent = chat.senderId;

      // メッセージ要素
      const messageElement = document.createElement("div");
      messageElement.classList.add("message");
      if (chat.senderId === userId) {
        messageElement.classList.add("self");
      } else {
        messageElement.classList.add("other");
      }

      messageElement.textContent = chat.message; // メッセージを表示
      messageArea.appendChild(senderIdElement);
      messageArea.appendChild(messageElement);
    }

    setTimeout(scrollToBottom, 0);
  };

  eventSource.onerror = function () {
    eventSource.close();
  };

  // メッセージ送信後に自動スクロール
  const messageForm = document.getElementById("messageForm");
  messageForm.addEventListener("submit", function () {
    setTimeout(scrollToBottom, 100);
  });

  function scrollToBottom() {
    setTimeout(() => {
      const messageArea = document.getElementById("teamChats");
      messageArea.scrollTop = messageArea.scrollHeight;
    }, 0);
  }

  // メッセージ入力フィールド
  const messageInput = document.getElementById('messageInput');

  // 入力フィールドで「Shift + Enter」の処理
  messageInput.addEventListener('keydown', function (event) {
    if (event.key === 'Enter' && event.shiftKey) {
      return;
    } else if (event.key === 'Enter') {
      const submitButton = document.querySelector('button[type="submit"]');
      submitButton.click();
      event.preventDefault();
    }
  });

  const descriptionInput = document.getElementById('descriptionInput');
  const charCount = document.getElementById('charCount');

  if (descriptionInput && charCount) {
    descriptionInput.addEventListener('input', function () {
      const currentLength = descriptionInput.value.length;
      charCount.textContent = `${currentLength} / 200`;
    });
  }

  // モーダルを開く
  function openModal(element) {
    const modal = document.getElementById('teamModal');
    const modalType = element.getAttribute('data-modal-type');
    const modalTitle = document.getElementById('modalTeamName');
    const modalDescription = document.getElementById('modalTeamDescription');
    const form = modal.querySelector('form');
    const submitButton = form.querySelector('button[type="submit"]');

    modalTitle.textContent = '';
    modalDescription.textContent = '';
    form.style.display = 'none';
    submitButton.style.display = 'none';

    switch (modalType) {
      case 'description':
        const teamDescription = element.getAttribute('data-team-description');
        modalTitle.textContent = 'チーム説明';
        modalDescription.textContent = teamDescription || '説明はありません。';
        submitButton.style.display = 'none';
        break;

      case 'code':
        const teamCode = element.getAttribute('data-team-code');
        modalTitle.textContent = 'チームコード生成';
        modalDescription.textContent = 'チームコード: ' + (teamCode || 'まだ生成されていません。');
        form.style.display = 'block'; // フォームを表示
        submitButton.style.display = 'block';
        form.setAttribute('action', '/team/create/code');
        submitButton.textContent = 'コード生成';
        break;

      case 'delete':
        modalTitle.textContent = 'チーム削除';
        modalDescription.textContent = '本当にチームを削除しますか？この操作は元に戻せません。';
        form.style.display = 'block'; // フォームを表示
        submitButton.style.display = 'block';
        form.setAttribute('action', '/team/delete');
        submitButton.textContent = '削除';
        break;

      case 'leave':
        modalTitle.textContent = 'チーム退会';
        modalDescription.textContent = 'チームから退会しますか？';
        form.style.display = 'block'; // フォームを表示
        submitButton.style.display = 'block';
        form.setAttribute('action', '/team/leave');
        submitButton.textContent = '退会';
        break;

      default:
        modalTitle.textContent = '情報';
        modalDescription.textContent = '不明な操作です。';
    }

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
