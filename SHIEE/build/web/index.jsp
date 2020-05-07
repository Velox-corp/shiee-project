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
    <div class="flexslider">
        <ul class="slides">
            <li>
                <img src="img/b_1.jpg" alt="">
                <section class="flex-caption">
                    <p>
                        LOREM IPSUM 1
                    </p>
                </section>
            </li>
            <li>
                <img src="img/b_2.jpg" alt="">
                <section class="flex-caption">
                    <p>LOREM IPSUM 2</p>
                </section>
            </li>
            <li>
                <img src="img/b_4.jpg" alt="">
                <section class="flex-caption">
                    <p>LOREM IPSUM 3</p>
                </section>
            </li>
            <li>
                <img src="img/b_3.jpg" alt="">
                <section class="flex-caption">
                    <p>LOREM IPSUM 3</p>
                </section>
            </li>
        </ul>
    </div>
    <!--Fin/Agregar Imagenes/Agregar Fonts/ Agregar js/ Agregar Scripts-->
    <section id="seccion">
        <center>
            <article id="izquierda">
                <h1>Aplicaciones recomendadas</h1><br>
                <p>Aplicación</p>
                <br><br>
                <p>Aplicación</p>
                <br> <br>
                <p>Aplicación</p>
        </article>


        <aside id="derecha">
                <h1>Psicologos y terapeutas</h1><br>
                <p>Nombre</p><p>Correo</p><p>Numero</p>
                
                <p>Nombre</p><p>Correo</p><p>Numero</p>
                
                <p>Nombre</p><p>Correo</p><p>Numero</p>
        </aside>
        </center>
    </section>
</body>
</html>
