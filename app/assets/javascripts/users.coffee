# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
<button id = "button1" onclick="effect()">ボタンを赤にする</button>
<script type="text/javascript">

function effect(){
var button1 = document.getElementById("button1")
button1.style.backgroundColor = "red";
}

</script>