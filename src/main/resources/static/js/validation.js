window.onload = function () {
  document.getElementById("passwordForm").addEventListener("submit", function (event) {
    const password = document.getElementById("password").value;
    const confirmPassword = document.getElementById("repassword").value;

    let hasError = false;

    // パスワードが入力されていない場合、エラーメッセージを非表示にする
    if (password.trim().length === 0) {
      document.getElementById('pass_chk').style.visibility = 'visible';
      hasError = true;
    } else {
      document.getElementById('pass_chk').style.visibility = 'hidden';
    }

    // パスワード再入力が一致していない場合
    if (password !== confirmPassword && password.trim().length > 0) {
      document.getElementById('repass_chk').style.visibility = 'visible';
      hasError = true;
    } else {
      document.getElementById('repass_chk').style.visibility = 'hidden';
    }

    // エラーがある場合、フォーム送信を防ぐ
    if (hasError) {
      event.preventDefault();
    }
  });
};
