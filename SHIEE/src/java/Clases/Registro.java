/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Clases;

import java.sql.*;
import java.io.*;
import java.util.ArrayList;
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
            this.texto = texto;
            con = Conexion.getConnection();
            if (this.img != null) {
                // prints out some information for debugging
                System.out.println(img.getName());
                System.out.println(img.getSize());
                System.out.println(img.getContentType());
                //Guardar el regristro en B. Al final si se puede guardar una imagen en una BD :^)
                String sql = "INSERT INTO registros (fecha_registro, img, texto, id_paciente) values (?, ?, ?, ?)";
                this.pr = con.prepareStatement(sql);
                this.pr.setString(1, this.fecha_regristro);
                // Esta es la parte que sirve para introducir una imagen a una BD
                this.pr.setBlob(2, this.img);
                this.pr.setString(3, this.texto);
                this.pr.setInt(4, this.id_paciente);   
            }else if("".equals(this.texto)){
                String sql = "INSERT INTO registros (fecha_registro, img, texto, id_paciente) values (?, ?, ?, ?)";
                this.pr = con.prepareStatement(sql);
                this.pr.setString(1, this.fecha_regristro);
                // Esta es la parte que sirve para introducir una imagen a una BD
                this.pr.setBlob(2, this.img);
                this.pr.setString(3, this.texto);
                this.pr.setInt(4, this.id_paciente);
            }else{
                System.out.println("No se introdujeron valores valido");
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

    public ArrayList<Registro> obtenerListaReUsuario(int id_Paciente){
        ArrayList<Registro> registros = new ArrayList<Registro>();
        try {
            this.id_paciente = id_Paciente;
            con = Conexion.getConnection();
            q = "SELECT * FROM Registros WHERE id_Paciente = ?";
            pr = con.prepareStatement(q);
            pr.setInt(1, this.id_paciente);
            rs = pr.executeQuery();
            while(rs.next()){
                Registro r = new Registro();
                r.setId_paciente(rs.getInt("id_paciente"));
                r.setId_regristro(rs.getInt("id_regristro"));
                r.setImg(rs.getBinaryStream("img"));
                r.setFecha_regristro(rs.getString("fecha_registro"));
                r.setTexto(rs.getString("texto"));
                registros.add(r);
            }
        }catch(SQLException sqlex){
            System.out.println("Tu sql hace que sea nulo");
            sqlex.printStackTrace();
            sqlex.getMessage();
        }catch (ClassNotFoundException cnfex) {
            cnfex.getMessage();
            cnfex.printStackTrace();
            System.out.println("El driver hace que sea nulo");
        }finally{
            try{
                con.close();
                pr.close();
                rs.close();
            }catch(SQLException sqle){
                sqle.printStackTrace();
            }
            return registros;
        }
    }
    
    public InputStream getImgById(int id_registro){
        try {
            this.id_regristro = id_registro;
            con = Conexion.getConnection();
            q = "SELECT * FROM Registros WHERE id_regristro = ?";
            pr = con.prepareStatement(q);
            pr.setInt(1, this.id_regristro);
            rs = pr.executeQuery();
            if(rs.next()){
                return rs.getBinaryStream("img");
            }else{
                return null;
            }
        } catch (Exception e) {
            e.printStackTrace();
            System.out.println(e.getMessage());
            return null;
        }
    }
    
    public void deleteRebyId(int id_registro){
         try {
            this.id_regristro = id_registro;
            con = Conexion.getConnection();
            q = "DELETE FROM Registros WHERE id_regristro = ?";
            pr = con.prepareStatement(q);
            pr.setInt(1, this.id_regristro);
            pr.execute();
        } catch (Exception e) {
            e.printStackTrace();
            System.out.println(e.getMessage());
        }
    }
    
    public Registro getRebyId(int id_registro){
        try {
            this.id_regristro = id_registro;
            con = Conexion.getConnection();
            q = "SELECT * FROM Registros WHERE id_regristro = ?";
            pr = con.prepareStatement(q);
            pr.setInt(1, this.id_regristro);
            rs = pr.executeQuery();
            if(rs.next()){
                return (Registro) rs;
            }else{
                return null;
            }
        } catch (Exception e) {
            e.printStackTrace();
            System.out.println(e.getMessage());
            return null;
        }
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
