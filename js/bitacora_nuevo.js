
$("#btn-mas-img").addEventListener("click", function () {
   var input = document.createElement("input");
   input.setAttribute("type", "file");
   input.setAttribute("required", "true");
   input.setAttribute("accept", "images/*");
   input.setAttribute("class", "form-control-file");
   input.setAttribute("name", "image");
   var f = document.getElementById("imagenes-bitacora");
   f.appendChild(input);
});

function $(selector){
    return document.querySelector(selector);
}