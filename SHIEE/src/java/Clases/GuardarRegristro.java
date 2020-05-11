package Clases;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */


import java.io.PrintWriter;
import java.io.IOException;
import java.util.Calendar;
import java.util.logging.Level;
import java.util.logging.Logger;
 
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;

/**
 *
 * @author Luis Fernando Tenorio Aspiros
 */
@WebServlet("/GuardarRegristro")
@MultipartConfig(maxFileSize = 16177215)    // upload file's size up to 16MB
public class GuardarRegristro extends HttpServlet {

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
            out.println("<title>Servlet GuardarRegristro</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Se ha realizado un su regristor con exito</h1>");
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
        try {
            /*
            HttpSession sesionOk = request.getSession();
            if(sesionOk.getAttribute("usuario")==null){
                Paciente p = (Paciente) sesionOk.getAttribute("usuario");
                Part img = request.getPart("image");
                String text = request.getParameter("textarea");
                Calendar c1 = Calendar.getInstance();
                String Date = Integer.toString(c1.get(Calendar.YEAR)) + "-" 
                        + Integer.toString(c1.get(Calendar.MONTH)) + "-" 
                        + Integer.toString(c1.get(Calendar.DATE));
                Registro r = new Registro();
                r.BuildRegrsitro(img, text, Date, p.getId_pac());                
            }else{
                System.out.println("Hijole, alguien se metio sin regirstrarse");
            }
            */
            HttpSession sesionOk = request.getSession();
            Paciente p = (Paciente)sesionOk.getAttribute("usuario");
            Part img = request.getPart("image");
            String text = request.getParameter("textarea");
            Calendar c1 = Calendar.getInstance();
            String Date = Integer.toString(c1.get(Calendar.YEAR)) + "-" 
                    + Integer.toString(c1.get(Calendar.MONTH)) + "-" 
                    + Integer.toString(c1.get(Calendar.DATE));
            Registro r = new Registro();
            r.BuildRegrsitro(img, text, Date, p.getId_pac());
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(GuardarRegristro.class.getName()).log(Level.SEVERE, null, ex);
        }
        
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
