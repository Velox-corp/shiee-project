<%@page language="java" session="true" import="java.sql.*" pageEncoding="UTF-8" contentType="text/html"%>
<!DOCTYPE html>
<html>
<head>
	<title>Nosotros</title>
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
					<%  }else{%>
					<a class="no " href="cerrarSsesion">Cerrar sesión</a> | <a class="no" href="Registro.jsp">Registrarse</a></p>
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
	<div>
		<section class="mi">
			<h1>Mision</h1>
			<p>
				El vídeo proporciona una manera eficaz para ayudarle a demostrar el punto. Cuando haga clic en Vídeo en línea, puede pegar el código para insertar del vídeo que desea agregar. También puede escribir una palabra clave para buscar en línea el vídeo que mejor se adapte a su documento.
			Para otorgar a su documento un aspecto profesional, Word proporciona encabezados, pies de página, páginas de portada y diseños de cuadro de texto que se complementan entre sí. Por ejemplo, puede agregar una portada coincidente, el encabezado y la barra lateral. Haga clic en Insertar y elija los elementos que desee de las distintas galerías.
			</p>
		</section>
		<section class="vi">
			<h1 class="vision">Vision</h1>
			<br>
			<p>
				El vídeo proporciona una manera eficaz para ayudarle a demostrar el punto. Cuando haga clic en Vídeo en línea, puede pegar el código para insertar del vídeo que desea agregar. También puede escribir una palabra clave para buscar en línea el vídeo que mejor se adapte a su documento.
			Para otorgar a su documento un aspecto profesional, Word proporciona encabezados, pies de página, páginas de portada y diseños de cuadro de texto que se complementan entre sí. Por ejemplo, puede agregar una portada coincidente, el encabezado y la barra lateral. Haga clic en Insertar y elija los elementos que desee de las distintas galerías.
			</p>
		</section>
		<section class="con">
			<center>
				<article class="col">
					<img src="img/Shiee.png" width="70" height="70">
					<p>Cortes Gamboa Alicia</p>
					<a href=""><img src="img/mas.png"></a>
				</article>
				<article class="col">
					<img src="img/Shiee.png" width="70" height="70">
					<p>Jarillo Hernández Armando Damián</p>
					<a href=""><img src="img/mas.png"></a>
				</article>
				<article class="col">
					<img src="img/Shiee.png" width="70" height="70">
					<p>García Lucero Uzias</p>
					<a href=""><img src="img/mas.png"></a>
				</article>
				<article class="col">
					<img src="img/Shiee.png" width="70" height="70">
					<p>Quintana Romero Roberto</p>
					<a href=""><img src="img/mas.png"></a>
				</article>
				<article class="col">
					<img src="img/Shiee.png" width="70" height="70">
					<p>Sánchez Gonzáles Daniel Ivan</p>
					<a href=""><img src="img/mas.png"></a>
				</article>
				<article class="col">
					<img src="img/Shiee.png" width="70" height="70">
					<p>Tenorio Aspiros Luis Fernando</p>
					<a href=""><img src="img/mas.png"></a>
				</article>
			</center>
		</section>
	</div>
</body>
</html>
