var shoePhoto = document.getElementById('moonboots');

function hideShoe() {
  shoePhoto.hidden = true;
}

// shoePhoto.addEventListener("click", hideShoe);


var x = document.querySelectorAll("a[target]");
var i;
for (i = 0; i < x.length; i++) {
    x[i].style.fontFamily = "Impact";
}
