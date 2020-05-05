
<%@page language="java" session="true" import="java.sql.*" pageEncoding="UTF-8" contentType="text/html"%>
<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <title>Inicio de Sesión</title>
    <link rel="stylesheet" type="text/css" href="css/estilo.css">
    <link rel="stylesheet" type="text/css" href="css/estilosRegistro.css">
    <link href="https://fonts.googleapis.com/css2?family=Caveat:wght@700&family=Cormorant+Infant:wght@300&family=IBM+Plex+Sans+Condensed:wght@600&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Courgette&family=Darker+Grotesque:wght@600&family=Grand+Hotel&family=Simonetta&display=swap" rel="stylesheet">
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
                    <a class="no " href="InicioSesion.jsp">Cerrar sesión</a> | <a class="no" href="Registro.jsp">Registrarse</a></p>
                    <%}%>
                </div>
            </div>
            <ul>
                <!--Dependiendo de la dimension de la imagen va a cambiar la propiedad padding-top que estÃ¡ en body dentro de estilo.css  y tambien el height del nav en el css -->

                <li><a class="si" href="index.html">Inicio</a></li>
                <li><a class="si" href="">Información</a></li>
                <li><a class="si" href=""> Servicios </a>
                    <ul id="submenu">
                        <li><a class="si" href="BitácoraInicio.html">Bitácora</a></li>
                        <li><a class="si" href="test.html">Test</a></li>
                    </ul>
                </li>
                <li><a class="si" href="directorio.html"> Directorio </a></li>
                <li><a class="si" href="nosotros.html"> Nosotros</a></li>
                <li><a class="si" href="paginaAdmin.html">Sesión</a></li>
            </ul>
        </nav>
    </header>
    <script type="text/javascript" src="js/validacionInicioSes.js"></script>
    <div class="registro">
        <div class="titulo">
            <h1>INICIO DE SESIÓN<img src="img/user.png" id="imagen"></h1>
        </div>
        <form name="iniciarSes" method="post" action="SInicioSesion">
            <table border="0">
                <tr>
                    <td>Usuario:</td>
                    <td><input name="usuario" type="text" onchange="validarUser(this)"></td>
                </tr>
                <tr>
                    <td>Contraseña:</td>
                    <td><input type="password" name="password" onchange="validarPass(this)"></td>
                </tr>
                <tr>
                    <td><input type="submit" value="Iniciar Sesion" ></td>
                    <td><input type="button" value="Registrarse" onclick="window.location.href='Registro.jsp'"></td>
                </tr>
            </table>
        </form>

    </div>
</body>

</html>