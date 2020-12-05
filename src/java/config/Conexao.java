package config;

import java.sql.*;

public class Conexao {

    public static Connection conectar() throws SQLException {
        try {
            Class.forName("com.mysql.jdbc.Driver");
            return DriverManager.getConnection("jdbc:mysql://localhost/javaweb?user=root&password=123456");
        } catch (ClassNotFoundException e) {
            throw new RuntimeException(e);
        }
    }

}
