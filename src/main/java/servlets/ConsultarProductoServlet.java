/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package servlets;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/BuscarProductosServlet")
public class ConsultarProductoServlet extends HttpServlet {

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String idProducto = request.getParameter("idProductos");

        response.setContentType("text/html");
        PrintWriter out = response.getWriter();

        // Conexión a la base de datos
        String url = "jdbc:mysql://localhost:3306/aa_database";
        String user = "root";
        String password = "16461219bcG@"; // Reemplaza con tu contraseña

        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection conn = DriverManager.getConnection(url, user, password);

            // Consulta SQL para obtener los productos por ID
            String sql = "SELECT * FROM productos WHERE idProductos = ?";
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setString(1, idProducto);
            ResultSet rs = ps.executeQuery();

            // Estilos y encabezado de la página
            out.println("<html><head><style>");
            out.println("body { background-image: url('img/upload-816230812391.png'); background-size: cover; color: #333; font-family: Arial, sans-serif; }");
            out.println("#logo { display: block; margin: 0 auto; }");
            out.println("input[type='text'] { padding: 10px; margin: 5px; width: 300px; }");
            out.println("form { text-align: center; margin-top: 20px; }");
            out.println("input[type='submit'] { padding: 10px 20px; }");
            out.println("table { width: 100%; border-collapse: collapse; margin-top: 20px; background-color: #74ff63; }");
            out.println("th, td { border: 1px solid black; padding: 8px; text-align: left; }");
            out.println("th { background-color: #f2f2f2; }");
            out.println("h1 { text-align: center; font-size: 50px; color: rgb(21, 255, 0); text-shadow: 2px 2px 0 rgb(17, 16, 16), 2px -2px 0 rgb(7, 7, 7), -1px -1px 0 rgb(0, 0, 0); margin-top: 50px; }");
            out.println("button { margin-top: 20px; padding: 10px 20px; background-color: #28a745; color: white; border: none; cursor: pointer; }");
            out.println("button:hover { background-color: #218838; }");
            out.println("</style></head><body>");

            out.println("<h1>ASADOS ANGÉLICA</h1>");
            out.println("<img src='img/Logo02.jpg' id='logo' alt='Logo' style='max-width: 15%; width: auto; height: auto;'>");

            // Formulario para buscar cliente
            out.println("<form action='BuscarProductosServlet' method='post'>");
            out.println("<label for='Productos' style='color: black;'><b>Ingrese el ID del Producto:</b></label>");
            out.println("<input type='text' id='idProductos' name='idProductos' required>");
            out.println("<input type='submit' value='Buscar Productos'>");
            out.println("</form>");
            
            // Mostrar los productos en una tabla
            out.println("<h2 style='color: black;'><b>Lista de Productos:</b></h2>");
            out.println("<table>");
            out.println("<tr><th>ID Producto</th><th>Nombre Producto</th><th>Precio Producto</th><th>Tipo Producto</th></tr>");

            if (rs.next()) {
                out.println("<tr>");
                out.println("<td>" + rs.getInt("idProductos") + "</td>");
                out.println("<td>" + rs.getString("nombreProducto") + "</td>");
                out.println("<td>" + rs.getDouble("precioProducto") + "</td>");
                out.println("<td>" + rs.getString("TipoProducto") + "</td>");
                out.println("</tr>");
            } else {
                out.println("<tr><td colspan='4'>No se encontró el producto con ID: " + idProducto + "</td></tr>");
            }
            
            // Botón para volver al módulo 07modulo_empleados.jsp
            out.println("<form action='07modulo_empleados.jsp' method='get'>");
            out.println("<button type='submit'>Volver</button>");
            out.println("</form>");

            out.println("</table>");
            out.println("</body></html>");

            ps.close();
            conn.close();
        } catch (Exception e) {
            out.println("<h2>Error: " + e.getMessage() + "</h2>");
        }
    }
}
