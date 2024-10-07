/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/SeleniumTests/SeleneseIT.java to edit this template
 */
package servlets;

import org.junit.Test;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.firefox.FirefoxDriver;
import org.openqa.selenium.support.ui.ExpectedCondition;
import org.openqa.selenium.support.ui.WebDriverWait;

/**
 *
 * @author jedab
 */
public class Svhome_usuariosIT_1 {

    @Test
    public void testSimple() throws Exception {
        // Crea una nueva instancia del controlador de Firefox
        // Nota que el resto del código se basa en la interfaz,
        // no en la implementación.
        WebDriver driver = new FirefoxDriver();

        // Ahora usa esto para visitar la página de Home - Usuarios
        driver.get("http://localhost:8080/proyectoSedo/06home_usuarios.jsp");
        // Alternativamente, lo mismo se puede hacer así:
        // driver.navigate().to("http://localhost:8080/proyectoSedo/06home_usuarios.jsp");

        // Verifica el título de la página
        // Espera a que la página cargue, con un tiempo límite de 10 segundos
        (new WebDriverWait(driver, 10)).until(new ExpectedCondition<Boolean>() {
            @Override
            public Boolean apply(WebDriver d) {
                return d.getTitle().contains("Home - Usuarios");
            }
        });

        // Cierra el navegador
        driver.quit();
    }

}
