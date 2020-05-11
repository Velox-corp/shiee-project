/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Clases;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

/**
 *
 * @author familia
 */
//@WebServlet(name = "editarRegistro", urlPatterns = {"/editarRegistro"})
@WebServlet("/editarRegistro")
@MultipartConfig(maxFileSize = 16177215)    // upload file's size up to 16MB
public class editarRegistro extends HttpServlet {

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
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet editarRegistro</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet editarRegistro at " + request.getContextPath() + "</h1>");
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
        try {
            System.out.println(request.getParameter("id"));
            int id_registro = Integer.parseInt(request.getParameter("id"));
            Part img = request.getPart("image");
            String text = request.getParameter("text-area");
            Registro r = new Registro();
            r.modifyRebyId(id_registro, img, text);
            System.out.println("Todo esta ok");            
        } catch (Exception e) {
            System.out.println(e.getMessage());
            System.out.println(e.getLocalizedMessage());
            e.printStackTrace();
        }finally{
            response.sendRedirect("bitacora_editar.jsp");
        }
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
                try {
                    int id_registro = Integer.parseInt(request.getParameter("id"));
                    Part img = request.getPart("image");
                    String text = request.getParameter("text-area");
                    Registro r = new Registro();
                    r.modifyRebyId(id_registro, img, text);
                    System.out.println("Todo esta ok");            
                } catch (Exception e) {
                    System.out.println(e.getMessage());
                    System.out.println(e.getLocalizedMessage());
                    e.printStackTrace();
                }finally{
                    response.sendRedirect("bitacora_editar.jsp");
                }
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
