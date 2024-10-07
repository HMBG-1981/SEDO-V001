/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/SeleniumTests/SeleneseIT.java to edit this template
 */
package servlets;

import jakarta.servlet.ServletException;
import static org.mockito.Mockito.*;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import org.junit.jupiter.api.Test;
import org.mockito.Mockito;

import java.io.IOException;

public class SvindexIT_1 {

    @Test
    public void testDoGet_NoRole() throws IOException, ServletException {
        Svindex servlet = new Svindex();
        HttpServletRequest request = Mockito.mock(HttpServletRequest.class);
        HttpServletResponse response = Mockito.mock(HttpServletResponse.class);

        when(request.getParameter("role")).thenReturn(null);

        servlet.doGet(request, response);

        verify(response).sendRedirect("01index.jsp");
    }

    @Test
    public void testDoGet_AdminRole() throws IOException, ServletException {
        Svindex servlet = new Svindex();
        HttpServletRequest request = Mockito.mock(HttpServletRequest.class);
        HttpServletResponse response = Mockito.mock(HttpServletResponse.class);

        when(request.getParameter("role")).thenReturn("Administrador");

        servlet.doGet(request, response);

        verify(response).sendRedirect("03ingreso_empleados.jsp");
    }

    @Test
    public void testDoGet_EmployeeRole() throws IOException, ServletException {
        Svindex servlet = new Svindex();
        HttpServletRequest request = Mockito.mock(HttpServletRequest.class);
        HttpServletResponse response = Mockito.mock(HttpServletResponse.class);

        when(request.getParameter("role")).thenReturn("Empleado");

        servlet.doGet(request, response);

        verify(response).sendRedirect("03ingreso_empleados.jsp");
    }

    @Test
    public void testDoGet_CustomersRole() throws IOException, ServletException {
        Svindex servlet = new Svindex();
        HttpServletRequest request = Mockito.mock(HttpServletRequest.class);
        HttpServletResponse response = Mockito.mock(HttpServletResponse.class);

        when(request.getParameter("role")).thenReturn("Clientes");

        servlet.doGet(request, response);

        verify(response).sendRedirect("02ingreso_clientes.jsp");
    }
}
