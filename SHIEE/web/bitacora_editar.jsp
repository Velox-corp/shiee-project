<%@page import="Clases.Paciente"%>
<%@page import="java.util.Iterator"%>
<%@page import="java.util.ArrayList"%>
<%@page import="Clases.Registro"%>
<%@page import="Clases.Registro"%>
<%@page language="java" session="true" import="java.sql.*" pageEncoding="UTF-8" contentType="text/html"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <title>Bitacora -Editar registro-</title>

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
                        if(!Paciente.esPaciente(sesionOk.getAttribute("usuario"))){ response.sendRedirect("index.jsp");
                    %>
                    <p><a class="no " href="InicioSesion.jsp">Inicio de sesión</a> | <a class="no" href="Registro.jsp">Registrarse</a></p>
                    <%  }else{%>
                    <p><a class="no " href="">Cerrar sesión</a> | <a class="no" href="Registro.jsp">Registrarse</a></p>
                    <%}%>
                </div>
            </div>
            <ul>
                <!--Dependiendo de la dimension de la imagen va a cambiar la propiedad padding-top que está en body dentro de estilo.css  y tambien el height del nav en el css -->

                <li><a class="si" href="index.html">Inicio</a></li>
                <li><a class="si" href="">Información</a></li>
                <li><a class="si" href=""> Servicios </a>
                    <ul id="submenu">
                        <li><a class="si" href="BitácoraInicio.html">Bitacora</a></li>
                        <li><a class="si" href="test.html">Test</a></li>
                    </ul>
                </li>
                <li><a class="si" href="directorio.html"> Directorio </a></li>
                <li><a class="si" href="nosotros.html"> Nosotros</a></li>
                <li><a class="si" href="paginaAdmin.html">Sesión</a></li>
            </ul>
        </nav>
    </header>
    <%
        if(sesionOk.getAttribute("usuario")!=null){
    %>
    <div class="container-fluid">
        <div class="row">
            <div class="col-md-4">
                <a href="bitacora_ver.jsp" class="btn btn-block btn-lg btn-outline-primary">Ver registros</a>
                <a href="bitacora_editar.jsp" class="btn btn-block btn-outline-primary btn-lg">Editar registro</a>
                <a href="bitacora_nuevo.jsp" class="btn btn-block btn-lg btn-outline-primary">Nuevo registro</a>
                <a href="bitacora_eliminar.jsp" class="btn btn-block btn-lg btn-outline-primary">Eliminar registros</a>
            </div>
            <div class="col-md-8">
                <div class="view">
                    <div id="card-230654"> 
                        <%
                            try{
                                Registro r = new Registro();
                                Paciente p = (Paciente) sesionOk.getAttribute("usuario");
                                ArrayList<Registro> re = r.obtenerListaReUsuario(p.getId_pac());
                                Iterator<Registro> re2 = re.iterator();
                                if(re2.hasNext()){
                        %>
                        <h3 class="text-center">
                            Bitácora
                        </h3>
                        <%
                                    while(re2.hasNext()){
                                    r = re2.next();
                                    //Ya todo lo demas
                                    String date = r.getFecha_regristro();

                        %>
                        <div class="card">
                            <div class="card-header">
                                <a class="card-link collapsed" data-toggle="collapse" data-parent="#card-230654" href="#card-<%= r.getId_regristro() %>-<%= r.getId_paciente() %>">Regristro <%= date %></a>
                            </div>
                                <div id="card-<%= r.getId_regristro() %>-<%= r.getId_paciente() %>" class="collapse">
                                <div class="card-body centrar-img">
                                    <h5>Notas</h5>
                                    <h3>
                                        Reescriba sus registros
                                    </h3>
                                    <% int id_r = r.getId_regristro(); %>
                                    <form id="form" role="form" method="post" action="editarRegistro" enctype="multipart/form-data" 
                                          class="center-block" name="forms">
                                        <div class="form-group">
                                            <input type="text" name="id" readonly value="<%= id_r %>">
                                            <div id=imagenes-bitacora>
                                                <input accept="images/*" required="true" type="file" class="form-control-file" name="image">
                                            </div>
                                            <p class="help-block">
                                                Elija su nueva fotografía
                                            </p>
                                            <label for="text-area">
                                                Texto
                                            </label>
                                            <textarea id="text-area" name="textarea" class="form-control col-md-8"></textarea>
                                        </div>
                                        <input id="boton-n-bitacora" type="button" 
                                               class="col-4 btn btn-lg btn-success" value="Guardar" name="btn-sub">
                                        <input id="boton-c-bitacora" type="reset" class="col-4 btn btn-lg btn-success" value="Cancelar">
                                    </form>
                                    <script language="javascript">
                                        var sub_mit = document.getElementsByName("btn-sub");
                                        var forms = document.getElementsByName("forms");
                                        var imagenes = document.getElementsByName("image")[0];
                                        var texto = document.getElementById("text-area").value;
                                        var files = imagenes.files[0];
                                        
                                        sub_mit.forEach(item => {
                                            var n = 0;
                                            item.addEventListener("click", function(){
                                                forms[n].requestSubmit();
                                                n += 1;
                                            });
                                        });

                                    </script>
                                </div>
                            </div>
                        </div>
                        <%
                                    }
                                }else{
                                    %>
                                    <h3 class="text-center">Todavía no hay registros en tu bitácora</h3>
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