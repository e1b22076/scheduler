window.onload = function () {
  document.getElementById("touroku").addEventListener("click", function (event) {

    const adcode = document.getElementById("admin_code").value;
    const code = document.getElementById("code").value;
    const password = document.getElementById("password").value;
    const confirmPassword = document.getElementById("repassword").value;

    let hasError = false;

    // 必須項目のチェック
    if (code.trim().length === 0) {
      alert('認証コードを入力してください。');
      hasError = true;
    }

    if (password.trim().length === 0) {
      document.getElementById('pass_chk').style.visibility = 'visible';
      hasError = true;
    } else {
      document.getElementById('pass_chk').style.visibility = 'hidden';
    }

    if (password !== confirmPassword) {
      document.getElementById('repass_chk').style.visibility = 'visible';
      hasError = true;
    } else {
      document.getElementById('repass_chk').style.visibility = 'hidden';
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
