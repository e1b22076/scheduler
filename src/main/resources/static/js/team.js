document.addEventListener('DOMContentLoaded', () => {
  const mainButton = document.getElementById('mainButton');
  const options = document.getElementById('options');

  // メインボタンのクリックイベント
  mainButton.addEventListener('click', () => {
    options.classList.toggle('hidden');
  });
});
