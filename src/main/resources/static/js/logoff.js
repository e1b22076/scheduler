document.addEventListener('DOMContentLoaded', () => {
  let eventSource;

  const connectToServer = () => {
    console.log('Connecting to server...');
    eventSource = new EventSource('/step1');

    // メッセージを受信したときの処理
    eventSource.onmessage = (event) => {
      console.log('Message from server:', event.data);
    };

    // エラー発生時の処理（例: サーバー切断時）
    eventSource.onerror = () => {
      console.error('Connection lost, trying to reconnect...');
      eventSource.close(); // 接続を閉じる
      setTimeout(() => {
        connectToServer(); // 再接続を試みる
      }, 5000); // 5秒後に再接続
    };
  };

  // 初回接続
  connectToServer();
});
