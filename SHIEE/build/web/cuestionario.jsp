<%@page language="java" session="true" import="java.sql.*" pageEncoding="UTF-8" contentType="text/html"%>
<!DOCTYPE html>
<html>
<head>
	<title>TEST</title>
	<meta charset="utf-8">
	<link rel="stylesheet" type="text/css" href="css/estilo.css">
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
                                            if(!Paciente.esPaciente(sesionOk.getAttribute("usuario"))){ response.sendRedirect("index.jsp");
                                            if(sesionOk.getAttribute("usuario")==null){
                                        %>
                                        <p><a class="no " href="InicioSesion.jsp">Inicio de sesión</a> | <a class="no" href="Registro.jsp">Registrarse</a></p>
                                        <%  }else{%>
                                        <a class="no " href="">Cerrar sesión</a> | <a class="no" href="Registro.jsp">Registrarse</a></p>
                                        <%}%>
				</div>
			</div>
			<ul>
				<!--Dependiendo de la dimension de la imagen va a cambiar la propiedad padding-top que estÃÂ¡ en body dentro de estilo.css  y tambien el height del nav en el css -->
				
				<li><a class="si" href="index.jsp">Inicio</a></li>
				<li><a class="si" href="">Información</a></li>
				<li><a class="si" href=""> Servicios </a>
					<ul id="submenu">
						<li><a class="si" href="VerificarSesion">Bitacora</a></li>
						<li><a class="si" href="test.jsp">Test</a></li>
					</ul>
				</li>
				<li><a class="si" href="directorio.jsp"> Directorio </a></li>
				<li><a class="si" href="nosotros.jsp"> Nosotros</a></li>
				<li><a class="si" href="paginaAdmin.jsp">Sesión</a></li>
			</ul>
		</nav>
	</header>
	<section style="background-color: #B4DBC0">
		<br>
		<center><h1 id="titulo">TEST DEL ESTRÉS</h1><br>
		<h2 class="margen"><b>Responde de forma honesta el test por favor</b></h2><br>
		<p class="margen"><h2 class="margen"><b class="subt">I - Nivel De Intesidad</b></h2></p>
		<p class="margen"><br>Contesta las siguientes preguntas utilizando una escala del 1 al 5, donde 1 representa poco y 5 representa mucho</p><br>
		<form method="get" action="<%= request.getContextPath() %>/AlmacenTest">
			<table class="tabla_t">
				<tr>
					<th>Pregunta</th>
					<th colspan="5 ">Respuesta</th>
				</tr>
				<tr>
					<td></td>
					<td id="col_res">1</td>
					<td id="col_res">2</td>
					<td id="col_res">3</td>
					<td id="col_res">4</td>
					<td id="col_res">5</td>
				</tr>
				<tr>
					<td>¿Cómo calificarias el nivel de preocupación o nerviosismo durante el semestre?</td>
					<td id="col_res"><input type="radio" name="s1_p1"></td>
					<td id="col_res"><input type="radio" name="s1_p1"></td>
					<td id="col_res"><input type="radio" name="s1_p1"></td>
					<td id="col_res"><input type="radio" name="s1_p1"></td>
					<td id="col_res"><input type="radio" name="s1_p1" required></td>
				</tr>
				<tr>
					<td colspan="6">Enumera las 3 materias que te producen un mayor nivel de preocupación y explica ¿porque?</td>
				</tr>
				<tr>
                                    <td colspan="6" rowspan="3"><input type="text" name="s1_p2_c1" class="entrada" required></td>
				</tr>
				
			</table>
		
		<!-- aqui va la seccion dos xDDD -->
		<br>
		<p class="margen"><h2 class="margen"><b class="subt">II - Estresores</b></h2></p><br>
		<p class="margen"><br>Señala con que frecuencia te inquietaron las siguientes situaciones</p><br>
		<p class="margen">N - Nunca R - Rara vez A - Algunas veces C - Casi siempre S - Siempre</p><br>
		
			<table class="tabla_t">
				<tr>
					<th>Pregunta</th>
					<th colspan="5">Respuestas</th>
				</tr>
				<tr>
					<td></td>
					<td id="col_res">N</td>
					<td id="col_res">R</td>
					<td id="col_res">A</td>
					<td id="col_res">C</td>
					<td id="col_res">S</td>
				</tr>
				<tr>
					<td>La competencia con los compañeros de grupo (ambiente escolar)</td>
					<td id="col_res"><input type="radio" name="s2_p1"></td>
					<td id="col_res"><input type="radio" name="s2_p1"></td>
					<td id="col_res"><input type="radio" name="s2_p1"></td>
					<td id="col_res"><input type="radio" name="s2_p1"></td>
					<td id="col_res"><input type="radio" name="s2_p1" required></td>
				</tr>
				<tr>
					<td>Exceso de responsabilidad personal por cumplir con las obligaciones escolares</td>
					<td id="col_res"><input type="radio" name="s2_p2"></td>
					<td id="col_res"><input type="radio" name="s2_p2"></td>
					<td id="col_res"><input type="radio" name="s2_p2"></td>
					<td id="col_res"><input type="radio" name="s2_p2"></td>
					<td id="col_res"><input type="radio" name="s2_p2" required></td>
				</tr>
				<tr>
					<td>Sobrecarga de tareas y trabajos escolares</td>
					<td id="col_res"><input type="radio" name="s2_p3"></td>
					<td id="col_res"><input type="radio" name="s2_p3"></td>
					<td id="col_res"><input type="radio" name="s2_p3"></td>
					<td id="col_res"><input type="radio" name="s2_p3"></td>
					<td id="col_res"><input type="radio" name="s2_p3" required></td>
				</tr>
				<tr>
					<td>La personalidad y el caracter del profesor</td>
					<td id="col_res"><input type="radio" name="s2_p4"></td>
					<td id="col_res"><input type="radio" name="s2_p4"></td>
					<td id="col_res"><input type="radio" name="s2_p4"></td>
					<td id="col_res"><input type="radio" name="s2_p4"></td>
					<td id="col_res"><input type="radio" name="s2_p4" required></td>
				</tr>
				<tr>
					<td>Las evaluaciones parciales a lo largo del semestre (examenes, ensayos, trabajos de investigacion, practicas, etc)</td>
					<td id="col_res"><input type="radio" name="s2_p5"></td>
					<td id="col_res"><input type="radio" name="s2_p5"></td>
					<td id="col_res"><input type="radio" name="s2_p5"></td>
					<td id="col_res"><input type="radio" name="s2_p5"></td>
					<td id="col_res"><input type="radio" name="s2_p5" required></td>
				</tr>
				<tr>
					<td>Las evaluaciones finales (examenes extraordinarios, ETS, etc.)</td>
					<td id="col_res"><input type="radio" name="s2_p6"></td>
					<td id="col_res"><input type="radio" name="s2_p6"></td>
					<td id="col_res"><input type="radio" name="s2_p6"></td>
					<td id="col_res"><input type="radio" name="s2_p6"></td>
					<td id="col_res"><input type="radio" name="s2_p6" required></td>
				</tr>
				<tr>
					<td>El tipo de trabajo que te piden los profesores (consulta de temas, fichas de trabajo, ensayos, mapas conceptuales, etc)</td>
					<td id="col_res"><input type="radio" name="s2_p7"></td>
					<td id="col_res"><input type="radio" name="s2_p7"></td>
					<td id="col_res"><input type="radio" name="s2_p7"></td>
					<td id="col_res"><input type="radio" name="s2_p7"></td>
					<td id="col_res"><input type="radio" name="s2_p7" required></td>
				</tr>
				<tr>
					<td>No entender los temas que se abordan en la clase</td>
					<td id="col_res"><input type="radio" name="s2_p8"></td>
					<td id="col_res"><input type="radio" name="s2_p8"></td>
					<td id="col_res"><input type="radio" name="s2_p8"></td>
					<td id="col_res"><input type="radio" name="s2_p8"></td>
					<td id="col_res"><input type="radio" name="s2_p8" required></td>
				</tr>
				<tr>
					<td>Participación en clase (responder a preguntas, exposiciones, etc.)</td>
					<td id="col_res"><input type="radio" name="s2_p9"></td>
					<td id="col_res"><input type="radio" name="s2_p9"></td>
					<td id="col_res"><input type="radio" name="s2_p9"></td>
					<td id="col_res"><input type="radio" name="s2_p9"></td>
					<td id="col_res"><input type="radio" name="s2_p9" required></td>
				</tr>
				<tr>
					<td>Tiempo limitado para hacer trabajos o prácticas</td>
					<td id="col_res"><input type="radio" name="s2_p10"></td>
					<td id="col_res"><input type="radio" name="s2_p10"></td>
					<td id="col_res"><input type="radio" name="s2_p10"></td>
					<td id="col_res"><input type="radio" name="s2_p10"></td>
					<td id="col_res"><input type="radio" name="s2_p10" required></td>
				</tr>
				<tr>
					<td>Entrega de Proyecto Aula</td>
					<td id="col_res"><input type="radio" name="s2_p11"></td>
					<td id="col_res"><input type="radio" name="s2_p11"></td>
					<td id="col_res"><input type="radio" name="s2_p11"></td>
					<td id="col_res"><input type="radio" name="s2_p11"></td>
					<td id="col_res"><input type="radio" name="s2_p11" required></td>
				</tr>
				<tr>
					<td>Elaboración del trabajo de Expobátiz</td>
					<td id="col_res"><input type="radio" name="s2_p12"></td>
					<td id="col_res"><input type="radio" name="s2_p12"></td>
					<td id="col_res"><input type="radio" name="s2_p12"></td>
					<td id="col_res"><input type="radio" name="s2_p12"></td>
					<td id="col_res"><input type="radio" name="s2_p12" required></td>
				</tr>
				<tr>
					<td>Adeudar materias</td>
					<td id="col_res"><input type="radio" name="s2_p13"></td>
					<td id="col_res"><input type="radio" name="s2_p13"></td>
					<td id="col_res"><input type="radio" name="s2_p13"></td>
					<td id="col_res"><input type="radio" name="s2_p13"></td>
					<td id="col_res"><input type="radio" name="s2_p13" required></td>
				</tr>
				<tr>
					<td>Participacion en Olimpiadas, interpolitecnicos, etc.</td>
					<td id="col_res"><input type="radio" name="s2_p14"></td>
					<td id="col_res"><input type="radio" name="s2_p14"></td>
					<td id="col_res"><input type="radio" name="s2_p14"></td>
					<td id="col_res"><input type="radio" name="s2_p14"></td>
					<td id="col_res"><input type="radio" name="s2_p14" required></td>
				</tr>
				<tr>
					<td colspan="6">Otra:</td>
				</tr>
				<tr>
					<td colspan="6"><input type="text" name="s2_p15_c1" class="entrada" required></td>
				</tr>
			</table>
		

		<!-- aqui va la seccion 3 -->
		<br>
		<p class="margen"><h2 class="margen"><b class="subt">III - Indicadores</b></h2></p><br>
		<p class="margen"><br>Señala con que frecuencia tuviste las siguientes reacciones fisicas, psicológicas y comportamentales cunado estabas preocupado o nervioso</p><br>
		<p class="margen">N - Nunca R - Rara vez A - Algunas veces C - Casi siempre S - Siempre</p><br>
		
			<table class="tabla_t">
				<tr>
					<th>Pregunta</th>
					<th colspan="6">Respuesta</th>
				</tr>
				<tr>
					<td style="color: gray"><b>I - Reacciones Físicas</b></td>
					<td id="col_res">N</td>
					<td id="col_res">R</td>
					<td id="col_res">A</td>
					<td id="col_res">C</td>
					<td id="col_res">S</td>
				</tr>
				<tr>
					<td>Trastornos en el sueño (insomnio o pesadillas)</td>
					<td id="col_res"><input type="radio" name="s3_p1"></td>
					<td id="col_res"><input type="radio" name="s3_p1"></td>
					<td id="col_res"><input type="radio" name="s3_p1"></td>
					<td id="col_res"><input type="radio" name="s3_p1"></td>
					<td id="col_res"><input type="radio" name="s3_p1" required></td>
				</tr>
				<tr>
					<td>Fatiga crónica</td>
					<td id="col_res"><input type="radio" name="s3_p2"></td>
					<td id="col_res"><input type="radio" name="s3_p2"></td>
					<td id="col_res"><input type="radio" name="s3_p2"></td>
					<td id="col_res"><input type="radio" name="s3_p2"></td>
					<td id="col_res"><input type="radio" name="s3_p2" required></td>
				</tr>
				<tr>
					<td>Dolores de cabeza o migraña</td>
					<td id="col_res"><input type="radio" name="s3_p3"></td>
					<td id="col_res"><input type="radio" name="s3_p3"></td>
					<td id="col_res"><input type="radio" name="s3_p3"></td>
					<td id="col_res"><input type="radio" name="s3_p3"></td>
					<td id="col_res"><input type="radio" name="s3_p3" required></td>
				</tr>
				<tr>
					<td>Problemas de digestión, dolor abdominal o diarrea</td>
					<td id="col_res"><input type="radio" name="s3_p4"></td>
					<td id="col_res"><input type="radio" name="s3_p4"></td>
					<td id="col_res"><input type="radio" name="s3_p4"></td>
					<td id="col_res"><input type="radio" name="s3_p4"></td>
					<td id="col_res"><input type="radio" name="s3_p4" required></td>
				</tr>
				<tr>
					<td>Rascarse, morderse las uñas, frotarse, etc.</td>
					<td id="col_res"><input type="radio" name="s3_p5"></td>
					<td id="col_res"><input type="radio" name="s3_p5"></td>
					<td id="col_res"><input type="radio" name="s3_p5"></td>
					<td id="col_res"><input type="radio" name="s3_p5"></td>
					<td id="col_res"><input type="radio" name="s3_p5" required></td>
				</tr>
				<tr>
					<td>Somnolencia o mayor necesidad de dormir</td>
					<td id="col_res"><input type="radio" name="s3_p6"></td>
					<td id="col_res"><input type="radio" name="s3_p6"></td>
					<td id="col_res"><input type="radio" name="s3_p6"></td>
					<td id="col_res"><input type="radio" name="s3_p6"></td>
					<td id="col_res"><input type="radio" name="s3_p6" required></td>
				</tr>
				<tr><td></td></tr>
				<tr>
					<td colspan="6" style="color: gray"><b>II - Reacciones psicológicas</b></td>
				</tr>
				<tr><td></td></tr>
				<tr>
					<td>Inquietud (incapacidad de relajarse y estar tranquilo</td>
					<td id="col_res"><input type="radio" name="s3_p7"></td>
					<td id="col_res"><input type="radio" name="s3_p7"></td>
					<td id="col_res"><input type="radio" name="s3_p7"></td>
					<td id="col_res"><input type="radio" name="s3_p7"></td>
					<td id="col_res"><input type="radio" name="s3_p7" required></td>
				</tr>
				<tr>
					<td>Sentimientos de depresion y tristeza (decaido)</td>
					<td id="col_res"><input type="radio" name="s3_p8"></td>
					<td id="col_res"><input type="radio" name="s3_p8"></td>
					<td id="col_res"><input type="radio" name="s3_p8"></td>
					<td id="col_res"><input type="radio" name="s3_p8"></td>
					<td id="col_res"><input type="radio" name="s3_p8" required></td>
				</tr>
				<tr>
					<td>Ansiedad angustia o desesperacion</td>
					<td id="col_res"><input type="radio" name="s3_p9"></td>
					<td id="col_res"><input type="radio" name="s3_p9"></td>
					<td id="col_res"><input type="radio" name="s3_p9"></td>
					<td id="col_res"><input type="radio" name="s3_p9"></td>
					<td id="col_res"><input type="radio" name="s3_p9" required></td>
				</tr>
				<tr>
					<td>Problemas de concentracion</td>
					<td id="col_res"><input type="radio" name="s3_p10"></td>
					<td id="col_res"><input type="radio" name="s3_p10"></td>
					<td id="col_res"><input type="radio" name="s3_p10"></td>
					<td id="col_res"><input type="radio" name="s3_p10"></td>
					<td id="col_res"><input type="radio" name="s3_p10" required></td>
				</tr>
				<tr>
					<td>Sensacion de tener la mente vacia</td>
					<td id="col_res"><input type="radio" name="s3_p11"></td>
					<td id="col_res"><input type="radio" name="s3_p11"></td>
					<td id="col_res"><input type="radio" name="s3_p11"></td>
					<td id="col_res"><input type="radio" name="s3_p11"></td>
					<td id="col_res"><input type="radio" name="s3_p11" required></td>
				</tr>
				<tr>
					<td>Problemas de memoria</td>
					<td id="col_res"><input type="radio" name="s3_p12"></td>
					<td id="col_res"><input type="radio" name="s3_p12"></td>
					<td id="col_res"><input type="radio" name="s3_p12"></td>
					<td id="col_res"><input type="radio" name="s3_p12"></td>
					<td id="col_res"><input type="radio" name="s3_p12" required></td>
				</tr>
				<tr>
					<td>Sentimiento de agresividad o aumento de irritabilidad</td>
					<td id="col_res"><input type="radio" name="s3_p13"></td>
					<td id="col_res"><input type="radio" name="s3_p13"></td>
					<td id="col_res"><input type="radio" name="s3_p13"></td>
					<td id="col_res"><input type="radio" name="s3_p13"></td>
					<td id="col_res"><input type="radio" name="s3_p13" required></td>
				</tr>
				<tr><td></td></tr>
				<tr>
					<td colspan="6" style="color: gray"><b>III - Reacciones comportamentales</b></td>
				</tr>
				<tr><td></td></tr>
				<tr>
					<td>Conflictos o tendencias a polemizar o discutir</td>
					<td id="col_res"><input type="radio" name="s3_p14"></td>
					<td id="col_res"><input type="radio" name="s3_p14"></td>
					<td id="col_res"><input type="radio" name="s3_p14"></td>
					<td id="col_res"><input type="radio" name="s3_p14"></td>
					<td id="col_res"><input type="radio" name="s3_p14" required></td>
				</tr>
				<tr>
					<td>Aislamiento de los demás</td>
					<td id="col_res"><input type="radio" name="s3_p15"></td>
					<td id="col_res"><input type="radio" name="s3_p15"></td>
					<td id="col_res"><input type="radio" name="s3_p15"></td>
					<td id="col_res"><input type="radio" name="s3_p15"></td>
					<td id="col_res"><input type="radio" name="s3_p15" required></td>
				</tr>
				<tr>
					<td>Absentismo de las clases</td>
					<td id="col_res"><input type="radio" name="s3_p16"></td>
					<td id="col_res"><input type="radio" name="s3_p16"></td>
					<td id="col_res"><input type="radio" name="s3_p16"></td>
					<td id="col_res"><input type="radio" name="s3_p16"></td>
					<td id="col_res"><input type="radio" name="s3_p16" required></td>
				</tr>
				<tr>
					<td>Desgano para realizar las labores escolares</td>
					<td id="col_res"><input type="radio" name="s3_p17"></td>
					<td id="col_res"><input type="radio" name="s3_p17"></td>
					<td id="col_res"><input type="radio" name="s3_p17"></td>
					<td id="col_res"><input type="radio" name="s3_p17"></td>
					<td id="col_res"><input type="radio" name="s3_p17" required></td>
				</tr>
				<tr>
					<td>Aumento o reducción del consumo de alimentos</td>
					<td id="col_res"><input type="radio" name="s3_p18"></td>
					<td id="col_res"><input type="radio" name="s3_p18"></td>
					<td id="col_res"><input type="radio" name="s3_p18"></td>
					<td id="col_res"><input type="radio" name="s3_p18"></td>
					<td id="col_res"><input type="radio" name="s3_p18" required></td>
				</tr>
				<tr>
					<td colspan="6">Otras (especifica)</td>
				</tr>
				<tr>
					<td colspan="6"><input type="text" name="s3_p19_c1" class="entrada" required></td>
				</tr>
			</table>
		

		<!-- aqui va la ultima seccion siuuuuuuuuuuuuuuuu -->
		<br>
		<p class="margen"><h2 class="margen"><b class="subt">IV - Estrategias De Afrontamiento</b></h2></p><br>
		<p class="margen"><br>Señala con que frecuencia utilizaste las siguientes estrategias para enfrentar la situación que te causaba preocupación o nerviosismo</p>
		<p class="margen"><br>N - Nunca R - Rara vez A - Algunas veces C - Casi siempre S - Siempre</p><br>
		<form>
                    <table class="tabla_t">
				<tr>
					<th>Pregunta</th>
					<th colspan="5">Respuesta</th>
				</tr>
				<tr>
					<td></td>
					<td id="col_res">N</td>
					<td id="col_res">R</td>
					<td id="col_res">A</td>
					<td id="col_res">C</td>
					<td id="col_res">S</td>
				</tr>
				<tr>
					<td>Habilidad asertiva (defender nuestras preferencias e ideas o sentimientos  sin dañar a otros)</td>
					<td id="col_res"><input type="radio" name="s4_p1"></td>
					<td id="col_res"><input type="radio" name="s4_p1"></td>
					<td id="col_res"><input type="radio" name="s4_p1"></td>
					<td id="col_res"><input type="radio" name="s4_p1"></td>
					<td id="col_res"><input type="radio" name="s4_p1" required></td>
				</tr>
				<tr>
					<td>Elaboración de un plan y ejecución de sus tareas</td>
					<td id="col_res"><input type="radio" name="s4_p2"></td>
					<td id="col_res"><input type="radio" name="s4_p2"></td>
					<td id="col_res"><input type="radio" name="s4_p2"></td>
					<td id="col_res"><input type="radio" name="s4_p2"></td>
					<td id="col_res"><input type="radio" name="s4_p2" required></td>
				</tr>
				<tr>
					<td>Tomar la situación con sentido del humor</td>
					<td id="col_res"><input type="radio" name="s4_p3"></td>
					<td id="col_res"><input type="radio" name="s4_p3"></td>
					<td id="col_res"><input type="radio" name="s4_p3"></td>
					<td id="col_res"><input type="radio" name="s4_p3"></td>
					<td id="col_res"><input type="radio" name="s4_p3" required></td>
				</tr>
				<tr>
					<td>Elogios a sí mismo</td>
					<td id="col_res"><input type="radio" name="s4_p4"></td>
					<td id="col_res"><input type="radio" name="s4_p4"></td>
					<td id="col_res"><input type="radio" name="s4_p4"></td>
					<td id="col_res"><input type="radio" name="s4_p4"></td>
					<td id="col_res"><input type="radio" name="s4_p4" required></td>
				</tr>
				<tr>
					<td>Distracción evasiva</td>
					<td id="col_res"><input type="radio" name="s4_p5"></td>
					<td id="col_res"><input type="radio" name="s4_p5"></td>
					<td id="col_res"><input type="radio" name="s4_p5"></td>
					<td id="col_res"><input type="radio" name="s4_p5"></td>
					<td id="col_res"><input type="radio" name="s4_p5" required></td>
				</tr>
				<tr>
					<td>La religiosidad (oraciones o asistencias a misa)</td>
					<td id="col_res"><input type="radio" name="s4_p6"></td>
					<td id="col_res"><input type="radio" name="s4_p6"></td>
					<td id="col_res"><input type="radio" name="s4_p6"></td>
					<td id="col_res"><input type="radio" name="s4_p6"></td>
					<td id="col_res"><input type="radio" name="s4_p6" required></td>
				</tr>
				<tr>
					<td>Busqueda de información sobre la situación</td>
					<td id="col_res"><input type="radio" name="s4_p7"></td>
					<td id="col_res"><input type="radio" name="s4_p7"></td>
					<td id="col_res"><input type="radio" name="s4_p7"></td>
					<td id="col_res"><input type="radio" name="s4_p7"></td>
					<td id="col_res"><input type="radio" name="s4_p7" required></td>
				</tr>
				<tr>
					<td>Ventilación y confidencias (verbalización de la situación que preocupa)</td>
					<td id="col_res"><input type="radio" name="s4_p8"></td>
					<td id="col_res"><input type="radio" name="s4_p8"></td>
					<td id="col_res"><input type="radio" name="s4_p8"></td>
					<td id="col_res"><input type="radio" name="s4_p8"></td>
					<td id="col_res"><input type="radio" name="s4_p8" required></td>
				</tr>
				<tr>
					<td>Otras (especifica):</td>
				</tr>
				<tr>
					<td colspan="6"><input type="text" name="s4_p9_c1" class="entrada" required></td>
				</tr>
			</table>
		
		</center>
	</section>
	<br>
	<br>
	<center style="background-color: #EAF2E3">
		<br>
                <a href="<%= request.getContextPath() %>/AlmacenTest"><button class="botont2" type="submit" style="color: #F2F2F2">FINALIZAR</button></a>&nbsp;&nbsp;&nbsp;&nbsp;<a href=""><button type="reset" class="botont2" style="color: #F2F2F2">CANCELAR</button></a>
		<br><br>
	</center>
        </form>
</body>
</html>
