/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package servlets;

import conexion.conexionbd;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import org.json.JSONArray;
import org.json.JSONObject;

@WebServlet("/PedidosServlet")
public class Svmodulo_Administrador extends HttpServlet {
    private static final long serialVersionUID = 1L;

    public Svmodulo_Administrador() {
        super();
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("application/json");
        PrintWriter out = response.getWriter();
        
        // Obtener conexión a la base de datos
        Connection con = conexionbd.getConnection();
        JSONArray jsonArray = new JSONArray();

        try {
            String query = "SELECT * FROM pedidos"; // Asegúrate de que el nombre de la tabla es correcto
            PreparedStatement pst = con.prepareStatement(query);
            ResultSet rs = pst.executeQuery();
            
            while (rs.next()) {
                JSONObject jsonObject = new JSONObject();
                jsonObject.put("id", rs.getString("id"));
                jsonObject.put("cliente", rs.getString("cliente"));
                jsonObject.put("fecha", rs.getString("fecha"));
                jsonObject.put("producto", rs.getString("producto"));
                jsonObject.put("cantidad", rs.getInt("cantidad"));
                jsonObject.put("total", rs.getString("total"));
                jsonArray.put(jsonObject);
            }
            
            out.print(jsonArray.toString());
        } catch (SQLException e) {
            e.printStackTrace();
            response.setStatus(HttpServletResponse.SC_INTERNAL_SERVER_ERROR);
        } finally {
            try {
                if (con != null) con.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
    }
}
