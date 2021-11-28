// When the user scrolls down 50px from the top of the document, resize the header's font size
window.onscroll = function() {scrollFunction()};

function scrollFunction() {
  if (document.body.scrollTop > 50 || document.documentElement.scrollTop > 50) {
    document.getElementById("header").style.fontSize = "14px";
    document.getElementById("header").style.height = "50px";

  } else {
    document.getElementById("header").style.fontSize = "18px";
    document.getElementById("header").style.height = "100px";

  }
} 