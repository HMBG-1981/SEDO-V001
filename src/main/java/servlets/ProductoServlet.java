/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package servlets;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

@WebServlet("/productos")
public class ProductoServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();

        String jdbcURL = "jdbc:mysql://localhost:3306/aa_database";
        String dbUser = "root"; // Reemplaza con tu usuario de base de datos
        String dbPass = "16461219bcG@"; // Reemplaza con tu contraseña de base de datos

        try {
            Connection connection = DriverManager.getConnection(jdbcURL, dbUser, dbPass);
            Statement statement = connection.createStatement();
            String sql = "SELECT * FROM productos"; // Asegúrate de que la tabla 'productos' existe
            ResultSet resultSet = statement.executeQuery(sql);

            out.println("<table>");
            out.println("<thead><tr><th>Imagen</th><th>Nombre del Producto</th><th>Descripción</th><th>Precio</th></tr></thead>");
            out.println("<tbody>");

            while (resultSet.next()) {
                String nombre = resultSet.getString("nombre");
                String descripcion = resultSet.getString("descripcion");
                double precio = resultSet.getDouble("precio");
                String imagen = resultSet.getString("imagen"); // Asegúrate de que la columna existe

                out.println("<tr>");
                out.println("<td><img src='" + imagen + "' alt='" + nombre + "' style='width: 100px; height: auto;'></td>");
                out.println("<td>" + nombre + "</td>");
                out.println("<td>" + descripcion + "</td>");
                out.println("<td>$" + precio + "</td>");
                out.println("</tr>");
            }

            out.println("</tbody></table>");

            resultSet.close();
            statement.close();
            connection.close();
        } catch (Exception e) {
            e.printStackTrace(out);
        } finally {
            out.close();
        }
    }
}
