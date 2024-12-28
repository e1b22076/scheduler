document.addEventListener('DOMContentLoaded', () => {
  const mainButton = document.getElementById('mainButton');
  const options = document.getElementById('options');

  mainButton.addEventListener('click', () => {
    options.classList.toggle('hidden');
  });
});
