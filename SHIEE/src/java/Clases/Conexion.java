package Clases;

import java.sql.*;

public class Conexion{
    
    public static Connection getConnection() throws ClassNotFoundException, SQLException, InstantiationException, IllegalAccessException{
        Connection con = null;
        try {
                    Class.forName("com.mysql.jdbc.Driver");
                    String user = "root";
                    String password = "n0m3l0";
                    String url = "jdbc:mysql://localhost:3306/shiee";
                    con =DriverManager.getConnection(url, user, password);
        } catch (ClassNotFoundException ex) {
            System.out.println("Falló la clase");
        }finally{
            return con;
        }
    }
}
