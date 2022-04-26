var className = "navbar-inverted";
var scrollTrigger = 100;

window.onscroll = function () {
  // We add pageYOffset for compatibility with IE.
  if (window.scrollY >= scrollTrigger || window.pageYOffset >= scrollTrigger) {
    document.getElementsByClassName("navbar")[0].classList.add(className);
  } else {
    document.getElementsByClassName("navbar")[0].classList.remove(className);
  }
};
