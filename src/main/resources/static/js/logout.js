// 最終アクション時間の初期値
let lastActionTime = Date.now();

// アクションがあった場合のタイマーリセット
const resetActionTimer = () => {
  lastActionTime = Date.now();
};

// アクション検知
document.addEventListener('click', (e) => {
  resetActionTimer();
});

document.addEventListener('keydown', (e) => {
  resetActionTimer();
});

document.addEventListener('mousemove', (e) => {
  resetActionTimer();
});

window.addEventListener('scroll', () => {
  resetActionTimer();
});

// 30秒間アクションがない場合にフラグをPOSTする
const checkInactivity = () => {
  const now = Date.now();
  if (now - lastActionTime > 5000) { // 5秒
    sendLogoutRequest(); // フラグ送信
    resetActionTimer(); // 再度カウントをリセット
  }
};

// ログアウト用のPOSTリクエストを自動送信
const sendLogoutRequest = () => {
  const csrfToken = document.querySelector('meta[name="_csrf"]').getAttribute('content');
  const csrfParameterName = document.querySelector('meta[name="_csrf_header"]').getAttribute('content');

  // フォームを作成してCSRFトークンを送信
  const form = document.createElement('form');
  form.method = 'POST';
  form.action = '/logout';

  // CSRFトークンをフォームに追加
  const csrfInput = document.createElement('input');
  csrfInput.type = 'hidden';
  csrfInput.name = csrfParameterName; // CSRFトークンのパラメータ名
  csrfInput.value = csrfToken; // CSRFトークンの値
  form.appendChild(csrfInput);

  // フォームを送信（ボタン不要）
  document.body.appendChild(form);
  form.submit();

  alert('ログインがタイムアウトしました');
};

// 1秒ごとに非アクティブ状態をチェック
setInterval(checkInactivity, 1000);
