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

@WebServlet("/iniciar")
public class Svingresoempleados extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.sendRedirect("");
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Connection con = null;
        PreparedStatement ps = null;
        ResultSet rs = null;

        try {
            con = conexionbd.getConnection(); // Obtiene una conexión a la base de datos
            String usuario = request.getParameter("usuario");
            String clave = request.getParameter("clave");

            String sql = "SELECT * FROM registrousuarios WHERE documento = ? AND contraseña = ?";
            ps = con.prepareStatement(sql);
            ps.setString(1, usuario);
            ps.setString(2, clave);
            rs = ps.executeQuery();

            if (rs.next()) {
                // Si se encuentra un registro que coincide con el usuario y la contraseña
                request.getRequestDispatcher("07modulo_empleados.jsp").forward(request, response);
            } else {
                // Si no se encuentra ningún registro
                request.setAttribute("error", "usuario o clave incorrectos");
                request.setAttribute("errorExist", true);
                request.getRequestDispatcher("otros/error.jsp").forward(request, response);
            }
        } catch (SQLException e) {
            e.printStackTrace();
            // Manejo de excepciones de SQL
            request.setAttribute("error", "Error de conexión a la base de datos");
            request.setAttribute("errorExist", true);
            request.getRequestDispatcher("otros/error.jsp").forward(request, response);
        } finally {
            // Cerrar ResultSet, PreparedStatement y Connection
            try {
                if (rs != null) rs.close();
                if (ps != null) ps.close();
                if (con != null) con.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
    }
}
