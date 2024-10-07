/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package conexion;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

/**
 * Clase para gestionar la conexión a la base de datos
 */
public class conexionbd {

    private Connection con;
    
    public conexionbd(){
        try{
            Class.forName("com.mysql.cj.jdbc.Driver");
            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/aa_database","root","16461219bcG@");
        }catch(ClassNotFoundException | SQLException e){
            System.err.println("La Conexion no Fue Exitosa: " + e.getMessage());
            // Podrías lanzar una excepción personalizada o registrar el error en un log
        }
    }
    
    public Connection getConection(){
        return con;
    }

    public static Connection getConnection() {
        conexionbd conexion = new conexionbd();
        return conexion.getConection();
    }

    public void closeConnection() {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }
}
