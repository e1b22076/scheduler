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
});
