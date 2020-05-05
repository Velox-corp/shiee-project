/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author maste
 */

import java.sql.*;
import java.util.*;

public class Paciente {
   
    private int id_pac, id_pac_psi;
    private String nombre_pac, appat_pac, apmat_pac, fecha_nac_pac, usuario_pac, contra_pac, resTest; 
    Connection con = null;
    ResultSet rs = null;
    PreparedStatement pr = null;
    String q = "";
    
    public Paciente(){
    }
    
    public boolean RegistrarPaciente(String nombre,String appat, String apmat, String fecha_nac, String usuario_pac, String contra_pac, String cont_veri){
        boolean registro = false;
        try{
            //Primero verificar las entradas, pero de momento solo podré el de la contraseña
            if(!contra_pac.equals(cont_veri)){
                System.out.println("Contraseñas diferentes");
                return false;
            }
            System.out.println(contra_pac);
           con = Conexion.getConnection();
           q = "INSERT INTO Paciente ( Nombre_pac, Appat_pac, Apmat_pac, fechaNac_pac,Contra_pac, Usuario_pac ) "
                   + "values ( ?, ?, ?, ?, ?, ? )";
           pr = con.prepareStatement(q);
           pr.setString(1,nombre);
           pr.setString(2, appat);
           pr.setString(3, apmat);
           pr.setString(4, fecha_nac);
           pr.setString(5, contra_pac);
           pr.setString(6, usuario_pac);
           
           if(pr.executeUpdate()==1){
               registro = true;
           }
           
        }catch(SQLException sqlex){
            sqlex.printStackTrace();
            sqlex.getMessage();
            registro = false;
        }catch (ClassNotFoundException cnfex) {
            cnfex.getMessage();
            cnfex.printStackTrace();
            registro= false;
        }finally{
            try{
                con.close();
                pr.close();            
            }catch(SQLException sqle){
                sqle.printStackTrace();
            }
            return registro;
        }
    }
    
    public Paciente inicioSesionPaciente(String nombre_usuario, String contraseña){
        Paciente p = null;
        try{
            con = Conexion.getConnection();
            q = "SELECT * FROM Paciente WHERE Usuario_pac = ? AND Contra_pac = ?";
            pr = con.prepareStatement(q);
            
            pr.setString(1, nombre_usuario);
            pr.setString(2, contraseña);
            
            rs = pr.executeQuery();
            
            while(rs.next()){
                System.out.println("Encontro un paciente");
                p = new Paciente();
                p.setId_pac(rs.getInt("id_pac"));
                p.setNombre_pac(rs.getString("Nombre_pac"));
                p.setAppat_pac(rs.getString("Appat_pac"));
                p.setApmat_pac(rs.getString("Apmat_pac"));
                p.setFecha_nac_pac(rs.getString("fechaNac_pac"));
                p.setId_pac_psi(rs.getInt("id_psicologo"));
                p.setResTest(rs.getString("resTest"));
                p.setUsuario_pac(rs.getString("Usuario_pac"));
                p.setContra_pac("Contra_pac");
                break;
            }
        }catch(SQLException sqlex){
            System.out.println("Tu sql hace que sea nulo");
            sqlex.printStackTrace();
            sqlex.getMessage();
            p = null;
        }catch (ClassNotFoundException cnfex) {
            cnfex.getMessage();
            cnfex.printStackTrace();
            System.out.println("El driver hace que sea nulo");
            p= null;
        }finally{
            try{
                con.close();
                pr.close();
                rs.close();
                System.out.println(p +" ... Si dice nulo, tons no encotre tu usuario si es que no te dije antes por que fue");
            }catch(SQLException sqle){
                sqle.printStackTrace();
            }if(p==null){
                System.out.println("Ten, Te regreso un nulo");
            }
            return p;
        }
    }

    public String getResTest() {
        return resTest;
    }

    public void setResTest(String resTest) {
        this.resTest = resTest;
    }

    public String getUsuario_pac() {
        return usuario_pac;
    }

    public void setUsuario_pac(String usuario_pac) {
        this.usuario_pac = usuario_pac;
    }

    public String getContra_pac() {
        return contra_pac;
    }

    public void setContra_pac(String contra_pac) {
        this.contra_pac = contra_pac;
    }
    
    public int getId_pac() {
        return id_pac;
    }

    public void setId_pac(int id_pac) {
        this.id_pac = id_pac;
    }

    public int getId_pac_psi() {
        return id_pac_psi;
    }

    public void setId_pac_psi(int id_pac_psi) {
        this.id_pac_psi = id_pac_psi;
    }

    public String getNombre_pac() {
        return nombre_pac;
    }

    public void setNombre_pac(String nombre_pac) {
        this.nombre_pac = nombre_pac;
    }

    public String getAppat_pac() {
        return appat_pac;
    }

    public void setAppat_pac(String appat_pac) {
        this.appat_pac = appat_pac;
    }

    public String getApmat_pac() {
        return apmat_pac;
    }

    public void setApmat_pac(String apmat_pac) {
        this.apmat_pac = apmat_pac;
    }

    public String getFecha_nac_pac() {
        return fecha_nac_pac;
    }

    public void setFecha_nac_pac(String fecha_nac_pac) {
        this.fecha_nac_pac = fecha_nac_pac;
    }
    
}
