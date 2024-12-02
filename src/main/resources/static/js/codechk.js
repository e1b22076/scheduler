// フォームのバリデーション
window.onload = function () {
  document.getElementById("touroku").addEventListener("click", function (event) {
    const adcode = document.getElementById("admin_code").value; // 送ったコード
    const code = document.getElementById("code").value; // 入力したコード

    let hasError = false;

    // 必須項目のチェック
    if (code.trim().length === 0) {
      alert('認証コードを入力してください。');
      hasError = true;
    }

    // 入力形式のチェック
    let formatError = false;
    // 認証コードのチェック
    if (code != adcode) {
      document.getElementById('code_chk').style.visibility = "visible";
      formatError = true;
    } else {
      document.getElementById('code_chk').style.visibility = "hidden";
    }

    // エラーがある場合はフォーム送信を停止
    if (hasError || formatError) {
      event.preventDefault();
      return false;
    }
  });
};
