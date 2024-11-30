// フォームのバリデーション
window.onload = function () {
  document.getElementById("touroku").addEventListener("click", function (event) {
    const gakuseki = document.getElementById("gakuseki").value;
    const mail = document.getElementById("mail").value;
    const password = document.getElementById("password").value;
    const confirmPassword = document.getElementById("confirmPassword").value;

    let hasError = false;

    // 必須項目のチェック
    if (gakuseki.trim().length === 0) {
      alert('学籍番号を入力してください。');
      hasError = true;
    }

    if (mail.trim().length === 0) {
      alert('メールアドレスを入力してください。');
      hasError = true;
    }

    if (password.trim().length === 0) {
      alert('パスワードを入力してください。');
      hasError = true;
    }

    if (password !== confirmPassword) {
      alert('パスワードが一致していません。');
      hasError = true;
    }

    // 入力形式のチェック
    let formatError = false;

    // 学籍番号の形式チェック
    const gakusekiRegex = /^[A-Z]\d{5}$/;
    if (!gakusekiRegex.test(gakuseki)) {
      document.getElementById('gakuseki_chk').style.display = "block";
      formatError = true;
    } else {
      document.getElementById('gakuseki_chk').style.display = "none";
    }

    // メールアドレスの形式チェック
    const mailRegex = /^e1[a-z]\d{5}@oit\.ac\.jp$/;
    if (!mailRegex.test(mail)) {
      document.getElementById('mail_chk').style.display = "block";
      formatError = true;
    } else {
      document.getElementById('mail_chk').style.display = "none";
    }

    // エラーがある場合はフォーム送信を停止
    if (hasError || formatError) {
      event.preventDefault();
      return false;
    }
  });
};
