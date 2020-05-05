/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author maste
 */
public class SInicioSesion extends HttpServlet {
  


    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
   
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            
            String username = request.getParameter("usuario");
            String password = request.getParameter("contraseña");
            Paciente i1 = null;
            Psicologo i2 = null;
            i1 = i1.inicioSesionPaciente(username,password); //Si es un paciente
            System.out.println("Ver como paciente ocurrio");
            i2 = i2.inicioSesionPsicologo(username, password); //O un psicologo
            System.out.println("ver como psicologo ocurrio");
            //No es niguno de los 2
            if(i1== null && i2 == null){
                System.out.println("No existe");
                response.sendRedirect("InicioSesion.jsp");
            //Es paciente
            }else if(i1 != null && i2 == null){
                System.out.println("Es un estudiante");
                HttpSession sesion = request.getSession(true);
                sesion.setAttribute("usuario", i1);
                response.sendRedirect("BitácoraInicio.html");
            //Es psicologo
            }else if(i1 == null && i2 != null){
                System.out.println("Es un psicologo");
                response.sendRedirect("index.html");
                HttpSession sesion = request.getSession(true);
                sesion.setAttribute("usuario", i2);
            }else{
                //Meter página de errores
            }
            
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Error Inicio de sesión</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet SInicioSesion at Peto</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Este servel obtiene el usuarioy contraseña enviado, busca el usario entre los tipos de usuario y redirecciona a la página indicada a aprtir del tipo de usuario";
    }// </editor-fold>

}
