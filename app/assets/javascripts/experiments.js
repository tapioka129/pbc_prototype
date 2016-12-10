<script>
$(document).ready(function () {

  // CSSで非表示にした1行目の行を複製し、その行の下に挿入
  $("#p2146-2-tbody > tr").eq(0).clone(true).insertAfter($("#p2146-2-tbody > tr")).eq(0);

  // 行を追加する
  $(document).on("click", ".addList", function () {
    $("#p2146-2-tbody > tr").eq(0).clone(true).insertAfter(
      $(this).parent().parent();
    );
  });

  // 行を削除する
  $(document).on("click", ".removeList", function () {
    $(this).parent().parent().remove();
  });

  // 行を一つ上に移動させる
  $(document).on("click", "#p2146-2-tbody > tr:gt(1) .upList", function () {
    var t = $(this).parent().parent();
    if(t.prev("tr")) {
      t.insertBefore(t.prev("tr")[0]);
    }
  });

  // 行を一つ下に移動させる
  $(document).on("click", ".downList", function () {
    var t = $(this).parent().parent();
    if(t.next("tr")) {
      t.insertAfter(t.next("tr")[0]);
    }
  });

  // 行の一部を変更する
  $(document).on("change", ".changeList", function () {
    $(this).parent().next().html($(this).val());
  });

});
</script>