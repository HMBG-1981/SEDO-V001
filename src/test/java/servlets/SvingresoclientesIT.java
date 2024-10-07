/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/UnitTests/JUnit4TestClass.java to edit this template
 */
package servlets;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import org.junit.After;
import org.junit.AfterClass;
import org.junit.Before;
import org.junit.BeforeClass;
import org.junit.Test;
import org.mockito.Mockito;

import static org.mockito.Mockito.*;
import static org.junit.Assert.*;

public class SvingresoclientesIT {

    public SvingresoclientesIT() {
    }

    @BeforeClass
    public static void setUpClass() {
    }

    @AfterClass
    public static void tearDownClass() {
    }

    @Before
    public void setUp() {
    }

    @After
    public void tearDown() {
    }

    /**
     * Test of doGet method, of class Svingresoclientes.
     */
    @Test
    public void testDoGet() throws Exception {
        System.out.println("doGet");
        HttpServletRequest request = mock(HttpServletRequest.class);
        HttpServletResponse response = mock(HttpServletResponse.class);

        // Configurar comportamiento simulado
        when(request.getParameter("someParameter")).thenReturn("someValue");

        Svingresoclientes instance = new Svingresoclientes();
        instance.doGet(request, response);

        // Verificar que se redirige a la URL correcta
        verify(response).sendRedirect(anyString());
    }

    /**
     * Test of doPost method, of class Svingresoclientes.
     */
    @Test
    public void testDoPost() throws Exception {
        System.out.println("doPost");
        HttpServletRequest request = mock(HttpServletRequest.class);
        HttpServletResponse response = mock(HttpServletResponse.class);
        RequestDispatcher dispatcher = mock(RequestDispatcher.class);

        // Configurar comportamiento simulado
        when(request.getParameter("someParameter")).thenReturn("someValue");

        // Simular que getRequestDispatcher devuelve un dispatcher válido
        when(request.getRequestDispatcher(anyString())).thenReturn(dispatcher);

        Svingresoclientes instance = new Svingresoclientes();
        instance.doPost(request, response);

        // Verificar que el dispatcher.forward() fue llamado
        verify(dispatcher).forward(request, response);
    }
}

