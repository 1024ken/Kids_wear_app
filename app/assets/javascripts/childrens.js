// window.onload=function(){

var back = document.getElementsByClassName("top_question")

var color = document.getElementsByClassName("color_question")
var style = document.getElementsByClassName("style_question")
var parttern = document.getElementsByClassName("parttern_question")
var dislike = document.getElementsByClassName("dislike_question")
var comment = document.getElementsByClassName("comment_question")
var confirm = document.getElementsByClassName("confirm_question")




// 次へボタン
// 次へボタンをクリックしたとき、、自身にhiddenクラスが当てられていたら、hidden_addで、次のdivをhidden_removeする
function next_btn_style() {
    color[0].classList.add("hidden");
    style[0].classList.remove("hidden");
    back[1].classList.add("hidden");
    
}
function next_btn_parttern() {
    style[0].classList.add("hidden");
    parttern[0].classList.remove("hidden");
}
function next_btn_dislike() {
    parttern[0].classList.add("hidden");
    dislike[0].classList.remove("hidden");
}
function next_btn_comment() {
    dislike[0].classList.add("hidden");
    comment[0].classList.remove("hidden");
}
function next_btn_confirm() {
    comment[0].classList.add("hidden");
    confirm[0].classList.remove("hidden");
}



// 戻るボタン
function back_btn_color() {
    color[0].classList.remove("hidden");
    style[0].classList.add("hidden");
    back[1].classList.remove("hidden");
}
function back_btn_style() {
    style[0].classList.remove("hidden");
    parttern[0].classList.add("hidden");
}
function back_btn_parttern() {
    parttern[0].classList.remove("hidden");
    dislike[0].classList.add("hidden");
}
function back_btn_dislike() {
    dislike[0].classList.remove("hidden");
    comment[0].classList.add("hidden");
}
function back_btn_comment() {
    comment[0].classList.remove("hidden");
    confirm[0].classList.add("hidden");
}




// クリックすると画像にボーダー
function image_border(color_id) {
    // imageIDをcolor_idで動的に変化
    var dynamic_id = "image" + color_id
    var newColor = document.getElementById(dynamic_id)
    
    newColor.classList.toggle("cheaked")
    
    // ドロップダウン内の選択肢の選択したインデックス番号を設定
    var selectbox = document.getElementById("color_selectbox")
    selectbox.selectedIndex = color_id -1
}



// クリックすると画像にボーダー
$(function() {
  // チェックボックスのクリックを無効化します。
  $('.check_box').click(function() {
    return false;
  });

  // 画像がクリックされた時の処理です。
   $('.image').on('click', function() {
       $checkbox = $(this).parent().find(".check_box")
    if (!$(this).is('.checked')) {
      // チェックが入っていない画像をクリックした場合、チェックを入れます。
      $(this).addClass('checked');
        $checkbox.attr('checked', true).prop('checked', true).change();
    } else {
      // チェックが入っている画像をクリックした場合、チェックを外します。
      $(this).removeClass('checked')
        $checkbox.removeAttr('checked').prop('checked', false).change();
    }
  });
});

$(function(){
  $('#datetimepicker').datetimepicker({
    format: 'YYYY/MM/DD',
    locale: 'ja',
  });
}); 
  











//　★テスト　クリックしたら、color_idを配列に入れる。再度押下時、配列削除
    // var sample = color_id
    // test.push(sample)
    // var result = test.filter( function(value, index, self) { 
    //     return self.indexOf(value) ===index;
    //     document.getElementById("test").value = test
    // });
    // debugger




// onclickの別の書き方。id値を設定し、要素を取得し、functionに処理を記載する
// var i = document.getElementById("test")
// i.onclick = function(){
//     color[0].classList.add("hidden");
//     style[0].classList.remove("hidden");
// }


