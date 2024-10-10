package servlets;


import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/SvModuloEmpleados")
public class Svmodulo_empleados extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) 
            throws ServletException, IOException {
        // Redirigir al módulo de empleados
        request.getRequestDispatcher("modulo_empleados.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) 
            throws ServletException, IOException {
        String action = request.getParameter("action");
        
        if (action != null) {
            switch (action) {
                case "Pedidos":
                    // Redirigir a la página de ver pedidos
                    response.sendRedirect("12ver_pedidos.jsp");
                    break;
                case "Clientes":
                    // Redirigir a la página de consultar clientes
                    response.sendRedirect("13consultar_clientes.jsp");
                    break;
                case "Productos":
                    // Redirigir a la página de ver productos
                    response.sendRedirect("14ver_productos.jsp");
                    break;
                case "Logout":
                    // Redirigir al inicio de sesión o cerrar sesión
                    response.sendRedirect("01index.jsp");
                    break;
                default:
                    // Si la acción no es válida, redirigir de nuevo al módulo de empleados
                    response.sendRedirect("modulo_empleados.jsp");
                    break;
            }
        } else {
            // Si no hay acción, redirigir de nuevo al módulo de empleados
            response.sendRedirect("modulo_empleados.jsp");
        }
    }
}
