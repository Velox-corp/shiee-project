<%@page language="java" session="true" pageEncoding="UTF-8" contentType="text/html"%>
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
    <div class="container-cover">
        <div class="container-info-cover">
            <h1>!Respira hondo y sigue¡</h1>
            <p>
                Recuerda que no estas solo
            </p>
        </div>
    </div>

    <div class="container-content">
        <article>
            <h1>El Estrés</h1>
            <p>
                Actualmente el mal manejo del estrés es un mal generalizado de la sociedad; tanto así, que no es posible enmarcarlo dentro de un solo grupo social, por el contrario, se ha generalizado a todos los campos de la esfera social. Mas aún, cuando la vida cotidiana favorece la aparición de un ambiente lleno de factores que inducen al estrés.
            </p>
            <p>
                El estrés psicosocial es un factor predisponente, desencadenante o coadyuvante de múltiples enfermedades, en especial, las crónicas no transmisibles que más afectan a la población. Sin embargo, es el menos conocido y estudiado a pesar de que sus efectos sobre la salud pueden ser catastróficos.
            </p>
            <p>
                Ante un problema de salud pública como el estrés, y particularmente en el medio académico, son muchos los estudios que en los últimos años se han realizado y, se están llevando a cabo con el fin de encontrar las herramientas para mejorar la calidad de vida de quienes lo padecen.
            </p>
            <img src="img/arti1.jpg" alt="">
            <p> 
                La exigencia académica en el proceso de formación profesional y los múltiples factores que intervienen en la adaptación de un individuo a su hábitat y en especial cuando ese individuo cambia su forma de vida para trasladarse a estudiar, son de suponerse como posibles causantes del estrés académico, que se esperaría ver reflejado en la mayoría de la población
                Indiscutiblemente el estrés afecta notoriamente el desempeño académico de los estudiantes, siendo más notoria entre los niveles medio-superior y superior en virtud de su mayor carga académica.
            </p>
            <h2>Tipos estrés</h2>
            <ol type="a">
                <li>Estrés agudo (transitorio).</li>
                <p>Se produce cuando un individuo experimenta una sensación de peligro inminente. La amenaza es percibida en primer lugar por la mente e inmediatamente el cuerpo reacciona. El ritmo cardiaco se acelera, aumenta la respiración, los músculos se tensan preparándose para la acción. Ejemplo: accidentes, catástrofes, muertes inesperadas.</p>
                <li>Estrés crónico</li>
                <p>Puede aparecer como el resultado de la concatenación de diversos acontecimientos estresantes o una misma situación mantenida durante mucho tiempo. Algunas personas experimentan temblores o sacudidas, sudoración excesiva, desde el punto de vista psíquico puede presentar pesimismo y su capacidad intelectual y creativa puede resultar mermada, además de sueño inquieto e insomnio que reducen los niveles de energía, también es posible que se descuiden de su aspecto físico y la higiene, puede ocurrir pérdida del apetito o sobrealimentación. Disminuye también el deseo sexual ya que al afectarse el sistema nervioso central disminuye la secreción de hormonas sexuales. Ejemplo: cuidado de un familiar enfermo, conflictos matrimoniales, exceso de trabajo y de responsabilidades, malas relaciones interpersonales.</p>
                <li>Estrés anticipatorio</li>
                <p>Se presenta antes de que ocurra la situación estresante, es decir, se anticipa y puede adoptar las manifestaciones señaladas para el estrés agudo o crónico. Acompañadas de interrogantes sin fundamento.</p>
            </ol>
            <h2>Recomendaciones</h2>
            <ul type="circle">
                <li>Confrontación: Búsqueda de alternativas.</li>
                <li>Distanciamiento: Aislamiento afectivo de la situación.</li>
                <li>Autocontrol: Percatarse de la situación y tratar de controlarse, regular sus sentimientos y acciones. </li>
                <li>Búsqueda de apoyo: Accionar para buscar información, consejos,comprensión y ayuda. </li>
                <li>Aceptar la responsabilidad: Reconocimiento de la responsabilidaddel individuo ante el problema. </li>
                <li>Huida: Evasión de la situación, no la afronta. </li>
                <li>Planificación: Creación de un esquema para que sea más exequiblepara el individuo. </li>
                <li>Reevaluación positiva: Atribuirle un sentido positivo a la situación,buscar el lado placentero de la misma. </li>
            </ul>
        </article>
        <div class="container-aside">
        <aside>
            <img src="img/arti2.jpg">
            <h2>Dato curioso</h2>
            <p>Una respuesta al estres se lleva a cabo en la lengua que se mueve poco dentro de la boca, la laringe asciende y se coloca en la parte alta del cuello, se siente una gran tensión de cuello y garganta, la velocidad del habla se acelera, el tono se hace más agudo, la intensidad es mayor... Se pierde la melodía y el vibrato normal de la voz, la voz sale sin proyección. Al final hay gran cansancio vocal. </p>
            <a href="https://www.redalyc.org/articulo.oa?id=349832311003"><button>leer mas</button></a>
        </aside>
        </div>
    </div>

    <section>
        <center>
        <div class = article>
            <div class =imageArt >
                <BR>
                <img src="img/anim.jpg" class= img-fluid>
            </div>
            <div class =textArea >
                <h2>
                
Amigos peludos que combaten y comparten tu estres
                </h2>
                <p>
                Una forma facil de combatir el estres es cuidar de una mascota, usaremos de ejemplo al mejor amigo del hombre.
Segun el universal escribe :"Investigadores de la Universidad De Florida, Estados Unidos, aseguran que los perros de compañia ofrecen un valioso apoyo social a los niños cuando se encuentran estresados, tras constatar el efecto balsamico que les pueden ofrecer estos animales como mascotas", estos animales son de gran ayuda para sobrellevar situaciones estresantes ademas de que pueden compartir nuestro estres como fue demostrado por el estudio de la Universidad Linköping de Suecia, ya que el aumento de la hormona que provoca el estres estaba sincronizado entre el dueño y el perro, esto se puede deber a que los perros buscan empatizar con sus dueños.
La accion de acariciar a un can es de gran ayuda para combatir el estres, y es una gran forma de liberar tension al dar cariño que sera reciproco. 
                </p>
            </div>
        </div>
        </center>
    </section>
    <br>
        <br>
        <br>
            <section>
        <center>
        <div class = article>
            <div class =imageArt >
                <BR>
                <img src="img/kombat.jpg" class= img-fluid>
            </div>
            <div class =textArea >
                <h2>
                
Formas de combatir el estres
                </h2>
                <p>
                Hoy en dia es muy facil vivir estresado, con todos los estimulos visuales, auditivos y cognitivos que hay hoy en dia, pero tambien podemos encontrar formas de despejarnos a contuniacion listaremos algunas de ellas:
-Una de las mejores forma de desestresarse y un habitos saludable, ya que a la hora de hacer ejercicio tu cerebro libera quimicos que generan bienestar y ayuda a liberar la tension.
-Hoy en dia con es estilo de vida que llevamos es dificil hallar tiempo para el descanso, sin embargo este es una de las mejores formas de combatir el estres ya que permite a todos los organos recuperarse.
-Mantener una dieta saludable es escencial para combatir el estres, ya que permite al organismo funcionar de forma optima. 
                </p>
            </div>
        </div>
        </center>
    </section>
    <br>
        <br>
        <br>
     <section class="post-list">
        <div class="content">

            <article class="post">
                <div class="post-header">
                    <div class="post-img-1"></div>
                </div>
                <div class="post-body"><span>
                    27 enero, 2019 | Psicología clínica
                </span>
                <h2>Pérdida de memoria por estrés ¿por qué ocurre?</h2>
                <p>Si nos preguntamos ahora qué hay detrás de la pérdida de memoria por estrés, debemos nombrar a una vieja conocida, a la hormona del cortisol.</p>
                <ul>
                 <li>Este glucocorticoide producido por la glándula suprarrenal se libera como respuesta al estrés. Ahora bien, que el pico de cortisol aumente en un momento dado más allá de sus niveles habituales, no supone ningún problema, es más un pequeño aumento de esta hormona en un instante puntual, mejora la formación de nuevos recuerdos.</li>
                 <li>Este glucocorticoide producido por la glándula suprarrenal se libera como respuesta al estrés.</li>
                <li>Lo preocupante es que la liberación de glucocorticoides se produzca de forma constante y a lo largo de semanas o meses. Será entonces cuando tengamos dificultades para recordar datos y para recuperar otros ya existentes.</li>
                </ul>
                <a href="https://lamenteesmaravillosa.com/perdida-de-memoria-por-estres-en-que-consiste/" class="post-link">Leer Más...</a>
                </div>
            </article>

            <article class="post">
            <div class="post-header">
                <div class="post-img-2"></div>
                </div>
                <div class="post-body">
                <span> julio, 2008 | RICYDE</span>
                <h2>¿Cómo reducir el estres?</h2>
                <p>Se ha considerado que el estrés contribuye a la patogénesis y la progresión de las enfermedades cardiovasculares. Se ha demostrado que la reducción del estrés mediante la Meditación Trascendental ha bajado los niveles de presión arterial y reducido el riesgo de ECV en adultos y adolescentes. Este artículo repasa los resultados que sugieren el impacto beneficioso de la Meditación Trascendental en reducir la presión arterial en adultos hipertensos en reposo y en adolescentes pre-hipertensos en reposo, durante un estrés agudo creado en el laboratorio y durante la actividad diaria normal. Dichos resultados tienen implicaciones importantes para la inclusión de la meditacion en los esfuerzos que se realizan para prevenir y tratar las enfermedades cardiovasculares y sus consecuencias clínicas.</p>
                <a href="https://www.redalyc.org/articulo.oa?id=71041202" class="post-link">Leer Más...</a>
            </div>
            </article>

            <article class="post">
                <div class="post-header">
                <div class="post-img-3"></div>
                </div>
                <div class="post-body"><span>
                     noviembre-diciembre, 2014 | Revista de Informacion Cientifica
                </span>
                <h2>Manejo del Estres</h2>
                <p>El estrés psicosocial es un factor predisponente, desencadenante o coadyuvante de múltiples enfermedades, sin embargo, es el menos conocido y estudiado a pesar de que sus efectos sobre la salud pueden ser catastróficos.La medicina tradicional y natural no constituye un método alternativo, sino una disciplina de las ciencias médicas que se requiere estudiar, perfeccionar y mantener en el país, y su aplicación permite la prevención, diagnóstico y tratamiento de gran importancia en tiempo de paz, en situaciones de contingencia y en la preparación de la guerra de todo el pueblo y deviene como terapéutica efectiva en el manejo del estrés, es por ello, que se propone actualizar el personal para poder combatir de forma más efectiva este factor de riesgo que amenaza constantemente este equilibrio, además de informar, ubicar en el tiempo, y orientar a todos aquellos lectores que trabajan, están interesados, y pudieran interesarse en el tema.</p>
                <a href="https://www.redalyc.org/articulo.oa?id=551757253019" class="post-link">Leer Más...</a>
                </div>
            </article>
        </div>
    </section>

    <section class="human"><center>
        <h2>Coloque su cursor sobre los organos del modelo,<br>
            para averiguar que sintomas podria provocar<br>
            el estres agudo o cronico en cada organo</h2>
        <img class="art" width="845px" height="529.2px" src="img/body.jpg" alt="body" usemap="#body">
        </center>
        <map name="body">
            <area shape="circle" coords="206,32,20" href="#" onclick="return false;" alt="head" data-toggle="tooltip" title="-Dolor de cabeza
-Vertigo
-Cansancio
-Falta de energía o concentración
-Problemas para dormir o dormir demasiado
-Fallos en la memoria">
            <area shape="circle" coords="202,267,15" href="#" onclick="return false;" alt="heart" data-toggle="tooltip" title="-Aumento de la presion arterial
-Paro Cardiaco
-En casos graves: derrame cerebral o un ataque al corazón">
            <area shape="circle" coords="212,320,20" href="#" onclick="return false;" alt="Stomach" data-toggle="tooltip" title="-Malestar de estómago
-Diarrea 
-Diabetes tipo 2">
            <area shape="circle" coords="160,380,50" href="#" onclick="return false;" alt="guts" data-toggle="tooltip" title="-Diarrea 
-Estreñimiento">
            <area shape="circle" coords="172,310,30" href="#" onclick="return false;" alt="liver" data-toggle="tooltip" title="-Produccion de azucar anormal">
            <area shape="circle" coords="211,74,10" href="#" onclick="return false;" alt="eyes" data-toggle="tooltip" title="-Miopia">
            <area shape="circle" coords="186,250,60" href="#" onclick="return false;" alt="lungs" data-toggle="tooltip" title="-Agrava el Asma y/o Enfisema">
            <area shape="circle" coords="198,465,20" href="#" onclick="return false;" alt="sexual" data-toggle="tooltip" title="-Perdida del apetito sexual
-Alterar la produccion de esperma
-Disfuncion erectil
-Alterar el ciclo menstrual">
            <area shape="circle" coords="102,221,30" href="#" onclick="return false;" alt="skin" data-toggle="tooltip" title="-Dolores y achaques frecuentes
-Desgarros Musculares
-Irritacion en la piel
-Acne">
            <area shape="circle" coords="274,212,30" href="#" onclick="return false;" alt="skin" data-toggle="tooltip" title="-Dolores y achaques frecuentes
-Desgarros Musculares
-Irritacion en la piel
-Acne">
            <area shape="circle" coords="134,474,40" href="#" onclick="return false;" alt="skin" data-toggle="tooltip" title="-Dolores y achaques frecuentes
-Desgarros Musculares
-Irritacion en la piel
-Acne">
            <area shape="circle" coords="640,254,50" href="#" onclick="return false;" alt="Stomach" data-toggle="tooltip" title="-Malestar de estómago
-Diarrea 
-Diabetes tipo 2">
            <area shape="circle" coords="550,300,50" href="#" onclick="return false;" alt="guts" data-toggle="tooltip" title="-Diarrea 
-Estreñimiento">
            <area shape="circle" coords="550,222,50" href="#" onclick="return false;" alt="liver" data-toggle="tooltip" title="-Produccion de azucar anormal">
        </map>
    </section>
</body>

</html>