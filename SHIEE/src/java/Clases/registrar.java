package Clases;

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
import java.util.*;
/**
 *
 * @author maste
 */
public class registrar extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            String nombre, appat, apmat,fecha_nac, usuario, contraseña, contraseña_veri, tipo_user;
            nombre = request.getParameter("nombre");
            appat = request.getParameter("appat");
            apmat = request.getParameter("apmat");
            fecha_nac = request.getParameter("fechaNac");
            usuario = request.getParameter("nombreUsuario");
            contraseña = request.getParameter("password");
            contraseña_veri = request.getParameter("password_verificar");
            boolean estado = false;
            tipo_user = request.getParameter("tipoUser");
            System.out.println(tipo_user);
            switch(tipo_user){
                case "Estudiante":
                    Paciente p = new Paciente();
                    estado = p.RegistrarPaciente(nombre, appat, apmat, fecha_nac, usuario, contraseña, contraseña_veri);
                    break;
                case "Psicologo":
                    Psicologo psi = new Psicologo();
                    int cedula = Integer.parseInt(request.getParameter("cedula"));
                    System.out.println(cedula);
                    estado = psi.RegistrarPsicologo(nombre, appat, apmat, fecha_nac, cedula, usuario, contraseña, contraseña_veri);
                    break;
            }            
            if(estado){
                System.out.println("C registró");
                response.sendRedirect("InicioSesion.jsp");
            }else{
                System.out.println("No se registro"); 
                response.sendRedirect("Registro.jsp");
            }
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet registrar</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet registrar at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }

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
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
