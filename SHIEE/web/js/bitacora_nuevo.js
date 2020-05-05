
$("#btn-mas-img").addEventListener("click", function () {
    if (document.getElementsByName("image").length <= 10) {
        var input = document.createElement("input");
        input.setAttribute("type", "file");
        input.setAttribute("required", "true");
        input.setAttribute("accept", "images/*");
        input.setAttribute("class", "form-control-file");
        input.setAttribute("name", "image");
        var f = document.getElementById("imagenes-bitacora");
        f.appendChild(input);
    }else{
        alert("No se puden enviar mas de diez imagenes por entrada")
    }
});

function $(selector){
    return document.querySelector(selector);
}