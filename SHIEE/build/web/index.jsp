<%@page language="java" session="true" pageEncoding="UTF-8" contentType="text/html"%>
<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <title>SHIEE</title>
    <link rel="stylesheet" type="text/css" href="css/estilo.css">
    <link rel="icon" href="img/Shiee.png" type="image/png" />
    <link href="https://fonts.googleapis.com/css2?family=Caveat:wght@700&family=Cormorant+Infant:wght@300&family=IBM+Plex+Sans+Condensed:wght@600&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Courgette&family=Darker+Grotesque:wght@600&family=Grand+Hotel&family=Simonetta&display=swap" rel="stylesheet">
    <!--Scripts agregados-->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.6.2/jquery.min.js"></script>
    <meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <script src="js/jquery.flexslider.js"></script>
    <script type="text/javascript" charset="utf-8">
        $(window).load(function() {
          $('.flexslider').flexslider({
              touch: true,
              pauseOnAction: false,
              pauseOnHover: false,
          });
        });
    </script>
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
    <!--Slidershow-->
    <div class="flexslider"  style="background-color: #B4DBC0">
        <ul class="slides">
            <li>
                <img src="img/b_4.jpg" alt="">
                <section class="flex-caption">
                    <p style="background-color: rgba(31, 120, 140,0.6)">
                        ¡REGISTRATE!
                    </p>
                    <p style="font-size:2vw; margin-top: 8vw; font-family:'Darker Grotesque',sans-serif">
                        COMIENCE A DISFRUTAR DE TODO EL CONTENIDO
                    </p>
                    <p style="margin-top: 13.5vw"><a href="Registro.jsp" class="botonts">Regístrarse</a></p>
                </section>
            </li>
            <li>
                <img src="img/b_3.jpg" alt="">
                <section class="flex-caption">
                    <p style="background-color: rgba(242, 165, 22,0.6)">
                        NOSOTROS
                    </p>
                    <p style="font-size:2vw; margin-top: 8vw; font-family:'Darker Grotesque',sans-serif">
                        MISIÓN, VISIÓN, OBJETIVO...
                    </p>
                    <p style="margin-top: 13.5vw"><a href="nosotros.jsp" class="botonts3">Conócenos</a></p>
                </section>
            </li>
            <li>
                <img src="img/b_2.jpg" alt="">
                <section class="flex-caption">
                    <p style="background-color: rgba(24, 89, 14,0.6)">
                        INFÓRMATE
                    </p>
                    <p style="font-size:2vw; margin-top: 6.5vw; font-family:'Darker Grotesque',sans-serif">
                        EL ESTRÉS ES UN PROBLEMA DE SALUD PÚBLICA EN TODO EL MUNDO DEBIDO A QUE AFECTA A TODA LA POBLACIÓN, ES DECIR,
                        SIN DISTINCIÓN DE EDAD, SEXO, RAZA O NIVEL SOCIOECONÓMICO
                    </p>
                    <p style="margin-top: 13.5vw"><a href="info.jsp" class="botonts2">Informarme</button></a></p>
                </section>
            </li>
            <li>
                <img src="img/b_1.jpg" alt="">
                <section class="flex-caption">
                    <p style="background-color: rgba(44, 89, 37,0.6)">
                       TEST
                    </p>
                    <p style="font-size:2vw; margin-top: 8vw; font-family:'Darker Grotesque',sans-serif">
                       ¡REALIZA TU TEST DEL ESTRÉS AHORA!
                    </p>
                    <p style="margin-top: 13.5vw"><a href="test.jsp" class="botonts4">Realizar Test</button></a></p>
                </section>
            </li>
        </ul>
    </div>
    <article id="izquierda_2">
        <div class="container">
            <figure class="snip0015">
                <img src="img/p_1.jpg" alt="sample38"/>
                    <figcaption>
                        <h2><a href="https://www.mexicoviajes.com.mx/post/los-mejores-lugares-de-m%C3%A9xico-para-un-relax-total" target="blank" class="info link titulo">LOS MEJORES LUGARES DE MÉXICO PARA UN RELAX TOTAL...</a></h2>
                    </figcaption>			
            </figure>
        </div>
    </article>

    <aside id="derecha_2">
        <div class="container">
            <figure class="snip0015">
                <img src="img/p_2.jpg" alt="sample38"/>
                <figcaption>
                    <h2><span><a href="https://www.calm.com/" class="info link titulo" target="blank">Calm: la aplicación n.º 1 para la meditación y el sueño</a></span></h2>
                </figcaption>			
            </figure>
        </div>
    </aside>
</body>
</html>
