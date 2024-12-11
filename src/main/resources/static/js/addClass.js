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
    const searchText = searchInput.value.toLowerCase(); // 入力値を小文字に変換
    const category = searchCategory.value; // 現在選択されている検索カテゴリ
    const rows = Array.from(classTableBody.querySelectorAll('tr')); // 配列として扱う
    const matchingRows = []; // 一致した行を格納する配列
    const nonMatchingRows = []; // 一致しなかった行を格納する配列

    rows.forEach(row => {
      const cell = row.querySelector(`.${category}-cell`); // カテゴリに対応するセルを取得

      if (searchText === '') {
        row.style.display = '';
        row.classList.remove('highlight');
        return;
      }

      if (cell) {
        const text = cell.textContent.toLowerCase(); // セルのテキストを小文字に変換
        if (text.includes(searchText)) {
          row.style.display = ''; // 一致する行を表示
          row.classList.add('highlight');
          matchingRows.push(row);
        } else {
          row.classList.remove('highlight');
          nonMatchingRows.push(row);
        }
      } else {
        row.classList.remove('highlight');
        nonMatchingRows.push(row);
      }
    });

    // 一致した行を上に並べ替え
    matchingRows.forEach(row => classTableBody.appendChild(row));
    nonMatchingRows.forEach(row => classTableBody.appendChild(row));
  });

  // ソート機能の実装
  const sortButtons = document.querySelectorAll('.sort-button');

  sortButtons.forEach(button => {
    button.addEventListener('click', () => {
      const column = button.getAttribute('data-column'); // ソート対象の列
      const order = button.getAttribute('data-order'); // 昇順/降順を取得
      sortTable(column, order); // ソート関数を呼び出す
    });
  });

  function sortTable(column, order) {
    const rows = Array.from(classTableBody.querySelectorAll('tr'));

    rows.sort((rowA, rowB) => {
      let valueA, valueB;

      if (column === "continuous") {
        const continuousA = rowA.querySelector(`[data-column="${column}"]`).textContent.trim();
        const continuousB = rowB.querySelector(`[data-column="${column}"]`).textContent.trim();

        valueA = continuousA === "1, 2" ? 0 : 1;
        valueB = continuousB === "1, 2" ? 0 : 1;

      } else {
        const cellA = rowA.querySelector(`[data-column="${column}"]`).textContent.trim();
        const cellB = rowB.querySelector(`[data-column="${column}"]`).textContent.trim();
        valueA = isNaN(cellA) ? cellA : parseFloat(cellA);
        valueB = isNaN(cellB) ? cellB : parseFloat(cellB);
      }

      if (order === "asc") {
        return valueA > valueB ? 1 : (valueA < valueB ? -1 : 0);
      } else {
        return valueA < valueB ? 1 : (valueA > valueB ? -1 : 0);
      }
    });

    // ソートされた行を再描画
    classTableBody.innerHTML = '';
    rows.forEach(row => classTableBody.appendChild(row));

    // 最後のソート情報を記録
    lastSortedColumn = column;
    lastSortOrder = order;
  }
});
