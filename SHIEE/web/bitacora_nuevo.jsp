<%@page import="java.util.ArrayList"%>
<%@page language="java" session="true" import="java.sql.*" pageEncoding="UTF-8" contentType="text/html"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <title>Bitacora</title>

    <meta name="description" content="Source code generated using layoutit.com">
    <meta name="author" content="LayoutIt!">
    
    <link rel="shortcut icon" type="image/x-icon" href="img/favicon.ico" />
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Caveat:wght@700&family=Cormorant+Infant:wght@300&family=IBM+Plex+Sans+Condensed:wght@600&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Courgette&family=Darker+Grotesque:wght@600&family=Grand+Hotel&family=Simonetta&display=swap" rel="stylesheet">
    <link rel="stylesheet" type="text/css" href="css/estilo.css">
</head>

<body>
    <header>
        <nav class="menu">
            <div class="imagen_inicio">
                <img src="img/Shiee.png" width="90" height="90">
                <div class="esto_no">
                    <%
                        HttpSession sesionOk = request.getSession();
                        if(sesionOk.getAttribute("usuario")==null){
                    %>
                    <p><a class="no " href="InicioSesion.jsp">Inicio de sesión</a> | <a class="no" href="Registro.jsp">Registrarse</a></p>
                    <%  }else{%>
                    <p><a class="no " href="">Cerrar sesión</a> | <a class="no" href="Registro.jsp">Registrarse</a></p>
                    <%}%>
                </div>
            </div>
            <ul>
                <!--Dependiendo de la dimension de la imagen va a cambiar la propiedad padding-top que estÃ¡ en body dentro de estilo.css  y tambien el height del nav en el css -->

                <li><a class="si" href="index.jsp">Inicio</a></li>
                <li><a class="si" href="">Información</a></li>
                <li><a class="si" href=""> Servicios </a>
                    <ul id="submenu">
                        <li><a class="si" href="BitácoraInicio.jsp">Bitácora</a></li>
                        <li><a class="si" href="test.jsp">Test</a></li>
                    </ul>
                </li>
                <li><a class="si" href="directorio.jsp"> Directorio </a></li>
                <li><a class="si" href="nosotros.jsp"> Nosotros</a></li>
                <li><a class="si" href="paginaAdmin.jsp">Sesión</a></li>
            </ul>
        </nav>
    </header>


    <div class="container-fluid">
        <div class="row">
            <div class="col-md-4">
                <a href="bitacora_ver.html" class="btn btn-block btn-lg btn-outline-primary">Ver regristros</a>
                <a href="bitacora_editar.html" class="btn btn-block btn-outline-primary btn-lg">Editar regristro</a>
                <a href="bitacora_nuevo.html" class="btn btn-block btn-lg btn-outline-primary">Nuevo regristro</a>
                <a href="bitacora_eliminar.html" class="btn btn-block btn-lg btn-outline-primary">Eliminar regristros</a>
            </div>
            <div class="col-md-8">
                <h3>
                    Escriba su bitacora o mande sus fotografias
                </h3>
                <form id="form" role="form" method="post" action="GuardarRegristro" enctype="multipart/form-data">
                    <div class="form-group">
                        <div id=imagenes-bitacora>
                            <input accept="images/*" required="true" type="file" class="form-control-file" name="image">
                        </div>
                        <p class="help-block">
                            Elija su fotografía
                        </p>
                        <label for="text-area">
                            Texto
                        </label>
                        <textarea id="text-area" name="textarea" class="form-control"></textarea>
                    </div>
                    <button id="boton-n-bitacora" type="button" class="btn btn-success btn-lg">
                        Guardar
                    </button>
                    <button type="button" class="btn btn-lg btn-success">
                        Cancelar
                    </button>
                </form>
                
                <script language="javascript">
                    var sub_mit = document.getElementById("boton-n-bitacora");
                    var form = document.getElementById("form");
                    var imagenes = document.getElementsByName("image")[0];
                    var texto = document.getElementById("text-area").value;
                    var files = imagenes.files[0];

                    
                    sub_mit.addEventListener("click", function(){
                        form.requestSubmit();
                        
                    });
                    
                </script>
            </div>
        </div>
    </div>
    
    <script src="js/jquery.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/scripts.js"></script>
</body>

</html>