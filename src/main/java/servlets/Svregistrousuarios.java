/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package servlets;

import conexion.conexionbd;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/UserRegistration")
public class Svregistrousuarios extends HttpServlet {

    private static final long serialVersionUID = 1L;

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String tipoDocumento = request.getParameter("tipoDocumento");
        String documento = request.getParameter("documento");
        String tipoUsuario = request.getParameter("tipoUsuario");
        String nombres = request.getParameter("nombres");
        String apellidos = request.getParameter("apellidos");
        String direccion = request.getParameter("direccion");
        String telefono = request.getParameter("telefono");
        String correo = request.getParameter("correo");
        String contraseña = request.getParameter("contraseña");
        String action = request.getParameter("action");

        try (Connection con = conexionbd.getConnection()) {
            if (con != null) {
                String sql = "";
                PreparedStatement pst = null;

                switch (action) {
                    case "register":
                        // Comprobar si el documento ya existe solo cuando se registra
                        String checkSql = "SELECT documento FROM registrousuarios WHERE documento = ?";
                        try (PreparedStatement checkPst = con.prepareStatement(checkSql)) {
                            checkPst.setString(1, documento);
                            ResultSet rs = checkPst.executeQuery();

                            if (rs.next()) {
                                // Si el documento ya existe, redirigir a ErrorRegistro.jsp
                                request.getRequestDispatcher("otros/ErrorRegistro.jsp").forward(request, response);
                                return;
                            }
                        }

                        sql = "INSERT INTO registrousuarios (tipo_documento, documento, tipo_usuario, nombres, apellidos, direccion, telefono, correo, contraseña) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?)";
                        pst = con.prepareStatement(sql);
                        pst.setString(1, tipoDocumento);
                        pst.setString(2, documento);
                        pst.setString(3, tipoUsuario);
                        pst.setString(4, nombres);
                        pst.setString(5, apellidos);
                        pst.setString(6, direccion);
                        pst.setString(7, telefono);
                        pst.setString(8, correo);
                        pst.setString(9, contraseña);
                        break;

                    case "update":
                        // No se realiza verificación del documento en la actualización
                        sql = "UPDATE registrousuarios SET tipo_usuario=?, nombres=?, apellidos=?, direccion=?, telefono=?, correo=?, contraseña=? WHERE tipo_documento=? AND documento=?";
                        pst = con.prepareStatement(sql);
                        pst.setString(1, tipoUsuario);
                        pst.setString(2, nombres);
                        pst.setString(3, apellidos);
                        pst.setString(4, direccion);
                        pst.setString(5, telefono);
                        pst.setString(6, correo);
                        pst.setString(7, contraseña);
                        pst.setString(8, tipoDocumento);
                        pst.setString(9, documento);
                        break;

                    case "delete":
                        sql = "DELETE FROM registrousuarios WHERE tipo_documento=? AND documento=?";
                        pst = con.prepareStatement(sql);
                        pst.setString(1, tipoDocumento);
                        pst.setString(2, documento);
                        break;

                    default:
                        response.sendError(HttpServletResponse.SC_BAD_REQUEST, "Acción no válida");
                        return;
                }

                int rowsAffected = pst.executeUpdate();
                if (rowsAffected > 0) {
                    request.getRequestDispatcher("otros/confirmacion1.jsp").forward(request, response);
                } else {
                    response.sendError(HttpServletResponse.SC_INTERNAL_SERVER_ERROR, "No se pudo completar la operación");
                }
            } else {
                response.sendError(HttpServletResponse.SC_INTERNAL_SERVER_ERROR, "Error al obtener la conexión");
            }
        } catch (SQLException e) {
            e.printStackTrace();
            response.sendError(HttpServletResponse.SC_INTERNAL_SERVER_ERROR, "Error en la base de datos: " + e.getMessage());
        }
    }
}
