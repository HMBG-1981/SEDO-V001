package servlets;

import conexion.conexionbd;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/actualizar")
public class Svingresar_actualizar_productos extends HttpServlet {
    private static final long serialVersionUID = 1L;
    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String tipoProducto = request.getParameter("tipoProducto");
        String nombreProducto = request.getParameter("nombreProducto");
        String precioProducto = request.getParameter("precioProducto");
        String action = request.getParameter("action");

        if (tipoProducto == null || nombreProducto == null || precioProducto == null || action == null) {
            response.sendError(HttpServletResponse.SC_BAD_REQUEST, "Faltan parámetros necesarios");
            return;
        }

        try (Connection con = conexionbd.getConnection()) {
            if (con != null) {
                String sql;
                try (PreparedStatement ps = con.prepareStatement(getSqlQuery(action))) {
                    setPreparedStatementParameters(ps, tipoProducto, nombreProducto, precioProducto, action);
                    int rowsAffected = ps.executeUpdate();
                    if (rowsAffected > 0) {
                        request.setAttribute("mensaje", "Operación " + action + " completada con éxito.");
                        request.getRequestDispatcher("otros/confirmacion2.jsp").forward(request, response);
                    } else {
                        response.sendError(HttpServletResponse.SC_INTERNAL_SERVER_ERROR, "No se pudo completar la operación");
                    }
                }
            } else {
                response.sendError(HttpServletResponse.SC_INTERNAL_SERVER_ERROR, "Error al obtener la conexión");
            }
        } catch (SQLException e) {
            e.printStackTrace();
            response.sendError(HttpServletResponse.SC_INTERNAL_SERVER_ERROR, "Error en la base de datos: " + e.getMessage());
        }
    }

    private String getSqlQuery(String action) throws ServletException {
        switch (action) {
            case "registrar":
                return "INSERT INTO productos (tipoProducto, nombreProducto, precioProducto) VALUES (?, ?, ?)";
            case "actualizar":
                return "UPDATE productos SET tipoProducto=?, precioProducto=? WHERE nombreProducto=?";
            case "eliminar":
                return "DELETE FROM productos WHERE nombreProducto=?";
            default:
                throw new ServletException("Acción no válida");
        }
    }

    private void setPreparedStatementParameters(PreparedStatement ps, String tipoProducto, String nombreProducto, String precioProducto, String action) throws SQLException, ServletException {
        switch (action) {
            case "registrar":
                ps.setString(1, tipoProducto);
                ps.setString(2, nombreProducto);
                ps.setDouble(3, Double.parseDouble(precioProducto));
                break;
            case "actualizar":
                ps.setString(1, tipoProducto);
                ps.setDouble(2, Double.parseDouble(precioProducto));
                ps.setString(3, nombreProducto);
                break;
            case "eliminar":
                ps.setString(1, nombreProducto);
                break;
            default:
                throw new ServletException("Acción no válida");
        }
    }
}
