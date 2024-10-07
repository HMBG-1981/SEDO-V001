package servlets;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/processForm")
public class Svmodulo_empleados extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Obtener parámetros del formulario si es necesario
        String action = request.getParameter("action");

        if ("print".equals(action)) {
            // Lógica para imprimir el pedido
            response.sendRedirect("printPage.jsp"); // Redirige a una página que tenga el código de impresión
        } else if ("cancel".equals(action)) {
            // Lógica para cancelar el pedido
            response.sendRedirect("cancelPage.jsp"); // Redirige a una página que maneje la cancelación
        } else if ("updateStatus".equals(action)) {
            // Lógica para actualizar el estado del pedido
            response.sendRedirect("updateStatusPage.jsp"); // Redirige a una página que maneje la actualización del estado
        } else if ("logout".equals(action)) {
            // Lógica para cerrar sesión
            response.sendRedirect("logout.jsp"); // Redirige a una página que maneje el cierre de sesión
        }
    }
}
