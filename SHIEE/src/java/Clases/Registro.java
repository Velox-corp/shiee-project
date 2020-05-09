/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Clases;

import java.sql.*;
import java.io.*;
import javax.servlet.http.Part;
/**
 *
 * @author Luis Fernando Tenorio Aspiros
 */
public class Registro {
    private Connection con = null;
    private ResultSet rs = null;
    private PreparedStatement pr = null;
    private String q = "";
    
    private int id_regristro;
    private int id_paciente;
    private String texto; 
    private InputStream img;
    private String fecha_regristro;
    
    public boolean BuildRegrsitro(Part img, String texto, String fecha, int id_Paciente) throws IOException, ClassNotFoundException{
        boolean b = false;
        try {
            this.id_paciente = id_Paciente;
            this.img = img.getInputStream();
            this.fecha_regristro = fecha;
            con = Conexion.getConnection();
            if (this.img != null) {
                // prints out some information for debugging
                System.out.println(img.getName());
                System.out.println(img.getSize());
                System.out.println(img.getContentType());
                //Guardar el regristro en B. Al final si se puede guardar una imagen en una BD :^)
                String sql = "INSERT INTO registros (fecha_registro, img, id_paciente) values (?, ?, ?)";
                this.pr = con.prepareStatement(sql);
                this.pr.setString(1, this.fecha_regristro);
                // Esta es la parte que sirve para introducir una imagen a una BD
                this.pr.setBlob(2, this.img);
                this.pr.setInt(3, this.id_paciente);
                
            }else if(img == null && texto != null && "".equals(texto)){
                String sql = "INSERT INTO registros (fecha_registro, texto, id_paciente) values (?, ?, ?)";
                PreparedStatement statement = con.prepareStatement(sql);
                statement.setString(1, fecha);
                // Esta es la parte que sirve para introducir una imagen a una BD
                statement.setString(2, this.texto);
                statement.setInt(3, this.id_paciente);
            }
            
            int row = this.pr.executeUpdate();
            if (row > 0) {
                System.out.println("Si se pudo ingresar algo");
                b = true;
            }else{
                System.out.println("Chale, ya valio no metio nada a la DB");
            }
        } catch (IOException | SQLException e) {
            System.out.println("No pudo regristrar ni una imagen ni un texto que sad");
            System.out.println(e.getMessage());
            e.printStackTrace();
        }finally {
            if (this.con != null) {
                //Ya hasta el final cierra las conexiones
                try {
                    this.con.close();
                } catch (SQLException ex) {
                    ex.printStackTrace();
                }
            }
        }
        
        return b;
    }

    public Connection getCon() {
        return con;
    }

    public void setCon(Connection con) {
        this.con = con;
    }

    public ResultSet getRs() {
        return rs;
    }

    public void setRs(ResultSet rs) {
        this.rs = rs;
    }

    public PreparedStatement getPr() {
        return pr;
    }

    public void setPr(PreparedStatement pr) {
        this.pr = pr;
    }

    public String getQ() {
        return q;
    }

    public void setQ(String q) {
        this.q = q;
    }

    public int getId_regristro() {
        return id_regristro;
    }

    public void setId_regristro(int id_regristro) {
        this.id_regristro = id_regristro;
    }

    public int getId_paciente() {
        return id_paciente;
    }

    public void setId_paciente(int id_paciente) {
        this.id_paciente = id_paciente;
    }

    public String getTexto() {
        return texto;
    }

    public void setTexto(String texto) {
        this.texto = texto;
    }

    public InputStream getImg() {
        return img;
    }

    public void setImg(InputStream img) {
        this.img = img;
    }

    public String getFecha_regristro() {
        return fecha_regristro;
    }

    public void setFecha_regristro(String fecha_regristro) {
        this.fecha_regristro = fecha_regristro;
    }
    
}
