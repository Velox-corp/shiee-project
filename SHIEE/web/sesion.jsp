<%-- 
    Document   : sesion
    Created on : 7/05/2020, 06:03:38 PM
    Author     : maste
--%>

<%@page import="Clases.Psicologo"%>
<%@page import="Clases.Paciente"%>
<%@page contentType="text/html" pageEncoding="UTF-8" language="java" session="true"%>

<%
    HttpSession sesionUser = request.getSession();
    String tipo_user = null;
    String username = "";
    String pass = "";
    String nombre = "";
    String appat = "";
    String apmat = "";
    String f_n = "";
    int id = 0;
    
    boolean pacPrueba = Paciente.esPaciente(sesionUser.getAttribute("usuario"));
    if(pacPrueba){
        try{
            System.out.println("Espaciente");
            Paciente pac = (Paciente)sesionUser.getAttribute("usuario");
            tipo_user = "Paciente";
            id = pac.getId_pac();
            nombre = pac.getNombre_pac();
            appat = pac.getAppat_pac();
            apmat = pac.getApmat_pac();
            f_n = pac.getFecha_nac_pac();
            username = pac.getUsuario_pac();
            pass = pac.getContra_pac();
        }catch(Exception ex){
            System.out.println("No se pudo obtener los datos");
            ex.printStackTrace();
        }
    }

    boolean psiPrueba = Psicologo.esPsicologo(sesionUser.getAttribute("usuario"));
    if(psiPrueba){
        try{
            System.out.println("Es psicologo");
            Psicologo psi = (Psicologo)sesionUser.getAttribute("usuario");
            tipo_user= "Psicologo";
            nombre = psi.getNombre_psi();
            appat = psi.getAppat_psi();
            apmat = psi.getApmat_psi();
            f_n = psi.getFecha_nac_psi();
            username = psi.getUsuario_psi();
            pass = psi.getContra_psi();
            id = psi.getId_psi();
        }catch(Exception ex){
            System.out.println("No se pudo obtener los datos");
            ex.printStackTrace();
        }
    }
    if(!pacPrueba && !psiPrueba){
        response.sendRedirect("SesionRequerida.jsp");
    }
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Sesion de <%=nombre%></title>
        <link rel="stylesheet" type="text/css" href="css/estilo.css">
	<link rel="stylesheet" type="text/css" href="css/estilosRegistro.css">
	<link href="https://fonts.googleapis.com/css2?family=Caveat:wght@700&family=Cormorant+Infant:wght@300&family=IBM+Plex+Sans+Condensed:wght@600&display=swap" rel="stylesheet"><link href="https://fonts.googleapis.com/css2?family=Courgette&family=Darker+Grotesque:wght@600&family=Grand+Hotel&family=Simonetta&display=swap" rel="stylesheet">
        <script type="text/javascript" src="js/ValidacionRegistro.js"></script>
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
                        response.sendRedirect("SesionRequerida.jsp");
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
        <div class="contenedor">
            <h1>Edite los parametros de su sesión</h1>
            <form name="actualizarUsuario" method="post" id='formulario' action="actualizarUser">
                <table border="0">
                        <!--Cada tr, va a ser un ingreso-->
                        <tr>
                            <td><input type="button" class="btn" onclick="return activarCampo('nombre')" value="Editar"></td>
                            <td>Nombre:</td>
                            <td><input type="text" name="nombre" id="nombre" value="<%=nombre%>" onchange="estaVacio(this)" readonly="readonly"></td>
                        </tr>

                        <tr>
                            <td><input type="button" class="btn" onclick="return activarCampo('appat')" value="Editar"></td>
                            <td>Apellido Paterno:</td>
                            <td><input type="text" name="appat" id="appat" value="<%=appat%>" readonly="readonly" onchange="estaVacio(this)" ></td>
                        </tr>

                        <tr>
                            <td><input type="button" class="btn" onclick="return activarCampo('apmat')" value="Editar"></td>
                            <td>Apellido Materno:</td>
                            <td><input type="text" name="apmat" onchange="estaVacio(this)" id="apmat" value="<%=apmat%>" readonly="readonly"></td>
                        </tr>

                        <tr>
                            <td><input type="button" class="btn" onclick="return activarCampo('fechaNac')" value="Editar"></td>
                            <td >Fecha de Nacimiento:</td>
                            <td><input type="date" name="fechaNac" onchange="validarFecha(this)" id="fechaNac" value="<%=f_n%>" readonly="readonly"></td>
                        </tr>
                        <tr>
                            <td><input type="button" class="btn" onclick="return activarCampo('nombreUsuario')" value="Editar"></td>
                            <td>Usuario:</td>
                            <td><input type="text" name="nombreUsuario" onchange="validarUser(this)" id="nombreUsuario" value="<%=username%>" readonly="readonly"></td>
                        </tr>

                        <tr>
                            <td></td><td colspan="2" id="nota">El nombre de Usuario debe tener un maximo de 15 caracteres</td>
                        </tr>
                        <tr>
                            <td><input class="btn" type="button" onclick="return activarCampo('password')" value="editar"></td>
                            <td>Contraseña:</td>
                            <td><input type="password" name="password" onchange="validarCont(this)" id="password" value="<%=pass%>" readonly="readonly"></td>
                        </tr>
                        <tr><td></td><td colspan="2" id="nota">La contraseña solo acepta letras y números, de 8 a 15 caracteres</td></tr>

                        <!--
                        <tr>
                                <td>Correo Electrónico:</td>
                                <td><input type="email" name="correo" onchange="validarCorreo(this)"></td>
                        </tr>

                        --No se si se va a quedar alguno de estos

                        <tr>
                                <td id="cedula_ocult_td">Cédula Profesional:</td>
                                <td><input type="text" name="cedula" id="cedula_ocult_input" onchange="validarCedula(this)"></td>
                        </tr>
                        -->
                        <tr>
                            <td><input id="boton" type="submit" value="Guardar Cambios"></td>
                            <td ><input type="hidden" value="<%=id%>" name="id"></td>
                        </tr>
                </table>
            </form>
            <br>
            <form method="post" action="eliminarUser">
                <table>
                    <tr><td></td>
                        <td ><input type="hidden" value="<%=id%>" name="id"></td>
                        <td><input type="submit"  value="Eliminar cuenta" class="btn" ></td>
                    </tr>
                </table>
            </form>
        </div>
    </body>
</html>
