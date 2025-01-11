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
  
  const mainButton = document.getElementById('mainButton');
  const options = document.getElementById('options');

  // メインボタンのクリックイベント
  mainButton.addEventListener('click', (event) => {
    event.stopPropagation(); // クリックイベントが親要素に伝播しないようにする
    options.classList.toggle('hidden');
  });

  // ボタン以外をクリックした場合のイベント
  document.addEventListener('click', (event) => {
    if (!options.classList.contains('hidden') && !options.contains(event.target)) {
      options.classList.add('hidden');
    }
  });
});
