// window.onload=function(){


var first = document.getElementsByClassName("first")
var second = document.getElementsByClassName("second")
var third = document.getElementsByClassName("third")
var fourth = document.getElementsByClassName("fourth")
var fifth = document.getElementsByClassName("fifth")
var sixth = document.getElementsByClassName("sixth")

console.log('test')
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


var test = []

// クリックすると画像にボーダー
function image_border(color_id) {
    // imageIDをcolor_idで動的に変化
    var dynamic_id = "image" + color_id
    var newColor = document.getElementById(dynamic_id)
    
    newColor.classList.toggle("cheaked")
    
    // ドロップダウン内の選択肢の選択したインデックス番号を設定
    var selectbox = document.getElementById("color_selectbox")
    selectbox.selectedIndex = color_id -1



　　//　★テスト　クリックしたら、color_idを配列に入れる。再度押下時、配列削除
    // var sample = color_id
    // test.push(sample)
    // var result = test.filter( function(value, index, self) { 
    //     return self.indexOf(value) ===index;
    //     document.getElementById("test").value = test
    // });
    // debugger

    
    
    
    
    
    
    // 芝田さんtest
    // var sample = color_id
    // test.push(sample)
    // console.log(test)
    // document.getElementById("test").value = test
    // return false;
    
}






// onclickの別の書き方。id値を設定し、要素を取得し、functionに処理を記載する
// var i = document.getElementById("test")
// i.onclick = function(){
//     first[0].classList.add("hidden");
//     second[0].classList.remove("hidden");
// }
