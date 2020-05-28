/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Clases;

/**
 *
 * @author uzias
 */
import java.sql.*;
import java.util.*;
public class regTest {
    //id's necesarios
    private int id_test, id_pac;
    private String p1_s1, p1_s2, p2_s2, p3_s2, p4_s2, p5_s2, p6_s2, p7_s2, p8_s2, p9_s2, p10_s2, p11_s2, p12_s2, p13_s2, p14_s2; 
    private String p1_s3, p2_s3, p3_s3, p4_s3, p5_s3, p6_s3, p7_s3, p8_s3, p9_s3, p10_s3, p11_s3, p12_s3, p13_s3, p14_s3, p15_s3, p16_s3, p17_s3, p18_s3;
    private String p1_s4, p2_s4, p3_s4, p4_s4, p5_s4, p6_s4, p7_s4, p8_s4;
    private String p2_s1, p15_s2, p19_s3, p9_s4;
    private String q = "";
    private Connection con = null;
    private ResultSet rs = null;
    private PreparedStatement pr = null;
    private int id=0;
    
    public regTest(){
        
    }

    public regTest(int id_test, int id_pac, String p1_s1, String p1_s2, String p2_s2, String p3_s2, String p4_s2, String p5_s2, String p6_s2, String p7_s2, String p8_s2, String p9_s2, String p10_s2, String p11_s2, String p12_s2, String p13_s2, String p14_s2, String p1_s3, String p2_s3, String p3_s3, String p4_s3, String p5_s3, String p6_s3, String p7_s3, String p8_s3, String p9_s3, String p10_s3, String p11_s3, String p12_s3, String p13_s3, String p14_s3, String p15_s3, String p16_s3, String p17_s3, String p18_s3, String p1_s4, String p2_s4, String p3_s4, String p5_s4, String p6_s4, String p7_s4, String p8_s4, String p2_s1, String p15_s2, String p19_s3, String p9_s4) {
        this.id_test = id_test;
        this.id_pac = id_pac;
        this.p1_s1 = p1_s1;
        this.p1_s2 = p1_s2;
        this.p2_s2 = p2_s2;
        this.p3_s2 = p3_s2;
        this.p4_s2 = p4_s2;
        this.p5_s2 = p5_s2;
        this.p6_s2 = p6_s2;
        this.p7_s2 = p7_s2;
        this.p8_s2 = p8_s2;
        this.p9_s2 = p9_s2;
        this.p10_s2 = p10_s2;
        this.p11_s2 = p11_s2;
        this.p12_s2 = p12_s2;
        this.p13_s2 = p13_s2;
        this.p14_s2 = p14_s2;
        this.p1_s3 = p1_s3;
        this.p2_s3 = p2_s3;
        this.p3_s3 = p3_s3;
        this.p4_s3 = p4_s3;
        this.p5_s3 = p5_s3;
        this.p6_s3 = p6_s3;
        this.p7_s3 = p7_s3;
        this.p8_s3 = p8_s3;
        this.p9_s3 = p9_s3;
        this.p10_s3 = p10_s3;
        this.p11_s3 = p11_s3;
        this.p12_s3 = p12_s3;
        this.p13_s3 = p13_s3;
        this.p14_s3 = p14_s3;
        this.p15_s3 = p15_s3;
        this.p16_s3 = p16_s3;
        this.p17_s3 = p17_s3;
        this.p18_s3 = p18_s3;
        this.p1_s4 = p1_s4;
        this.p2_s4 = p2_s4;
        this.p3_s4 = p3_s4;
        this.p5_s4 = p5_s4;
        this.p6_s4 = p6_s4;
        this.p7_s4 = p7_s4;
        this.p8_s4 = p8_s4;
        this.p2_s1 = p2_s1;
        this.p15_s2 = p15_s2;
        this.p19_s3 = p19_s3;
        this.p9_s4 = p9_s4;
    }

    
    //aqui en teoria obtengo el id del paciente con la clase de Paciente.java y genero un nuevo registro en la tabla Test para generar un Id_test
    public int ObtenerImpor(int importante){
        Paciente obj = new Paciente();
        id = obj.getId_pac();
        
        try {
            //recio
            con = Conexion.getConnection();
            q = "INSERT INTO Test (Paciente_id_pac) values (?)";
            pr = con.prepareStatement(q);
            pr.setInt(1,id);
            pr.executeUpdate();
            importante = obj.getId_pac();
            return importante;
        } catch (Exception e){
            e.printStackTrace();
        } finally{
            try{
                con.close();
                pr.close();   
                return importante;
            }catch(SQLException sqle){
                sqle.printStackTrace();
                return importante;
            }
        }
        
    }
    
    public int VerificaRegTest(int i, int c){
        c = 0;
        try {
            con = Conexion.getConnection();
            q = "SELECT * FROM Test WHERE Paciente_id_pac = ?";
            pr = con.prepareStatement(q);
            
            pr.setInt(1, c);
            
            rs = pr.executeQuery();
            
            while(rs.next()){
                System.out.println("Encontro un test xd");
                i = 1;
                break;
            }
        } catch (Exception e){
            System.out.println(e.getMessage());
            System.out.println(e.getLocalizedMessage());
            e.printStackTrace();
        }finally{
            try{
                con.close();
                pr.close();
                rs.close();
                return i;
            }catch(SQLException sqle){
                sqle.printStackTrace();
                return i;
            }
        }
    }
    
    public int ObtenIdtest(int obtener){
        obtener = 0;
        try {
            con = Conexion.getConnection();
            q = "SELECT * FROM Test WHERE Paciente_id_pac = ?";
            pr = con.prepareStatement(q);
            
            pr.setInt(1, id);
            
            rs = pr.executeQuery();
            
            while(rs.next()){
                System.out.println("Encontro un test xd");
                this.setId_test(rs.getInt("id_test"));
                obtener = rs.getInt("id_test");
                break;
            }
            return obtener;
        } catch(Exception e){
            e.printStackTrace();
        } finally{
            try{
                con.close();
                pr.close();
                rs.close();
                return obtener;
            }catch(SQLException sqle){
                sqle.printStackTrace();
                return obtener;
            }
        } 
    }
    
    public boolean InsertSec1(String p1_s1, String p2_s1, int id){
        boolean registro = false;
        try {
            id_test = this.getId_test();
            con = Conexion.getConnection();
            System.out.println(id);
            q = "INSERT INTO Seccion_1 (p1_s1, p2_s1, Test_id_test)"
                    +"values(?, ?, ?)";
            pr = con.prepareStatement(q);
           pr.setString(1, p1_s1);
           pr.setString(2, p2_s1);
           pr.setInt(3, id);
           
           pr.executeUpdate();
           
           if(pr.executeUpdate()==1){
               registro = true;
           }
        } catch (Exception e){
            e.printStackTrace();
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
    
    public boolean InsertSec2(String p1_s2, String p2_s2, String p3_s2, String p4_s2, String p5_s2, String p6_s2, String p7_s2, String p8_s2, String p9_s2, String p10_s2, String p11_s2, String p12_s2, String p13_s2, String p14_s2, String p15_s2, int id){
        boolean registro = false;
        try {
            id_test = this.getId_test();
            con = Conexion.getConnection();
            System.out.println(id);
            q = "INSERT INTO Seccion_2 (p1_s2, p2_s2, p3_s2, p4_s2, p5_s2, p6_s2, p7_s2, p8_s2, p9_s2, p10_s2, p11_s2, p12_s2, p13_s2, p14_s2, p15_s2, Test_id_test)"
                    +"values(?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
            pr = con.prepareStatement(q);
           pr.setString(1, p1_s2);
           pr.setString(2, p2_s2);
           pr.setString(3, p3_s2);
           pr.setString(4, p4_s2);
           pr.setString(5, p5_s2);
           pr.setString(6, p6_s2);
           pr.setString(7, p7_s2);
           pr.setString(8, p8_s2);
           pr.setString(9, p9_s2);
           pr.setString(10, p10_s2);
           pr.setString(11, p11_s2);
           pr.setString(12, p12_s2);
           pr.setString(13, p13_s2);
           pr.setString(14, p14_s2);
           pr.setString(15, p15_s2);
           pr.setInt(16, id);
           
           pr.executeUpdate();
           
           if(pr.executeUpdate()==1){
               registro = true;
           }
        } catch (Exception e){
            e.printStackTrace();
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
    
    public boolean InsertSec3(String p1_s3, String p2_s3, String p3_s3, String p4_s3, String p5_s3, String p6_s3, String p7_s3, String p8_s3, String p9_s3, String p10_s3, String p11_s3, String p12_s3, String p13_s3, String p14_s3, String p15_s3, String p16_s3, String p17_s3, String p18_s3, String p19_s3, int id){
        boolean registro = false;
        try {
            id_test = this.getId_test();
            con = Conexion.getConnection();
            System.out.println(id);
            q = "INSERT INTO Seccion_3 (p1_s3, p2_s3, p3_s3, p4_s3, p5_s3, p6_s3, p7_s3, p8_s3, p9_s3, p10_s3, p11_s3, p12_s3, p13_s3, p14_s3, p15_s3, p16_s3, p17_s3, p18_s3, p19_s3, Test_id_test)"
                    +"values(?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
            pr = con.prepareStatement(q);
           pr.setString(1, p1_s3);
           pr.setString(2, p2_s3);
           pr.setString(3, p3_s3);
           pr.setString(4, p4_s3);
           pr.setString(5, p5_s3);
           pr.setString(6, p6_s3);
           pr.setString(7, p7_s3);
           pr.setString(8, p8_s3);
           pr.setString(9, p9_s3);
           pr.setString(10, p10_s3);
           pr.setString(11, p11_s3);
           pr.setString(12, p12_s3);
           pr.setString(13, p13_s3);
           pr.setString(14, p14_s3);
           pr.setString(15, p15_s3);
           pr.setString(16, p16_s3);
           pr.setString(17, p17_s3);
           pr.setString(18, p18_s3);
           pr.setString(19, p19_s3);
           pr.setInt(20, id);
           
           pr.executeUpdate();
           
           if(pr.executeUpdate()==1){
               registro = true;
           }
        } catch (Exception e){
            e.printStackTrace();
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
    
    public boolean InsertSec4(String p1_s4, String p2_s4, String p3_s4, String p4_s4, String p5_s4, String p6_s4, String p7_s4, String p8_s4, String p9_s4, int id){
        boolean registro = false;
        try {
            id_test = this.getId_test();
            con = Conexion.getConnection();
            System.out.println(id);
            q = "INSERT INTO Seccion_4 (p1_s4, p2_s4, p3_s4, p4_s4, p5_s4, p6_s4, p7_s4, p8_s4, p9_s4, Test_id_test)"
                    +"values(?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
            pr = con.prepareStatement(q);
           pr.setString(1, p1_s4);
           pr.setString(2, p2_s4);
           pr.setString(3, p3_s4);
           pr.setString(4, p4_s4);
           pr.setString(5, p5_s4);
           pr.setString(6, p6_s4);
           pr.setString(7, p7_s4);
           pr.setString(8, p8_s4);
           pr.setString(9, p9_s4);
           pr.setInt(10, id);
           
           pr.executeUpdate();
           
           if(pr.executeUpdate()==1){
               registro = true;
           }
        } catch (Exception e){
            e.printStackTrace();
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
    
    public int getId_test() {
        return id_test;
    }

    public void setId_test(int id_test) {
        this.id_test = id_test;
    }

    public int getId_pac() {
        return id_pac;
    }

    public void setId_pac(int id_pac) {
        this.id_pac = id_pac;
    }

    

    public String getP2_s1() {
        return p2_s1;
    }

    public void setP2_s1(String p2_s1) {
        this.p2_s1 = p2_s1;
    }

    public String getP15_s2() {
        return p15_s2;
    }

    public void setP15_s2(String p15_s2) {
        this.p15_s2 = p15_s2;
    }

    public String getP19_s3() {
        return p19_s3;
    }

    public void setP19_s3(String p19_s3) {
        this.p19_s3 = p19_s3;
    }

    public String getP9_s4() {
        return p9_s4;
    }

    public void setP9_s4(String p9_s4) {
        this.p9_s4 = p9_s4;
    }

    public String getQ() {
        return q;
    }

    public void setQ(String q) {
        this.q = q;
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

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getP1_s1() {
        return p1_s1;
    }

    public void setP1_s1(String p1_s1) {
        this.p1_s1 = p1_s1;
    }

    public String getP1_s2() {
        return p1_s2;
    }

    public void setP1_s2(String p1_s2) {
        this.p1_s2 = p1_s2;
    }

    public String getP2_s2() {
        return p2_s2;
    }

    public void setP2_s2(String p2_s2) {
        this.p2_s2 = p2_s2;
    }

    public String getP3_s2() {
        return p3_s2;
    }

    public void setP3_s2(String p3_s2) {
        this.p3_s2 = p3_s2;
    }

    public String getP4_s2() {
        return p4_s2;
    }

    public void setP4_s2(String p4_s2) {
        this.p4_s2 = p4_s2;
    }

    public String getP5_s2() {
        return p5_s2;
    }

    public void setP5_s2(String p5_s2) {
        this.p5_s2 = p5_s2;
    }

    public String getP6_s2() {
        return p6_s2;
    }

    public void setP6_s2(String p6_s2) {
        this.p6_s2 = p6_s2;
    }

    public String getP7_s2() {
        return p7_s2;
    }

    public void setP7_s2(String p7_s2) {
        this.p7_s2 = p7_s2;
    }

    public String getP8_s2() {
        return p8_s2;
    }

    public void setP8_s2(String p8_s2) {
        this.p8_s2 = p8_s2;
    }

    public String getP9_s2() {
        return p9_s2;
    }

    public void setP9_s2(String p9_s2) {
        this.p9_s2 = p9_s2;
    }

    public String getP10_s2() {
        return p10_s2;
    }

    public void setP10_s2(String p10_s2) {
        this.p10_s2 = p10_s2;
    }

    public String getP11_s2() {
        return p11_s2;
    }

    public void setP11_s2(String p11_s2) {
        this.p11_s2 = p11_s2;
    }

    public String getP12_s2() {
        return p12_s2;
    }

    public void setP12_s2(String p12_s2) {
        this.p12_s2 = p12_s2;
    }

    public String getP13_s2() {
        return p13_s2;
    }

    public void setP13_s2(String p13_s2) {
        this.p13_s2 = p13_s2;
    }

    public String getP14_s2() {
        return p14_s2;
    }

    public void setP14_s2(String p14_s2) {
        this.p14_s2 = p14_s2;
    }

    public String getP1_s3() {
        return p1_s3;
    }

    public void setP1_s3(String p1_s3) {
        this.p1_s3 = p1_s3;
    }

    public String getP2_s3() {
        return p2_s3;
    }

    public void setP2_s3(String p2_s3) {
        this.p2_s3 = p2_s3;
    }

    public String getP3_s3() {
        return p3_s3;
    }

    public void setP3_s3(String p3_s3) {
        this.p3_s3 = p3_s3;
    }

    public String getP4_s3() {
        return p4_s3;
    }

    public void setP4_s3(String p4_s3) {
        this.p4_s3 = p4_s3;
    }

    public String getP5_s3() {
        return p5_s3;
    }

    public void setP5_s3(String p5_s3) {
        this.p5_s3 = p5_s3;
    }

    public String getP6_s3() {
        return p6_s3;
    }

    public void setP6_s3(String p6_s3) {
        this.p6_s3 = p6_s3;
    }

    public String getP7_s3() {
        return p7_s3;
    }

    public void setP7_s3(String p7_s3) {
        this.p7_s3 = p7_s3;
    }

    public String getP8_s3() {
        return p8_s3;
    }

    public void setP8_s3(String p8_s3) {
        this.p8_s3 = p8_s3;
    }

    public String getP9_s3() {
        return p9_s3;
    }

    public void setP9_s3(String p9_s3) {
        this.p9_s3 = p9_s3;
    }

    public String getP10_s3() {
        return p10_s3;
    }

    public void setP10_s3(String p10_s3) {
        this.p10_s3 = p10_s3;
    }

    public String getP11_s3() {
        return p11_s3;
    }

    public void setP11_s3(String p11_s3) {
        this.p11_s3 = p11_s3;
    }

    public String getP12_s3() {
        return p12_s3;
    }

    public void setP12_s3(String p12_s3) {
        this.p12_s3 = p12_s3;
    }

    public String getP13_s3() {
        return p13_s3;
    }

    public void setP13_s3(String p13_s3) {
        this.p13_s3 = p13_s3;
    }

    public String getP14_s3() {
        return p14_s3;
    }

    public void setP14_s3(String p14_s3) {
        this.p14_s3 = p14_s3;
    }

    public String getP15_s3() {
        return p15_s3;
    }

    public void setP15_s3(String p15_s3) {
        this.p15_s3 = p15_s3;
    }

    public String getP16_s3() {
        return p16_s3;
    }

    public void setP16_s3(String p16_s3) {
        this.p16_s3 = p16_s3;
    }

    public String getP17_s3() {
        return p17_s3;
    }

    public void setP17_s3(String p17_s3) {
        this.p17_s3 = p17_s3;
    }

    public String getP18_s3() {
        return p18_s3;
    }

    public void setP18_s3(String p18_s3) {
        this.p18_s3 = p18_s3;
    }

    public String getP1_s4() {
        return p1_s4;
    }

    public void setP1_s4(String p1_s4) {
        this.p1_s4 = p1_s4;
    }

    public String getP2_s4() {
        return p2_s4;
    }

    public void setP2_s4(String p2_s4) {
        this.p2_s4 = p2_s4;
    }

    public String getP3_s4() {
        return p3_s4;
    }

    public void setP3_s4(String p3_s4) {
        this.p3_s4 = p3_s4;
    }
    
    public String getP4_s4() {
        return p4_s4;
    }

    public void setP4_s4(String p3_s4) {
        this.p4_s4 = p4_s4;
    }

    public String getP5_s4() {
        return p5_s4;
    }

    public void setP5_s4(String p5_s4) {
        this.p5_s4 = p5_s4;
    }

    public String getP6_s4() {
        return p6_s4;
    }

    public void setP6_s4(String p6_s4) {
        this.p6_s4 = p6_s4;
    }

    public String getP7_s4() {
        return p7_s4;
    }

    public void setP7_s4(String p7_s4) {
        this.p7_s4 = p7_s4;
    }

    public String getP8_s4() {
        return p8_s4;
    }

    public void setP8_s4(String p8_s4) {
        this.p8_s4 = p8_s4;
    }
    
    
}
