/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package conector;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

/**
 *
 * @author 26148269
 */
public class conexao {
    
    public static Connection getConnection() throws SQLException {
        
        try {
            
            Class.forName("com.mysql.jdbc.Driver");
            return DriverManager.getConnection("jdbc:mysql://localhost/experimentoanimal","root","mysql");
            
            
            
        } catch (ClassNotFoundException e) {
        
        throw new SQLException(e.getException());
        
        }
    }
    
}
