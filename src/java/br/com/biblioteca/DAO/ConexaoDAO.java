
package br.com.biblioteca.DAO;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;


public class ConexaoDAO {
    
    
    public Connection conexaoBD() throws ClassNotFoundException {
        Connection conn = null;
        
        try {
            //O caminho do driver de conexão com sql e quando conectar vai precisar dessa Class.forName. criou o throw ClassNotFoundException.
            Class.forName("com.mysql.jdbc.Driver");
            String url = "jdbc:mysql://localhost:3306/biblioteca?user=root&password=";
            conn = DriverManager.getConnection(url);
        } catch (SQLException e) {
            System.out.println("não conectou");                   
        }
        return conn;
    }
}
//https://downloads.mysql.com/archives/c-j/