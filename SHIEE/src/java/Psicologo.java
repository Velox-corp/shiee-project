
import java.sql.*;

public class Psicologo {
    
    private int id_psi, cedula_psi;
    private String nombre_psi, appat_psi, apmat_psi, fecha_nac_psi, usuario_psi, contra_psi; 
    Connection con = null;
    ResultSet rs = null;
    PreparedStatement pr = null;
    String q = "";

    public Psicologo(){}
    
    public boolean RegistrarPsicologo(String nombre,String appat, String apmat, String fecha_nac, int cedula, String usuario_pi, String contra_pi, String cont_veri){
        boolean registro = false;
        System.out.println("InicioRegistro");
        try{
            //Primero verificar las entradas, pero de momento solo podré el de la contraseña
            if(!contra_psi.equals(cont_veri)){
                System.out.println("Contraseñas diferentes");
                return false;
            }
            System.out.println("Un saludo");
           con = Conexion.getConnection();
           //Por el momento usare un satatement por que no se si esto se pueda hacer con un preparedStatement
           
           q = "INSERT INTO Psicologo ( Nombre_psi, Appat_psi, Apmat_psi, fechaNac_psi, cedula_psi, Usuario_pac, Contra_pi ) "
                   + "values ( ?, ?, ?, ?, ?, ?, ? )";
           pr = con.prepareStatement(q);
           
           pr.setString(1,nombre);
           pr.setString(2, appat);
           pr.setString(3, apmat);
           pr.setString(4, fecha_nac);
           pr.setInt(5, cedula);
           pr.setString(6, usuario_pi);
           pr.setString(7, contra_pi);
           System.out.println(q);
           if(pr.executeUpdate()==1){
               System.out.println("C ha registrado");
               registro=true;
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
    
    public Psicologo inicioSesionPsicologo(String nombre_usuario, String contraseña){
        Psicologo psi = null;
        try{
            con = Conexion.getConnection();
            q = "SELECT * FROM Psicologo WHERE Usuario_pac = ? AND Contra_pi = ?";
            
            pr = con.prepareStatement(q);
            
            pr.setString(1, nombre_usuario);
            pr.setString(2, contraseña);
            
            rs = pr.executeQuery();
            
            while(rs.next()){
                System.out.println("Psicologo encontrado");
                psi = new Psicologo();
                psi.setId_psi(rs.getInt("id_psi"));
                psi.setNombre_psi(rs.getString("Nombre_psi"));
                psi.setAppat_psi(rs.getString("Appat_psi"));
                psi.setApmat_psi(rs.getString("Apmat_psi"));
                psi.setFecha_nac_psi(rs.getString("fechaNac_psi"));
                psi.setCedula_psi(rs.getInt("cedula_psi"));
                psi.setUsuario_psi(rs.getString("Usuario_pac"));
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
