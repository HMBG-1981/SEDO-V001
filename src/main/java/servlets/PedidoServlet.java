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
import java.sql.PreparedStatement;
import java.sql.SQLException;

import conexion.conexionbd; // Importa tu clase de conexión

@WebServlet("/PedidoServlet")
public class PedidoServlet extends HttpServlet {

    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();

        String[] productos = request.getParameterValues("productos");

        if (productos != null) {
            conexionbd con = new conexionbd();
            Connection connection = null;
            try {
                connection = con.getConnection();

                StringBuilder productosConcat = new StringBuilder();
                double totalPrecio = 0.0;

                for (String producto : productos) {
                    String[] partes = producto.split(":");
                    String nombre = partes[0];
                    double precio = Double.parseDouble(partes[1]);

                    productosConcat.append(nombre).append(" (").append(precio).append("), ");
                    totalPrecio += precio;
                }

                if (productosConcat.length() > 0) {
                    productosConcat.setLength(productosConcat.length() - 2);
                }

                // Inserción sin el campo Registro
                String sql = "INSERT INTO pedidos (productos, total) VALUES (?, ?)";
                PreparedStatement pstmt = connection.prepareStatement(sql);
                pstmt.setString(1, productosConcat.toString());
                pstmt.setDouble(2, totalPrecio);
                pstmt.executeUpdate();

                out.println("<h1>Pedido guardado exitosamente!</h1>");
            } catch (SQLException e) {
                e.printStackTrace();
                out.println("<h1>Error al guardar el pedido: " + e.getMessage() + "</h1>");
            } finally {
                if (connection != null) {
                    try {
                        connection.close();
                    } catch (SQLException e) {
                        e.printStackTrace();
                    }
                }
            }
        } else {
            out.println("<h1>No hay productos seleccionados!</h1>");
        }

        out.println("<a href='productos.jsp'>Volver a Productos</a>");
    }
}
