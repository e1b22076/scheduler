window.onload = function () {
  const timeoutDuration = 300000; // タイムアウトの時間（ミリ秒）
  let isTimedOut = false;

  // タイマーの設定
  const timeoutTimer = setTimeout(() => {
    isTimedOut = true;
    // フォーム入力とボタンを無効化
    document.getElementById("code").disabled = true;
    document.getElementById("touroku").disabled = true;
    alert("ワンタイムパスコードの有効期限を過ぎました。メールを再送信してください。");
  }, timeoutDuration);

  // 入力があればタイムアウトをリセットする（オプション）
  document.getElementById("code").addEventListener("input", () => {
    if (!isTimedOut) {
      clearTimeout(timeoutTimer);
    }
  });

  // 送信ボタンのクリック時のバリデーション
  document.getElementById("touroku").addEventListener("click", function (event) {
    if (isTimedOut) {
      alert("時間切れです。再送信してください。");
      event.preventDefault();
      return false;
    }

    const adcode = document.getElementById("admin_code").value;
    const code = document.getElementById("code").value;

    let hasError = false;

    // 必須項目のチェック
    if (code.trim().length === 0) {
      alert('認証コードを入力してください。');
      hasError = true;
    }

    // 認証コードのチェック
    if (code !== adcode) {
      document.getElementById('code_chk').style.visibility = "visible";
      hasError = true;
    } else {
      document.getElementById('code_chk').style.visibility = "hidden";
    }

    // エラーがある場合は送信をキャンセル
    if (hasError) {
      event.preventDefault();
    }
  });
};
