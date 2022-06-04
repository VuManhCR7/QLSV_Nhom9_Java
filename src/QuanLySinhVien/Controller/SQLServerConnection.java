package QuanLySinhVien.Controller;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class SQLServerConnection {
    public static Connection getJDBCConnection() {
        final String url = "jdbc:mysql://localhost:3306/quanlysinhvien?useSSL=false";
        final String username = "root";
        final String password = "";
        try {
            Class.forName("com.mysql.jdbc.Driver");
            return DriverManager.getConnection(url,username,password);
        } catch (Exception ee){
            System.out.println("Error: cannot connect-- "+ ee.getMessage());
        }
        return null;
    }
}
