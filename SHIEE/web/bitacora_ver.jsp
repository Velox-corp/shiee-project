
<%-- 
    Document   : bitacora_ver
    Created on : 6/05/2020, 02:16:53 AM
    Author     : familia
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">

        <title>Bitacora</title>

        <meta name="description" content="Source code generated using layoutit.com">
        <meta name="author" content="LayoutIt!">
        <link href="https://fonts.googleapis.com/css2?family=Caveat:wght@700&family=Cormorant+Infant:wght@300&family=IBM+Plex+Sans+Condensed:wght@600&display=swap" rel="stylesheet">
        <link href="https://fonts.googleapis.com/css2?family=Courgette&family=Darker+Grotesque:wght@600&family=Grand+Hotel&family=Simonetta&display=swap" rel="stylesheet">

        <link href="css/bootstrap.min.css" rel="stylesheet">
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
                    <a class="no " href="">Cerrar sesión</a> | <a class="no" href="Registro.jsp">Registrarse</a></p>
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
                    Bitacora
                </h3>
                <div id="card-230654">
                    <div class="card">
                        <div class="card-header">
                            <a class="card-link collapsed" data-toggle="collapse" data-parent="#card-230654" href="#card-element-866869">Regristro ejemplo</a>
                        </div>
                        <div id="card-element-866869" class="collapse">
                            <div class="card-body">
                                <h5>Notas</h5>
                                <p>Lorem, ipsum dolor sit amet consectetur adipisicing elit. Dignissimos, doloribus. Nam, laboriosam corporis et quo obcaecati nobis, labore iste praesentium esse placeat optio numquam aperiam blanditiis porro similique officia
                                    eum.
                                </p>
                                <img src="img/prueba.jpg" width="320" height="210">
                            </div>
                        </div>
                    </div>
                    <div class="card">
                        <div class="card-header">
                            <a class="card-link collapsed" data-toggle="collapse" data-parent="#card-230654" href="#card-element-873647">Regristro ejemplo</a>
                        </div>
                        <div id="card-element-873647" class="collapse">
                            <div class="card-body">
                                Prueba
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <script src="js/jquery.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/scripts.js"></script>
    </body>
</html>