// フォームのバリデーション
function toggleInputState(checkbox) {
  const textInput = document.getElementById("gakuseki");
  textInput.disabled = checkbox.checked;
}

window.onload = function () {
  document.getElementById("touroku").addEventListener("click", function (event) {
    const gakuseki = document.getElementById("gakuseki").value;
    const mail = document.getElementById("mail").value;
    const password = document.getElementById("password").value;
    const confirmPassword = document.getElementById("repassword").value;

    let hasError = false;

    // 必須項目のチェック
    if (gakuseki.trim().length === 0) {
      document.getElementById('gakuseki_chk').style.visibility = 'visible';
      hasError = true;
    } else {
      document.getElementById('gakuseki_chk').style.visibility = 'hidden';
    }

    if (mail.trim().length === 0) {
      document.getElementById('mail_chk').style.visibility = 'visible';
      hasError = true;
    } else {
      document.getElementById('mail_chk').style.visibility = 'hidden';
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

    // 入力形式のチェック
    let formatError = false;

    // 学籍番号の形式チェック
    const gakusekiRegex = /^[BCQJN]\d{5}$/;
    if (!checkbox.checked && !gakusekiRegex.test(gakuseki)) {
      document.getElementById('gakuseki_chk').style.visibility = 'visible';
      formatError = true;
    } else {
      document.getElementById('gakuseki_chk').style.visibility = 'hidden';
    }

    // メールアドレスの形式チェック
    const mailRegex = /.*@oit\.ac\.jp$/;
    if (!mailRegex.test(mail)) {
      document.getElementById('mail_chk').style.visibility = 'visible';
      formatError = true;
    } else {
      document.getElementById('mail_chk').style.visibility = 'hidden';
    }

    // エラーがある場合はフォーム送信を停止
    if (hasError || formatError) {
      event.preventDefault();
      return false;
    }
  });
};
