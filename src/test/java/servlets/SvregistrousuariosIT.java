/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/UnitTests/JUnit4TestClass.java to edit this template
 */
package servlets;


import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import org.junit.Before;
import org.junit.Test;
import org.mockito.Mockito;

import static org.mockito.Mockito.*;

public class SvregistrousuariosIT {

    private HttpServletRequest request;
    private HttpServletResponse response;
    private Svregistrousuarios servlet;

    @Before
    public void setUp() {
        request = mock(HttpServletRequest.class);
        response = mock(HttpServletResponse.class);
        servlet = new Svregistrousuarios();
    }

    @Test
    public void testDoPost() throws Exception {
        // Define el comportamiento esperado de los parámetros
        when(request.getParameter("tipoDocumento")).thenReturn("2");
        when(request.getParameter("documento")).thenReturn("12345678");
        when(request.getParameter("tipoUsuario")).thenReturn("3");
        when(request.getParameter("nombres")).thenReturn("Juan");
        when(request.getParameter("apellidos")).thenReturn("Pérez");
        when(request.getParameter("direccion")).thenReturn("Calle Falsa 123");
        when(request.getParameter("telefono")).thenReturn("555-1234");
        when(request.getParameter("correo")).thenReturn("juan.perez@example.com");
        when(request.getParameter("contraseña")).thenReturn("1234zzz");
        when(request.getParameter("action")).thenReturn("register");

        // Simula el RequestDispatcher
        RequestDispatcher dispatcher = mock(RequestDispatcher.class);
        when(request.getRequestDispatcher("otros/confirmacion.jsp")).thenReturn(dispatcher);

        // Llama al método doPost
        servlet.doPost(request, response);

        // Verifica que el RequestDispatcher haya sido llamado
        verify(dispatcher).forward(request, response);
    }
}
