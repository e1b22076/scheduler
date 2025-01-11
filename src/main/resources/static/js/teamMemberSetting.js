document.addEventListener("DOMContentLoaded", function () {
  function confirmDelete(element) {
    const modal = document.getElementById('confirmModal');
    const teamId = element.getAttribute('data-team-id');
    const userToDelete = element.getAttribute('data-delete-id');

    document.getElementById('userToDelete').textContent = userToDelete;
    document.querySelector('input[name="memberId"]').value = userToDelete;    document.getElementById('deleteForm').action = '/team/member/' + teamId;

    modal.classList.remove('hidden');
    modal.style.display = 'block';
  }
  // モーダルを閉じる
  function closeModal() {
    document.getElementById('confirmModal').style.display = 'none';
  }

  // 関数をグローバルスコープに登録
  window.confirmDelete = confirmDelete;
  window.closeModal = closeModal;
});
