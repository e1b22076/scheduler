document.addEventListener("DOMContentLoaded", function () {
  const departmentTranslations = {
    English: "外国語",
    Science: "総合理学系",
    Humanities: "人文社会科学",
    Career: "キャリア科目",
    Sports: "健康・スポーツ科学"
  };

  const attributeTranslations = {
    required: "必修",
    choice: "選択必修",
    normal: "通常",
    CSchoice: "CS選択必修",
    ignore: "卒業単位数に含まない"
  };

  const timingTranslations = {
    A: "前期",
    B: "後期",
    C: "前期前半",
    D: "前期後半",
    E: "後期前半",
    F: "後期後半",
    Z: "期間外"
  };

  // 汎用的な変換関数
  function translateCells(selector, translations) {
    document.querySelectorAll(selector).forEach(cell => {
      const englishText = cell.textContent.trim();
      cell.textContent = translations[englishText] || englishText;
    });
  }

  // 学科名の変換
  translateCells('.department-cell', departmentTranslations);

  // 属性の変換
  translateCells('.attribute-cell', attributeTranslations);

  // 期間の変換
  translateCells('.timing-cell', timingTranslations);

  // 部分検索機能の実装
  const searchInput = document.getElementById('searchInput');
  const searchCategory = document.getElementById('searchCategory');
  const classTableBody = document.getElementById('classTableBody');

  searchInput.addEventListener('input', function () {
    const searchText = searchInput.value.toLowerCase();
    const category = searchCategory.value;
    const rows = Array.from(classTableBody.querySelectorAll('tr'));
    const classMatchingRows = []; // 一致した行を格納する配列
    const classNonMatchingRows = []; // 一致しなかった行を格納する配列

    rows.forEach(row => {
      const cell = row.querySelector(`.${category}-cell`);
      if (searchText === '') {
        // 検索ボックスが空の場合
        row.style.display = '';
        row.classList.remove('highlight'); // ハイライトを解除
      } else if (cell && cell.textContent.toLowerCase().includes(searchText)) {
        row.style.display = '';
        row.classList.add('highlight');
        classMatchingRows.push(row);
      } else {
        row.style.display = '';
        row.classList.remove('highlight');
        classNonMatchingRows.push(row);
      }
    });
    // 一致した行を上に並べ替え
    classMatchingRows.forEach(row => classTableBody.appendChild(row));
    classNonMatchingRows.forEach(row => classTableBody.appendChild(row));
  });

  // 最初のテーブルのソート機能
  const classSortButtons = document.querySelectorAll('.class-sort-button');

  classSortButtons.forEach(button => {
    button.addEventListener('click', () => {
      const column = button.getAttribute('data-column');
      const order = button.getAttribute('data-order');
      sortClassTable(column, order);
    });
  });

  function sortClassTable(column, order) {
    const rows = Array.from(classTableBody.querySelectorAll('tr'));

    rows.sort((rowA, rowB) => {
      let valueA, valueB;

      if (column === "continuous") {
        const continuousA = rowA.querySelector(`[data-column="${column}"]`).textContent.trim();
        const continuousB = rowB.querySelector(`[data-column="${column}"]`).textContent.trim();
        valueA = (continuousA === "1, 2" || continuousA === "3, 4") ? 0 : 1;
        valueB = (continuousB === "1, 2" || continuousB === "3, 4") ? 0 : 1;
      } else {
        const cellA = rowA.querySelector(`[data-column="${column}"]`).textContent.trim();
        const cellB = rowB.querySelector(`[data-column="${column}"]`).textContent.trim();
        valueA = isNaN(cellA) ? cellA : parseFloat(cellA);
        valueB = isNaN(cellB) ? cellB : parseFloat(cellB);
      }

      if (order === "asc") {
        return valueA > valueB ? 1 : valueA < valueB ? -1 : 0;
      } else {
        return valueA < valueB ? 1 : valueA > valueB ? -1 : 0;
      }
    });

    classTableBody.innerHTML = '';
    rows.forEach(row => classTableBody.appendChild(row));
  }

  // 他学科用の検索機能
  const otherSearchInput = document.getElementById('otherSearchInput');
  const otherSearchCategory = document.getElementById('otherSearchCategory');
  const otherClassTableBody = document.getElementById('otherClassTableBody');

  otherSearchInput.addEventListener('input', function () {
    const searchText = otherSearchInput.value.toLowerCase();
    const category = otherSearchCategory.value;
    const rows = Array.from(otherClassTableBody.querySelectorAll('tr'));
    const otherMatchingRows = []; // 一致した行を格納する配列
    const otherNonMatchingRows = []; // 一致しなかった行を格納する配列

    rows.forEach(row => {
      const cell = row.querySelector(`.${category}-cell`);
      if (searchText === '') {
        // 検索ボックスが空の場合
        row.style.display = '';
        row.classList.remove('highlight'); // ハイライトを解除
      } else if (cell && cell.textContent.toLowerCase().includes(searchText)) {
        row.style.display = '';
        row.classList.add('highlight');
        otherMatchingRows.push(row);
      } else {
        row.style.display = '';
        row.classList.remove('highlight');
        otherNonMatchingRows.push(row);
      }
    });
    // 一致した行を上に並べ替え
    otherMatchingRows.forEach(row => otherClassTableBody.appendChild(row));
    otherNonMatchingRows.forEach(row => otherClassTableBody.appendChild(row));
  });

  // 他学科のソート機能
  const otherSortButtons = document.querySelectorAll('.other-sort-button');

  otherSortButtons.forEach(button => {
    button.addEventListener('click', () => {
      const column = button.getAttribute('data-column');
      const order = button.getAttribute('data-order');
      sortOtherClassTable(column, order);
    });
  });

  function sortOtherClassTable(column, order) {
    const rows = Array.from(otherClassTableBody.querySelectorAll('tr'));

    rows.sort((rowA, rowB) => {
      let valueA, valueB;

      if (column === "continuous") {
        const continuousA = rowA.querySelector(`[data-column="${column}"]`).textContent.trim();
        const continuousB = rowB.querySelector(`[data-column="${column}"]`).textContent.trim();
        valueA = (continuousA === "1, 2" || continuousA === "3, 4") ? 0 : 1;
        valueB = (continuousB === "1, 2" || continuousB === "3, 4") ? 0 : 1;
      } else {
        const cellA = rowA.querySelector(`[data-column="${column}"]`).textContent.trim();
        const cellB = rowB.querySelector(`[data-column="${column}"]`).textContent.trim();
        valueA = isNaN(cellA) ? cellA : parseFloat(cellA);
        valueB = isNaN(cellB) ? cellB : parseFloat(cellB);
      }

      if (order === "asc") {
        return valueA > valueB ? 1 : valueA < valueB ? -1 : 0;
      } else {
        return valueA < valueB ? 1 : valueA > valueB ? -1 : 0;
      }
    });

    otherClassTableBody.innerHTML = '';
    rows.forEach(row => otherClassTableBody.appendChild(row));
  }
});
