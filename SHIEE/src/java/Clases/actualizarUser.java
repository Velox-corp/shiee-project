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
public class actualizarUser extends HttpServlet {

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
            HttpSession sesionUser = request.getSession();
            String nombre = request.getParameter("nombre");
            String appat = request.getParameter("appat");
            String apmat = request.getParameter("apmat");
            String fecha_nac = request.getParameter("fechaNac");
            String user = request.getParameter("nombreUsuario");
            String pass = request.getParameter("contraseña");
            boolean esPac = Paciente.esPaciente(sesionUser.getAttribute("usuario"));
            boolean actualizoUser = false;
            if(esPac){
                Paciente pold =  new Paciente();
                int id = ((Paciente)sesionUser.getAttribute("usuario")).getId_pac();
                Paciente pnew = new Paciente(id,nombre, appat, apmat, fecha_nac, user, pass);
                if(pold.editarPaciente(pnew)){
                    actualizoUser = true;
                    response.sendRedirect("sesion.jsp");
                }
                
            }
            boolean esPsi = Psicologo.esPsicologo(sesionUser.getAttribute("usuario"));
            if(esPsi){
                Psicologo pold = new Psicologo();
                int id = ((Psicologo)sesionUser.getAttribute("usuario")).getId_psi();
                Psicologo pnew = new Psicologo(id, nombre, appat, apmat, fecha_nac, user, pass);
                if(pold.editarPsicologo(pnew)){
                    actualizoUser = true;
                    response.sendRedirect("sesion.jsp");
                }
                       
            }
            
            if(!actualizoUser){
                response.sendRedirect("error.jsp");
            }
            
            
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet actualizarUser</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet actualizarUser at " + request.getContextPath() + "</h1>");
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
