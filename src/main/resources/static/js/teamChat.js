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
});
