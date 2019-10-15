$(function(){
  $('#app').hover(
    function() { //カーソルが「Plolikes」に乗った時に
      $('.message').fadeIn(1000); //メッセージが1秒でフェードインする
    },
    function() { //カーソルが「Plolikes」から離れた時に
      $('.message').fadeOut(); //一瞬でフェードアウトする
    }
  );
  $(".modal-btn").click(function() {
    $(".modal-screen").fadeIn(800);
  });
  $(".close-btn").click(function() {
    $(".modal-screen").fadeOut(400);
  });
});