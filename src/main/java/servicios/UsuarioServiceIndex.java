package servicios;

import conexion.conexionbd;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class UsuarioServiceIndex {

    // Método para validar las credenciales del usuario
    public boolean validarCredenciales(String username, String password) throws SQLException {
        String query = "SELECT * FROM usuarios WHERE username = ? AND password = ?";
        
        try (Connection con = conexionbd.getConnection();
             PreparedStatement pst = con.prepareStatement(query)) {
            
            pst.setString(1, username);
            pst.setString(2, password);
            
            try (ResultSet rs = pst.executeQuery()) {
                return rs.next(); // Retorna true si hay un resultado, es decir, si las credenciales son correctas
            }
        }
    }
}
