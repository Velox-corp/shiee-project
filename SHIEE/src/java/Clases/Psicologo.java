package Clases;


import java.sql.*;
import java.util.ArrayList;

public class Psicologo {
    
    private int id_psi, cedula_psi;
    private String nombre_psi, appat_psi, apmat_psi, fecha_nac_psi, usuario_psi, contra_psi; 
    Connection con = null;
    ResultSet rs = null;
    PreparedStatement pr = null;
    String q = "";

    public Psicologo(){}
    
    public Psicologo(int id,String nombre, String appat, String apmat, String fecha_nac, String usuario, String contra){
        this.id_psi = id;
        this.nombre_psi = nombre;
        this.appat_psi = appat;
        this.apmat_psi = apmat;
        this.fecha_nac_psi = fecha_nac;
        this.usuario_psi = usuario;
        this.contra_psi = contra;
    }
    
    public boolean RegistrarPsicologo(String nombre,String appat, String apmat, String fecha_nac, int cedula, String usuario_pi, String contra_pi, String cont_veri){
        boolean registro = false;
        try{
            //Primero verificar las entradas, pero de momento solo podré el de la contraseña
            if(!contra_pi.equals(cont_veri)){
                System.out.println("Contraseñas diferentes");
                return false;
            }
           con = Conexion.getConnection();
           //Por el momento usare un satatement por que no se si esto se pueda hacer con un preparedStatement
           
           q = "INSERT INTO Psicologo ( Nombre_psi, Appat_psi, Apmat_psi, fechaNac_psi, cedula_psi, Usuario_psi, Contra_pi ) "
                   + "values ( ?, ?, ?, ?, ?, ?, ? )";
           pr = con.prepareStatement(q);
           
           pr.setString(1,nombre);
           pr.setString(2, appat);
           pr.setString(3, apmat);
           pr.setString(4, fecha_nac);
           pr.setInt(5, cedula);
           pr.setString(6, usuario_pi);
           pr.setString(7, contra_pi);
           if(pr.executeUpdate()==1){
               registro=true;
           }
           
        }catch(SQLException sqlex){
            sqlex.printStackTrace();
            sqlex.getMessage();
            System.out.println("ERROR SQL");
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
    
    public Psicologo inicioSesionPsicologo(String nombre_usuario, String contraseña){
        Psicologo psi = null;
        try{
            con = Conexion.getConnection();
            q = "SELECT * FROM Psicologo WHERE Usuario_psi = ? AND Contra_pi = ?";
            
            pr = con.prepareStatement(q);
            
            pr.setString(1, nombre_usuario);
            pr.setString(2, contraseña);
            
            rs = pr.executeQuery();
            
            while(rs.next()){
                psi = new Psicologo();
                psi.setId_psi(rs.getInt("id_psicologo"));
                psi.setNombre_psi(rs.getString("Nombre_psi"));
                psi.setAppat_psi(rs.getString("Appat_psi"));
                psi.setApmat_psi(rs.getString("Apmat_psi"));
                psi.setFecha_nac_psi(rs.getString("fechaNac_psi"));
                psi.setCedula_psi(rs.getInt("cedula_psi"));
                psi.setUsuario_psi(rs.getString("Usuario_psi"));
                psi.setContra_psi(rs.getString("Contra_pi"));
                break;
            }
        }catch(SQLException sqlex){
            System.out.println("Error SQL lo hace nulo");
            sqlex.printStackTrace();
            sqlex.getMessage();
            psi = null;
        }catch (ClassNotFoundException cnfex) {
            System.out.println("Error en la clase lo hace nulo");
            cnfex.getMessage();
            cnfex.printStackTrace();
            psi= null;
        }finally{
            try{
                con.close();
                pr.close();
                rs.close();   
                if(psi==null){
                    System.out.println("Si no te he dicho nada pero me estas leyendo, significa que no encontre tu usuario");
                }
            }catch(SQLException sqle){
                sqle.printStackTrace();
            }
            return psi;
        }
    }
    
    public static boolean esPsicologo(Object o){
        boolean esPsi;
        try{
            Psicologo p = (Psicologo)o;
            esPsi = true;
        }catch(Exception ex){
            esPsi = false;
        }
        return esPsi;
    }
    
    public ArrayList<Psicologo> obtenerTodosPsicologos(){
        ArrayList<Psicologo> listaPsicologos = new ArrayList<>();
        try{
            con = Conexion.getConnection();
            q = "SELECT * FROM Psicologo";
            pr = con.prepareStatement(q);
            rs = pr.executeQuery();
            while(rs.next()){
                Psicologo psi = new Psicologo();
                psi.setId_psi(rs.getInt("id_psicologo"));
                psi.setNombre_psi(rs.getString("Nombre_psi"));
                psi.setAppat_psi(rs.getString("Appat_psi"));
                psi.setApmat_psi(rs.getString("Apmat_psi"));
                psi.setFecha_nac_psi(rs.getString("fechaNac_psi"));
                psi.setCedula_psi(rs.getInt("cedula_psi"));
                psi.setUsuario_psi(rs.getString("Usuario_psi"));
                psi.setContra_psi(rs.getString("Contra_pi"));
                listaPsicologos.add(psi);
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
            return listaPsicologos;
        }
        
    }
    
    public boolean editarPsicologo(Psicologo p){
        boolean actualizado = false;
        try{
            con = Conexion.getConnection();
            q = "UPDATE Psicologo SET "
                    +"Nombre_psi = ? "
                    + "Appat_psi = ? "
                    + "Apmat_psi = ? "
                    + "fechaNac_psi = ? "
                    + "Usuario_psi = ? "
                    + "Contra_pi = ? "
                    + "WHERE id_psicologo = ?";
            pr = con.prepareStatement(q);
            pr.setString(1, p.getNombre_psi());
            pr.setString(2, p.getAppat_psi());
            pr.setString(3, p.getApmat_psi());
            pr.setString(4, p.getFecha_nac_psi());
            pr.setString(5, p.getUsuario_psi());
            pr.setInt(6, p.getId_psi());
            
            if(pr.executeUpdate()==1){
                actualizado=true;
            }
        }catch(SQLException sqlex){
            System.out.println("Tu sql hace que sea nulo");
            sqlex.printStackTrace();
            sqlex.getMessage();
            actualizado = false;
        }catch (ClassNotFoundException cnfex) {
            cnfex.getMessage();
            cnfex.printStackTrace();
            System.out.println("El driver hace que sea nulo");
            actualizado = false;
        }finally{
            try{
                con.close();
                pr.close();
            }catch(SQLException sqle){
                sqle.printStackTrace();
            }
            return actualizado;
        }
    }
    
    public int getId_psi() {
        return id_psi;
    }

    public void setId_psi(int id_psi) {
        this.id_psi = id_psi;
    }

    public int getCedula_psi() {
        return cedula_psi;
    }

    public void setCedula_psi(int cedula_psi) {
        this.cedula_psi = cedula_psi;
    }

    public String getNombre_psi() {
        return nombre_psi;
    }

    public void setNombre_psi(String nombre_psi) {
        this.nombre_psi = nombre_psi;
    }

    public String getAppat_psi() {
        return appat_psi;
    }

    public void setAppat_psi(String appat_psi) {
        this.appat_psi = appat_psi;
    }

    public String getApmat_psi() {
        return apmat_psi;
    }

    public void setApmat_psi(String apmat_psi) {
        this.apmat_psi = apmat_psi;
    }

    public String getFecha_nac_psi() {
        return fecha_nac_psi;
    }

    public void setFecha_nac_psi(String fecha_nac_psi) {
        this.fecha_nac_psi = fecha_nac_psi;
    }

    public String getUsuario_psi() {
        return usuario_psi;
    }

    public void setUsuario_psi(String usuario_psi) {
        this.usuario_psi = usuario_psi;
    }

    public String getContra_psi() {
        return contra_psi;
    }

    public void setContra_psi(String contra_psi) {
        this.contra_psi = contra_psi;
    }
    
    
}
