package Clases;

import java.sql.*;

public class Conexion{
    
    public static Connection getConnection() throws ClassNotFoundException, SQLException{
        Connection con = null;
        Class.forName("com.mysql.jdbc.Driver");
        String pass = "N0m3l0s3";
        String url ="jdbc:mysql://shiee-bd.mysql.database.azure.com:3306/shiee?useSSL=true&requireSSL=false"; 
        con = DriverManager.getConnection(url, "usuarioazure@shiee-bd", pass);
           
        return con;
    }
}
