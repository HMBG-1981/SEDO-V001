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

/**
 * @Heider Mauricio Bedoya
 * 2721519 ADSO
 */
@WebServlet("/login")
public class Svingresoclientes extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.sendRedirect("");
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String usuario = request.getParameter("usuario");
        String clave = request.getParameter("clave");

        Connection con = null;
        PreparedStatement stmt = null;
        ResultSet rs = null;

        try {
            con = conexionbd.getConnection();
            
            // Preparar la consulta SQL
            String sql = "SELECT * FROM registrousuarios WHERE documento = ? AND contraseña = ?";
            stmt = con.prepareStatement(sql);
            stmt.setString(1, usuario);
            stmt.setString(2, clave);
            
            // Ejecutar la consulta
            rs = stmt.executeQuery();
            
            // Si se encuentra un resultado, las credenciales son correctas
            if (rs.next()) {
                request.getRequestDispatcher("06home_usuarios.jsp").forward(request, response);
            } else {
                request.setAttribute("error", "usuario o clave incorrectos");
                request.setAttribute("errorExist", true);
                request.getRequestDispatcher("otros/error.jsp").forward(request, response);
            }
        } catch (SQLException e) {
            e.printStackTrace();
            request.setAttribute("error", "Error de conexión a la base de datos");
            request.setAttribute("errorExist", true);
            request.getRequestDispatcher("otros/error.jsp").forward(request, response);
        } finally {
            // Cerrar los recursos en el orden inverso de su apertura
            if (rs != null) {
                try { rs.close(); } catch (SQLException e) { e.printStackTrace(); }
            }
            if (stmt != null) {
                try { stmt.close(); } catch (SQLException e) { e.printStackTrace(); }
            }
            if (con != null) {
                try { con.close(); } catch (SQLException e) { e.printStackTrace(); }
            }
        }
    }
}
