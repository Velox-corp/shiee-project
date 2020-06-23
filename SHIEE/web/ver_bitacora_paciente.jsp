
<%@page import="Clases.Paciente"%>
<%@page import="javax.sql.rowset.serial.SerialException"%>
<%@page import="javax.sql.rowset.serial.SerialBlob"%>
<%@page import="java.sql.Blob"%>
<%@page import="java.io.OutputStream"%>
<%@page import="sun.misc.IOUtils"%>
<%@page import="javax.imageio.ImageIO"%>
<%@page import="java.util.Iterator"%>
<%@page import="java.util.ArrayList"%>
<%@page import="Clases.Registro"%>
<%@page import="Clases.Psicologo"%>
<%-- 
    Document   : bitacora_ver
    Created on : 6/05/2020, 02:16:53 AM
    Author     : familia
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="icon" href="img/Shiee.png" type="image/png" />
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">

        <title>Bitácora -Ver Registros-</title>

        <meta name="description" content="Source code generated using layoutit.com">
        <meta name="author" content="LayoutIt!">
        <link href="https://fonts.googleapis.com/css2?family=Caveat:wght@700&family=Cormorant+Infant:wght@300&family=IBM+Plex+Sans+Condensed:wght@600&display=swap" rel="stylesheet">
        <link href="https://fonts.googleapis.com/css2?family=Courgette&family=Darker+Grotesque:wght@600&family=Grand+Hotel&family=Simonetta&display=swap" rel="stylesheet">

        <link href="css/bootstrap.min.css" rel="stylesheet">
        <link rel="stylesheet" type="text/css" href="css/estilo.css">
    </head>
    <body>
        <header>
        <nav class="menu">
            <div class="imagen_inicio">
                <img src="img/Shiee.png" width="90" height="90">
                <div class="esto_no">
                    <%
                        HttpSession sesionOk = request.getSession();
                        if(!Psicologo.esPsicologo(sesionOk.getAttribute("usuario"))){ response.sendRedirect("index.jsp");
                    %>
                    <p><a class="no " href="InicioSesion.jsp">Inicio de sesión</a> | <a class="no" href="Registro.jsp">Registrarse</a></p>
                    <%  }else{%>
                    <p><a class="no " href="">Cerrar sesión</a> | <a class="no" href="Registro.jsp">Registrarse</a></p>
                    <%}%>
                </div>
            </div>
            <ul>
                <!--Dependiendo de la dimension de la imagen va a cambiar la propiedad padding-top que estÃ¡ en body dentro de estilo.css  y tambien el height del nav en el css -->

                <li><a class="si" href="index.jsp">Inicio</a></li>
                <li><a class="si" href="">Información</a></li>
                <li><a class="si" href=""> Servicios </a>
                    <ul id="submenu">
                        <li><a class="si" href="BitácoraInicio.jsp">Bitácora</a></li>
                        <li><a class="si" href="test.jsp">Test</a></li>
                    </ul>
                </li>
                <li><a class="si" href="directorio.jsp"> Directorio </a></li>
                <li><a class="si" href="nosotros.jsp"> Nosotros</a></li>
                <li><a class="si" href="paginaAdmin.jsp">Sesión</a></li>
            </ul>
        </nav>
    </header>

    <%
    if(sesionOk.getAttribute("usuario")!=null){
    %>
    <div class="container-fluid">
        <div class="row">
            <div class="col-md-12">
                <div class="view">
                    <div id="card-230654"> 
                        <%
                            try{
                                Paciente p = Paciente.obtenerPaciente(Integer.parseInt(request.getParameter("id").toString()));
                                Registro r = new Registro();
                                ArrayList<Registro> re = r.obtenerListaReUsuario(p.getId_pac());
                                Iterator<Registro> re2 = re.iterator();
                                if(re2.hasNext()){
                                    %>
                                    <h3 class="text-center">
                                        Bitácora
                                    </h3>
                                    <a class="btn btn-primary align-content-center btn-sm" href="estudiantes.jsp">Volver</a>
                                    <%
                                    while(re2.hasNext()){
                                    r = re2.next();
                                    //Obtener parametros para hacer imagenes
                                    //Ya todo lo demas
                                    String text = r.getTexto();
                                    String date = r.getFecha_regristro();

                        %>
                        <div class="card">
                            <div class="card-header">
                                <a class="card-link collapsed" data-toggle="collapse" data-parent="#card-230654" href="#card-<%= r.getId_regristro() %>-<%= r.getId_paciente() %>">Regristro <%= date %></a>
                            </div>
                                <div id="card-<%= r.getId_regristro() %>-<%= r.getId_paciente() %>" class="collapse">
                                <div class="card-body centrar-img">
                                    <h5>Notas</h5>
                                        <%
                                            if(text!=null){
                                        %>
                                            <%= text %>
                                        <%
                                            }
                                        %>
                                    <img class="centrar-img" src ="imageServlet?id=<%= r.getId_regristro() %>">
                                </div>
                            </div>
                        </div>
                        <%
                                    }
                                }else{
                                    %>
                                    <div class="align-content-center">
                                        <h3 class="text-center">Todavía no hay registros en la bitácora del paciente</h3>
                                        <a class="btn btn-primary align-content-center btn-sm" href="estudiantes.jsp">Volver</a>
                                    </div>
                                    <%
                                }
                            }

                            catch(Exception e){
                                System.out.println("Chale a lo mejor y no hay mada");
                                e.printStackTrace();
                                System.out.println(e.getMessage());
                                System.out.println(e.getLocalizedMessage());
                            }
                        %>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <%
        //Nota esta llave es para el if de verificar la sesion
        }else{
    %>
    <h2>No se ha registrado</h2>
    <%
        }
    %>
    <script src="js/jquery.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/scripts.js"></script>
    </body>
</html>
