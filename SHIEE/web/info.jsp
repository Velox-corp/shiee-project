<%@page language="java" session="true" import="java.sql.*" pageEncoding="UTF-8" contentType="text/html"%>
<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <title>SHIEE</title>
    <link rel="stylesheet" type="text/css" href="css/estilo.css">
    <link rel="stylesheet" type="text/css" href="css/inf.css">
    <link rel="icon" href="img/Shiee.png" type="image/png" />
    <link href="https://fonts.googleapis.com/css2?family=Caveat:wght@700&family=Cormorant+Infant:wght@300&family=IBM+Plex+Sans+Condensed:wght@600&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Courgette&family=Darker+Grotesque:wght@600&family=Grand+Hotel&family=Simonetta&display=swap" rel="stylesheet">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
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
                    <li><a class="si" href="info.jsp">Información</a></li>
                    <li><a class="si" href=""> Servicios </a>
                        <ul id="submenu">
                            <li><a class="si" href="VerificarSesion">Bitácora</a></li>
                            <li><a class="si" href="test.jsp">Test</a></li>
                        </ul>
                    </li>
                    <li><a class="si" href="directorio.jsp"> Directorio </a></li>
                    <li><a class="si" href="nosotros.jsp"> Nosotros</a></li>
                    <li><a class="si" href="sesion.jsp">Sesión</a></li>
                </ul>
            </nav>
        </header>
    <section class="human">
        
    </section>
</body>

</html>