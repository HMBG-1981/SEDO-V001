/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package servicios;

import conexion.conexionbd;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class UsuarioService {

    public boolean existeDocumento(String tipoDocumento, String documento) throws SQLException {
        String sql = "SELECT documento FROM registrousuarios WHERE tipo_documento=? AND documento=?";
        try (Connection con = conexionbd.getConnection();
             PreparedStatement pst = con.prepareStatement(sql)) {
            pst.setString(1, tipoDocumento);
            pst.setString(2, documento);
            try (ResultSet rs = pst.executeQuery()) {
                return rs.next();
            }
        }
    }

    public int registrarUsuario(String tipoDocumento, String documento, String tipoUsuario, String nombres, String apellidos, String direccion, String telefono, String correo, String contraseña) throws SQLException {
        String sql = "INSERT INTO registrousuarios (tipo_documento, documento, tipo_usuario, nombres, apellidos, direccion, telefono, correo, contraseña) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?)";
        try (Connection con = conexionbd.getConnection();
             PreparedStatement pst = con.prepareStatement(sql)) {
            pst.setString(1, tipoDocumento);
            pst.setString(2, documento);
            pst.setString(3, tipoUsuario);
            pst.setString(4, nombres);
            pst.setString(5, apellidos);
            pst.setString(6, direccion);
            pst.setString(7, telefono);
            pst.setString(8, correo);
            pst.setString(9, contraseña);
            return pst.executeUpdate();
        }
    }

    public int actualizarUsuario(String tipoDocumento, String documento, String tipoUsuario, String nombres, String apellidos, String direccion, String telefono, String correo, String contraseña) throws SQLException {
        String sql = "UPDATE registrousuarios SET tipo_usuario=?, nombres=?, apellidos=?, direccion=?, telefono=?, correo=?, contraseña=? WHERE tipo_documento=? AND documento=?";
        try (Connection con = conexionbd.getConnection();
             PreparedStatement pst = con.prepareStatement(sql)) {
            pst.setString(1, tipoUsuario);
            pst.setString(2, nombres);
            pst.setString(3, apellidos);
            pst.setString(4, direccion);
            pst.setString(5, telefono);
            pst.setString(6, correo);
            pst.setString(7, contraseña);
            pst.setString(8, tipoDocumento);
            pst.setString(9, documento);
            return pst.executeUpdate();
        }
    }

    public int eliminarUsuario(String tipoDocumento, String documento) throws SQLException {
        String sql = "DELETE FROM registrousuarios WHERE tipo_documento=? AND documento=?";
        try (Connection con = conexionbd.getConnection();
             PreparedStatement pst = con.prepareStatement(sql)) {
            pst.setString(1, tipoDocumento);
            pst.setString(2, documento);
            return pst.executeUpdate();
        }
    }
}
