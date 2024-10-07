package servlets;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;

@WebServlet("/index")
public class Svindex extends HttpServlet {
    private static final long serialVersionUID = 1L;

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        // Configurar el tipo de contenido
        response.setContentType("text/html");

        String role = request.getParameter("role");

        if (role == null) {
            response.sendRedirect("01index.jsp"); // Redirigir a la página principal si no se selecciona un rol
        } else {
            switch (role) {
                case "Administrador":
                    response.sendRedirect("03ingreso_empleados.jsp");
                    break;
                case "Empleado":
                    response.sendRedirect("03ingreso_empleados.jsp");
                    break;
                case "Clientes":
                    response.sendRedirect("02ingreso_clientes.jsp");
                    break;
                default:
                    response.sendRedirect("01index.jsp"); // Redirigir a la página principal si el rol no es reconocido
                    break;
            }
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        // Configurar el tipo de contenido
        response.setContentType("text/html");

        // Aquí puedes agregar la lógica para manejar solicitudes POST si es necesario
    }
}
