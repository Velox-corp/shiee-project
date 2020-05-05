
var iconos = Array.prototype.slice.call(document.getElementsByClassName("fa-times"));

iconos.forEach(element => {
    element.addEventListener("click", function () {
        element.parentNode.parentNode.remove();
    })
});