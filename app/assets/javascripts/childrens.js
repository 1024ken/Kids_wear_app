// window.onload=function(){


var first = document.getElementsByClassName("color_question")
var second = document.getElementsByClassName("style_question")
var third = document.getElementsByClassName("third")
var fourth = document.getElementsByClassName("fourth")
var fifth = document.getElementsByClassName("fifth")
var sixth = document.getElementsByClassName("sixth")


// 次へボタン
// 次へボタンをクリックしたとき、、自身にhiddenクラスが当てられていたら、hidden_addで、次のdivをhidden_removeする
function next_first() {
    first[0].classList.add("hidden");
    second[0].classList.remove("hidden");
}
function next_second() {
    second[0].classList.add("hidden");
    third[0].classList.remove("hidden");
}
function next_third() {
    third[0].classList.add("hidden");
    fourth[0].classList.remove("hidden");
}
function next_fourth() {
    fourth[0].classList.add("hidden");
    fifth[0].classList.remove("hidden");
}
function next_fifth() {
    fifth[0].classList.add("hidden");
    sixth[0].classList.remove("hidden");
}




// 戻るボタン
function back_first() {
    first[0].classList.remove("hidden");
    second[0].classList.add("hidden");
}
function back_second() {
    second[0].classList.remove("hidden");
    third[0].classList.add("hidden");
}
function back_third() {
    third[0].classList.remove("hidden");
    fourth[0].classList.add("hidden");
}
function back_fourth() {
    fourth[0].classList.remove("hidden");
    fifth[0].classList.add("hidden");
}
function back_fifth() {
    fifth[0].classList.remove("hidden");
    sixth[0].classList.add("hidden");
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
//     first[0].classList.add("hidden");
//     second[0].classList.remove("hidden");
// }


