package Clases;

import java.sql.*;

public class Conexion{
    
    public static Connection getConnection() throws ClassNotFoundException, SQLException{
        Connection con = null;
        Class.forName("com.mysql.jdbc.Driver");
        String pass = "aa91df68";
        String url ="jdbc:mysql://us-cdbr-east-06.cleardb.net/heroku_d93e8fa94243cb8?user=bd95476c41a8bf&password=aa91df68&reconnect=true"; 
        con = DriverManager.getConnection(url);
           
        return con;
    }
}
