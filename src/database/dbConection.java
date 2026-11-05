package database;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class dbConection {
    public static Connection ConectarDB(String db) {
        Connection conexion;
        String host = "jdbc:mysql://localhost:3306/";
        String user = "root";
        String pass = "";

        System.out.println("Conectando...");
        try {
            conexion = DriverManager.getConnection(host+db,user,pass);
            System.out.println("Conexion exitosa");
        } catch (SQLException e) {
            System.out.println(e.getMessage());
            throw new RuntimeException(e);
        }
        return conexion;
    }
    public static void main(String[] args){
        Connection db = ConectarDB("moviedb");

    }
}
