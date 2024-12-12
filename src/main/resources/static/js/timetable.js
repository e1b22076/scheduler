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

  const checkbox = document.getElementById('toggleSaturdayModal');
  const hiddenInput = document.getElementById('toggleSaturdayHidden');

  // 初期状態でhiddenの値を設定
  hiddenInput.value = checkbox.checked ? '1' : '-1';

  // チェックボックスの状態変更時にhiddenの値を上書き
  checkbox.addEventListener('change', function () {
    hiddenInput.value = checkbox.checked ? '1' : '-1';
  });

  // 土曜日列全体を非表示にする
  const titleContainer = document.querySelector(".title-container");
  const showSaturday = titleContainer.getAttribute("data-show-saturday") === "true";

  const saturdayColumns = document.querySelectorAll(".saturday-column");
  const table = document.getElementById("scheduleTable");

  if (!showSaturday) {
    saturdayColumns.forEach(column => {
      column.style.display = "none";
    });
    const rows = table.querySelectorAll("tr");
    rows.forEach(row => {
      const saturdayCell = row.querySelector("td:last-child, th:last-child");
      if (saturdayCell) {
        saturdayCell.style.display = "none";
      }
    });
  } else {
    saturdayColumns.forEach(column => {
      column.style.display = "table-cell";
    });
    const rows = table.querySelectorAll("tr");
    rows.forEach(row => {
      const saturdayCell = row.querySelector("td:last-child, th:last-child");
      if (saturdayCell) {
        saturdayCell.style.display = "table-cell";
      }
    });
  }

  // 今日の曜日を取得
  const today = new Date().getDay();
  const todayColumnIndex = (today === 0) ? 6 : today - 1;

  // 強調クラスを追加
  const columnCells = table.querySelectorAll(`td:nth-child(${todayColumnIndex + 2})`); // ヘッダーは除外するため +2
  columnCells.forEach(cell => {
    // 奇数行・偶数行に応じて色を付ける
    if (cell.parentElement.rowIndex % 2 === 0) {
      cell.classList.add("highlight-even"); // 偶数行
    } else {
      cell.classList.add("highlight-odd"); // 奇数行
    }
  });

  // 授業セルと空きコマセルのクリック処理を一括登録
  document.querySelectorAll(".schedule-cell").forEach(cell => {
    cell.addEventListener("click", () => {
      const className = cell.textContent.trim(); // セルの内容を取得

      // 空きコマの場合
      if (!className) {
        openModal("addClassModal", cell);
      } else {
        openModal("infoModal", cell);
      }
    });
  });

  // メニュー内の「授業をコマから外す」クリック時
  document.querySelector('.menu-dropdown div:nth-child(3)').addEventListener('click', function () {
    openModal('removeModal', this);
  });

  // 授業名のセルクリック時の処理
  document.querySelectorAll('.class-cell').forEach(cell => {
    cell.addEventListener('click', function () {
      openModal('infoModal', this);
    });
  });

  // ウィンドウクリック時の処理
  window.onclick = function (event) {
    const menuDropdown = document.getElementById("menu-dropdown");
    if (!event.target.matches('.menu-icon')) {
      menuDropdown.style.display = "none";
    }
  };
});

// 設定モーダルを表示
function toggleSettingsModal() {
  document.getElementById("settingsModal").style.display = "flex";
}

// 設定モーダルを閉じる
function closeSettingsModal() {
  document.getElementById("settingsModal").style.display = "none";
}

// 変更を保存
function submitChanges() {
  const form = document.getElementById("settingsForm");
  form.submit();
}

function openSyllabus() {
  const syllabusUrl = document.getElementById("infoModal").getAttribute("data-syllabus-url");

  if (syllabusUrl) {
    window.open(syllabusUrl, '_blank');
  }
}

// モーダルを開く関数
function openModal(modalId, tdElement) {
  const modal = document.getElementById(modalId);

  if (tdElement) {
    const day = tdElement.getAttribute('data-day');
    const period = tdElement.getAttribute('data-period');
    const className = tdElement.getAttribute('data-classname');
    const syllabusUrl = tdElement.getAttribute('data-syllabus');

    // 空きコマの場合
    if (modalId === "addClassModal") {
      // 'addClassModal'用のデータ設定
      document.getElementById("addClassModal-title").innerText = `${day} ${period}: 空きコマ`;
      modal.setAttribute('data-day', day); // モーダルにデータ属性として保持
      modal.setAttribute('data-period', period); // モーダルにデータ属性として保持
    }

    // 'infoModal'を開くとき
    if (modalId === "infoModal") {
      document.getElementById("infoModal-title").innerText = `${day} ${period}: ${className}`;
      document.getElementById("modal-assignment").innerText = "特定の課題がありません";
      document.getElementById("modal-test-schedule").innerText = "テスト日程は未定です";
      document.getElementById("infoModal").setAttribute("data-syllabus-url", syllabusUrl);

      // メニューの「授業をコマから外す」に授業情報を設定
      const removeButton = document.querySelector('.menu-dropdown div:nth-child(3)');
      removeButton.setAttribute('data-day', day);
      removeButton.setAttribute('data-period', period);
      removeButton.setAttribute('data-className', className);
    }

    // 'removeModal'を開くとき
    else if (modalId === "removeModal") {
      document.getElementById("removeDay").value = day;
      document.getElementById("removePeriod").value = period;
      document.getElementById("removeValue").value = className;

      // 授業情報を表示
      document.getElementById("removeClassInfo").innerText = `${day} ${period}: ${className}`;
    }
  }

  modal.style.display = "flex"; // モーダルを表示
}

// 授業を登録するページに遷移
function redirectToAddClass() {
  const modal = document.getElementById("addClassModal");
  const day = modal.getAttribute('data-day'); // モーダルに設定されたデータを取得
  const period = modal.getAttribute('data-period');

  // URLクエリパラメータにデータを追加
  window.location.href = `/timetable/addClass?day=${encodeURIComponent(day)}&period=${encodeURIComponent(period)}`;
}

// モーダルを閉じる関数
function closeModal(modalId) {
  const modal = document.getElementById(modalId);
  modal.style.display = "none";
}

// メニュー表示/非表示の切り替え
function toggleMenu() {
  const menuDropdown = document.getElementById("menu-dropdown");
  menuDropdown.style.display = menuDropdown.style.display === "block" ? "none" : "block";
}
