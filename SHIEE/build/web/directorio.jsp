<%@page import="Clases.Paciente"%>
<%@page import="Clases.Psicologo"%>
<%@page import="java.util.ArrayList"%>
<%@page language="java" session="true" pageEncoding="UTF-8" contentType="text/html"%>
<!DOCTYPE html>
<html>
<head>
	<title>Directorio</title>
	<link rel="icon" href="img/Shiee.png" type="image/png" />
	<meta charset="utf-8">
	<link rel="stylesheet" type="text/css" href="css/estilo.css">
	<link href="https://fonts.googleapis.com/css2?family=Caveat:wght@700&family=Cormorant+Infant:wght@300&family=IBM+Plex+Sans+Condensed:wght@600&display=swap" rel="stylesheet"><link href="https://fonts.googleapis.com/css2?family=Courgette&family=Darker+Grotesque:wght@600&family=Grand+Hotel&family=Simonetta&display=swap" rel="stylesheet">
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
                    <%  }else{ System.out.println(sesionOk.getAttribute("usuario"));%>
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
	<article id="izquierda_2">
		<div class="container">
		    <figure class="snip0015">
			<h1 class="titulo">APPS</h1>
			<img src="img/app.jpg" alt="sample38"/>
			    <figcaption>
				<h2><a href="https://psicologiaymente.com/psicologia/apps-para-relajarse" target="blank" class="info link titulo">Apps Recomendadas</a></h2>
			    </figcaption>			
		    </figure>
		</div>
	    </article>	
	    <section>
		<center>
                    <article>
				<h1>Psicologos y terapeutas</h1><%
                                Psicologo quieroPsicologos = new Psicologo();
                                 ArrayList<Psicologo> psicologosRegistrados = quieroPsicologos.obtenerTodosPsicologos();
                                 for(Psicologo psi: psicologosRegistrados){%>
                                 <div class="psicologo">
                                     <%=psi.getAppat_psi()%> <%=psi.getApmat_psi()%> <%=psi.getNombre_psi()%>
                                     <p><% if(Paciente.esPaciente(sesionOk.getAttribute("usuario"))){ %>
                                        <a href="asignarPsi?id=<%=psi.getId_psi()%>">Hacer mi psicologo</a>
                                        <%}%>
                                    </p>
                                 </div>
                                <%}%>
                    </article>
		</center>
	   </section>
</body>
</html>
