package servlets;

import conexion.conexionbd;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/quejas_sugerencias")
public class Svquejas_sugerencias extends HttpServlet {
    
    protected void doPost(HttpServletRequest request, HttpServletResponse response) 
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        
        // Obtener los parámetros del formulario
        String nombre = request.getParameter("nombre");
        String correo = request.getParameter("correo");
        String mensaje = request.getParameter("mensaje");
        
        // Respuesta para el cliente
        String mensajeRespuesta = "";
        
        // Validar los campos
        if (nombre == null || nombre.trim().isEmpty()) {
            mensajeRespuesta = "El campo 'Nombre' es obligatorio.";
        } else if (correo == null || correo.trim().isEmpty()) {
            mensajeRespuesta = "El campo 'Correo' es obligatorio.";
        } else if (mensaje == null || mensaje.trim().isEmpty()) {
            mensajeRespuesta = "El campo 'Mensaje' es obligatorio.";
        } else {
            // Insertar en la base de datos
            Connection con = null;
            PreparedStatement pstmt = null;
            try {
                con = conexionbd.getConnection();
                String sql = "INSERT INTO quejas (nombre, correo, mensaje, fechaHora) VALUES (?, ?, ?, CURRENT_TIMESTAMP)";
                pstmt = con.prepareStatement(sql);
                pstmt.setString(1, nombre);
                pstmt.setString(2, correo);
                pstmt.setString(3, mensaje);
                pstmt.executeUpdate();
                mensajeRespuesta = "Gracias por su queja/sugerencia. Nos pondremos en contacto con usted.";
            } catch (Exception e) {
                mensajeRespuesta = "Error en la conexión a la base de datos: " + e.getMessage();
            } finally {
                // Cerrar la conexión y el PreparedStatement
                try {
                    if (pstmt != null) pstmt.close();
                    if (con != null) con.close();
                } catch (Exception e) {
                    e.printStackTrace();
                }
            }
        }
        
        // Enviar la respuesta de vuelta al cliente
        try (PrintWriter out = response.getWriter()) {
            out.println(mensajeRespuesta);
        }
    }
}
