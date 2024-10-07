package servlets;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import org.junit.After;
import org.junit.Before;
import org.junit.Test;
import org.mockito.Mockito;
import static org.junit.Assert.*;
import static org.mockito.Mockito.*;

public class SvindexIT {

    private HttpServletRequest request;
    private HttpServletResponse response;
    private Svindex instance;

    @Before
    public void setUp() {
        // Crear simulaciones para HttpServletRequest y HttpServletResponse
        request = mock(HttpServletRequest.class);
        response = mock(HttpServletResponse.class);
        instance = new Svindex();
    }

    @After
    public void tearDown() {
        // Limpieza después de ejecutar cada test
    }

    @Test
    public void testDoGet() throws Exception {
        System.out.println("doGet");

        // Configurar los parámetros simulados
        when(request.getParameter("role")).thenReturn("Clientes");

        // Ejecutar el método doGet
        instance.doGet(request, response);

        // Verificar que setContentType haya sido llamado
        verify(response).setContentType("text/html");
    }

    @Test
    public void testDoPost() throws Exception {
        System.out.println("doPost");

        // Ejecutar el método doPost
        instance.doPost(request, response);

        // Verificar que setContentType haya sido llamado
        verify(response).setContentType("text/html");
    }
}
