document.addEventListener('DOMContentLoaded', function () {
  const hamburger = document.getElementById('hamburger');
  const dropdownMenu = document.getElementById('dropdown-menu');

  // ハンバーガーアイコンにホバーしたとき
  hamburger.addEventListener('mouseenter', function () {
    dropdownMenu.style.display = 'flex'; // メニューを表示
  });

  // メニュー全体にホバーしたとき（閉じないようにする）
  dropdownMenu.addEventListener('mouseenter', function () {
    dropdownMenu.style.display = 'flex'; // メニューを維持
  });

  // ハンバーガーアイコンまたはメニューからカーソルが離れたとき
  hamburger.addEventListener('mouseleave', function () {
    setTimeout(function () {
      if (!dropdownMenu.matches(':hover')) {
        dropdownMenu.style.display = 'none'; // メニューを非表示
      }
    }, 200); // 短い遅延で誤作動防止
  });

  dropdownMenu.addEventListener('mouseleave', function () {
    dropdownMenu.style.display = 'none'; // メニューを非表示
  });

  // ウィンドウリサイズ時にドロップダウンメニューを閉じる
  window.addEventListener('resize', function () {
    if (window.innerWidth > 768) {
      dropdownMenu.style.display = 'none'; // 幅が広がったらメニューを閉じる
    }
  });
});
