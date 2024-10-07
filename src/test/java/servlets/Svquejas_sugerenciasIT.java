/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/UnitTests/JUnit4TestClass.java to edit this template
 */

package servlets;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import org.junit.After;
import org.junit.AfterClass;
import org.junit.Before;
import org.junit.BeforeClass;
import org.junit.Test;
import org.mockito.Mockito;

import java.io.PrintWriter;
import java.io.StringWriter;

import static org.junit.Assert.*;

public class Svquejas_sugerenciasIT {

    public Svquejas_sugerenciasIT() {
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

    @Test
    public void testDoPost() throws Exception {
        System.out.println("doPost");

        // Crear mocks de HttpServletRequest y HttpServletResponse
        HttpServletRequest request = Mockito.mock(HttpServletRequest.class);
        HttpServletResponse response = Mockito.mock(HttpServletResponse.class);

        // Simular los parámetros del request
        Mockito.when(request.getCharacterEncoding()).thenReturn("UTF-8");
        Mockito.when(request.getParameter("nombre")).thenReturn("Juan");
        Mockito.when(request.getParameter("correo")).thenReturn("juan@example.com");
        Mockito.when(request.getParameter("mensaje")).thenReturn("Este es un mensaje de prueba.");

        // Crear un StringWriter para capturar la salida del PrintWriter
        StringWriter stringWriter = new StringWriter();
        PrintWriter printWriter = new PrintWriter(stringWriter);

        // Simular el comportamiento de getWriter para que devuelva el PrintWriter simulado
        Mockito.when(response.getWriter()).thenReturn(printWriter);

        // Crear instancia de la clase a probar
        Svquejas_sugerencias instance = new Svquejas_sugerencias();
        instance.doPost(request, response);

        // Verificar que se llamó al método setCharacterEncoding en el request
        Mockito.verify(request).setCharacterEncoding("UTF-8");

        // Verificar que se escribió el mensaje esperado en la respuesta
        printWriter.flush(); // Asegurarse de que todo se haya escrito
        assertEquals("Gracias por enviar tus comentarios, tu opinion es muy importante para nosotros.", stringWriter.toString().trim());
    }
}
