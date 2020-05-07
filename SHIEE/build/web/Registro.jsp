<%@page language="java" pageEncoding="UTF-8" contentType="text/html"%>

<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<title>Registro</title>
	<link rel="stylesheet" type="text/css" href="css/estilo.css">
	<link rel="stylesheet" type="text/css" href="css/estilosRegistro.css">
	<link href="https://fonts.googleapis.com/css2?family=Caveat:wght@700&family=Cormorant+Infant:wght@300&family=IBM+Plex+Sans+Condensed:wght@600&display=swap" rel="stylesheet"><link href="https://fonts.googleapis.com/css2?family=Courgette&family=Darker+Grotesque:wght@600&family=Grand+Hotel&family=Simonetta&display=swap" rel="stylesheet">
</head>
<body>
	<header>
		<nav class="menu">
			<div class="imagen_inicio">
				<img src="img/Shiee.png" width="90" height="90">
				<div class="esto_no">
					<p><a class="no "href="InicioSesion.jsp">Inicio de sesión</a> | <a class="no" href="Registro.jsp">Registrarse</a></p>
				</div>
			</div>
			<ul>
				<!--Dependiendo de la dimension de la imagen va a cambiar la propiedad padding-top que estÃ¡ en body dentro de estilo.css  y tambien el height del nav en el css -->
				
				<li><a class="si" href="index.html">Inicio</a></li>
				<li><a class="si" href="">Información</a></li>
				<li><a class="si" href=""> Servicios </a>
					<ul id="submenu">
						<li><a class="si" href="BitÃ¡coraInicio.html">Bitacora</a></li>
						<li><a class="si" href="test.html">Test</a></li>
					</ul>
				</li>
				<li><a class="si" href="directorio.html"> Directorio </a></li>
				<li><a class="si" href="nosotros.html"> Nosotros</a></li>
				<li><a class="si" href="paginaAdmin.html">Sesión</a></li>
			</ul>
		</nav>
	</header>
	<script type="text/javascript" src="js/ValidacionRegistro.js"></script>
	<div class="registro">
		<!--Titulo-->
		<div class="titulo"><h1>REGISTRO DE USUARIOS<img src="img/user.png" id="imagen"></h1></div>
		<!--Formulario-->
		<form name="registroUsuarios" method="post" id='formulario' action="registrar">
			<table border="0">
				<!--Cada tr, va a ser un ingreso-->
				<tr>
					<td>Nombre:</td>
					<td><input type="text" name="nombre" onchange="estaVacio(this)"></td>
				</tr>

				<tr>
					<td>Apellido Paterno:</td>
					<td><input type="text" name="appat" onchange="estaVacio(this)"></td>
				</tr>

				<tr>
					<td>Apellido Materno:</td>
					<td><input type="text" name="apmat" onchange="estaVacio(this)"></td>
				</tr>

				<tr>
					<td >Fecha de Nacimiento:</td>
					<td><input type="date" name="fechaNac" onchange="validarFecha(this)"></td>
				</tr>
				<tr>
					<td>Usuario:</td>
					<td><input type="text" name="nombreUsuario" onchange="validarUser(this)"></td>
				</tr>

				<tr>
					<td colspan="2" id="nota">El nombre de Usuario debe tener un maximo de 15 caracteres</td>
				</tr>
				<tr>
					<td>Contraseña:</td>
					<td><input type="password" name="password" onchange="validarCont(this)"></td>
				</tr
				<tr><td colspan="2" id="nota">La contraseña solo acepta letras y números, de 8 a 15 caracteres</td></tr>

				<tr>
					<td>Verificar Contraseña:</td>
					<td><input type="password" name="password_verificar" onchange="validarContVeri(this)"></td>
				</tr>
                                <!--
				<tr>
					<td>Correo Electrónico:</td>
					<td><input type="email" name="correo" onchange="validarCorreo(this)"></td>
				</tr>
                                -->
				<!--Aqui va a ir el combobox y su formulario extra-->
				<tr>
					<td>Tipo de Usuario</td>
					<td>
						<select name="tipoUser" class="tipoUser" onchange="verTipoUser()">			  
							<option value="Sin_especificar">Ingrese su tipo de usuario</option>
							<option value="Estudiante">Estudiante</option>
							<option value="Psicologo">Psicologo</option>
						</select>
					</td>
				</tr>
				<tr>
					<td id="cedula_ocult_td">Cédula Profesional:</td>
					<td><input type="text" name="cedula" id="cedula_ocult_input" onchange="validarCedula(this)"></td>
				</tr>
				<tr>
					<td><input id="boton" type="submit" value="Registrarse" name="mandarRegistro"></td>
					<td><input type="button" id="boton"  value="Volver" onclick="window.location.href='InicioSesion.jsp'"></td>
				</tr>
			</table>
		</form>
	</div>
</body>
</html>