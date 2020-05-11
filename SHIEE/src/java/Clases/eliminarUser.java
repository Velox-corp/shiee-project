/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Clases;

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
public class eliminarUser extends HttpServlet {

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
        HttpSession sesionUserBorrar = request.getSession();
        
        int id = 0;
        try{
            id = Integer.parseInt(request.getParameter("id"));
        }catch(Exception e){
            System.out.println("El id fallo en obtenerse");
        }
        boolean borroUser = false;
                
        if(Paciente.esPaciente(sesionUserBorrar.getAttribute("usuario"))){
               Paciente pBorrar = new Paciente();
               borroUser = pBorrar.borrarPaciente(id);
            }
            
            if(Psicologo.esPsicologo(sesionUserBorrar.getAttribute("usuario"))){
                Psicologo pborrar = new Psicologo();
                borroUser = pborrar.borrarPsicologo(id);
                       
            }
            
            if(borroUser){
                System.out.println("Se borro el usaurio, pero en la sesión siguen sus datos, así que a cerrarla");
                response.sendRedirect("cerrarSesion");
            }else{
                response.sendRedirect("error.jsp");
            }
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet eliminarUser</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet eliminarUser at " + request.getContextPath() + "</h1>");
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
        return "En este Servlet se obtiene el id del usuario, el cual se va a usar para identificarlo y borrarlo de la bd";
    }// </editor-fold>

}
