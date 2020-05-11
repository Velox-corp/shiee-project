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
import javax.servlet.http.HttpSession;

/**
 *
 * @author maste
 */
public class AlmacenTest extends HttpServlet {

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
            HttpSession verificador_sesion = request.getSession();
            if(verificador_sesion.getAttribute("usuario")==null){
                response.sendRedirect("SesionRequerida.jsp");
            }else{
                try{
                    Paciente pac = (Paciente)verificador_sesion.getAttribute("usuario");
                    
                    Paciente obj = new Paciente();
                    if(pac!=null){
                        //response.sendRedirect("cuestionario.jsp");
                        int numerorandom = 0;
                        regTest obji = new regTest();
                        int id_user = obj.getId_pac();
                        int a = obji.VerificaRegTest(numerorandom, id_user);
                        if(a == 1){
                            response.sendRedirect("Testregistrado.jsp");
                        } 
                            
                            int importante1=0, importante2=0;
                            //me da el id test
                            int ab = obji.ObtenIdtest(importante1);
                            int ac = obji.ObtenerImpor(importante2);
                            
                            String p1_s1, p1_s2, p2_s2, p3_s2, p4_s2, p5_s2, p6_s2, p7_s2, p8_s2, p9_s2, p10_s2, p11_s2, p12_s2, p13_s2, p14_s2; 
                            String p1_s3, p2_s3, p3_s3, p4_s3, p5_s3, p6_s3, p7_s3, p8_s3, p9_s3, p10_s3, p11_s3, p12_s3, p13_s3, p14_s3, p15_s3, p16_s3, p17_s3, p18_s3;
                            String p1_s4, p2_s4, p3_s4, p4_s4, p5_s4, p6_s4, p7_s4, p8_s4;
                            String p2_s1, p15_s2, p19_s3, p9_s4;
                            
                            p1_s1 = request.getParameter("s1_p1");
                            p2_s1 = request.getParameter("s1_p2_c1");
                            obji.InsertSec1(p1_s1, p2_s1, ab);
                            
                            p1_s2 = request.getParameter("s2_p1");
                            p2_s2 = request.getParameter("s2_p2");
                            p3_s2 = request.getParameter("s2_p3");
                            p4_s2 = request.getParameter("s2_p4");
                            p5_s2 = request.getParameter("s2_p5");
                            p6_s2 = request.getParameter("s2_p6");
                            p7_s2 = request.getParameter("s2_p7");
                            p8_s2 = request.getParameter("s2_p8");
                            p9_s2 = request.getParameter("s2_p9");
                            p10_s2 = request.getParameter("s2_p10");
                            p11_s2 = request.getParameter("s2_p11");
                            p12_s2 = request.getParameter("s2_p12");
                            p13_s2 = request.getParameter("s2_p13");
                            p14_s2 = request.getParameter("s2_p14");
                            p15_s2 = request.getParameter("s2_p15_c1");
                            obji.InsertSec2(p1_s2, p2_s2, p3_s2, p4_s2, p5_s2, p6_s2, p7_s2, p8_s2, p9_s2, p10_s2, p11_s2, p12_s2, p13_s2, p14_s2, p15_s2, ab);
                            
                            p1_s3 = request.getParameter("s3_p1");
                            p2_s3 = request.getParameter("s3_p2");
                            p3_s3 = request.getParameter("s3_p3");
                            p4_s3 = request.getParameter("s3_p4");
                            p5_s3 = request.getParameter("s3_p5");
                            p6_s3 = request.getParameter("s3_p6");
                            p7_s3 = request.getParameter("s3_p7");
                            p8_s3 = request.getParameter("s3_p8");
                            p9_s3 = request.getParameter("s3_p9");
                            p10_s3 = request.getParameter("s3_p10");
                            p11_s3 = request.getParameter("s3_p11");
                            p12_s3 = request.getParameter("s3_p12");
                            p13_s3 = request.getParameter("s3_p13");
                            p14_s3 = request.getParameter("s3_p14");
                            p15_s3 = request.getParameter("s3_p15");
                            p16_s3 = request.getParameter("s3_p16");
                            p17_s3 = request.getParameter("s3_p17");
                            p18_s3 = request.getParameter("s3_p18");
                            p19_s3 = request.getParameter("s3_p19_c1");
                            obji.InsertSec3(p1_s3, p2_s3, p3_s3, p4_s3, p5_s3, p6_s3, p7_s3, p8_s3, p9_s3, p10_s3, p11_s3, p12_s3, p13_s3, p14_s3, p15_s3, p16_s3, p17_s3, p18_s3, p19_s3, ab);
                            
                            p1_s4 = request.getParameter("s4_p1");
                            p2_s4 = request.getParameter("s4_p2");
                            p3_s4 = request.getParameter("s4_p3");
                            p4_s4 = request.getParameter("s4_p4");
                            p5_s4 = request.getParameter("s4_p5");
                            p6_s4 = request.getParameter("s4_p6");
                            p7_s4 = request.getParameter("s4_p7");
                            p8_s4 = request.getParameter("s4_p8");
                            p9_s4 = request.getParameter("s4_p9");
                            obji.InsertSec4(p1_s4, p2_s4, p3_s4, p4_s4, p5_s4, p6_s4, p7_s4, p8_s4, p9_s4, ab);
                            response.sendRedirect("resultados.jsp");
                        
                    }
                    
                }catch(Exception ex){
                    System.out.println("Paciente no es");
                    ex.printStackTrace();
                }
            }
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet VerificarSesion</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet VerificarSesion at " + request.getContextPath() + "</h1>");
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
