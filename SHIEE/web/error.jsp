<%-- 
    Document   : error
    Created on : 8/05/2020, 09:14:11 PM
    Author     : maste
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" session="true" language="java"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="css/estilo.css">
	<link href="https://fonts.googleapis.com/css2?family=Caveat:wght@700&family=Cormorant+Infant:wght@300&family=IBM+Plex+Sans+Condensed:wght@600&display=swap" rel="stylesheet"><link href="https://fonts.googleapis.com/css2?family=Courgette&family=Darker+Grotesque:wght@600&family=Grand+Hotel&family=Simonetta&display=swap" rel="stylesheet">
        
        <title>--ERROR--</title>
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
                        <a class="no " href="cerrarSesion">Cerrar sesión</a> | <a class="no" href="Registro.jsp">Registrarse</a></p>
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
        <br>
        <h1>Ha ocurrido un error, un saludo</h1>
    </body>
</html>
