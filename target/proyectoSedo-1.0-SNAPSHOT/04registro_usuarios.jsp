<%-- 
    Document   : 04registro_usuarios
    Created on : 15/08/2024, 3:30:15 p. m.
    Author     : jedab
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Registro Clientes</title>
        <style>
            /*CSS Estilo: Se utilizan estilos CSS para dar formato y diseño a los elementos de la página. Aquí se 
            establecen propiedades como márgenes, tamaños de letra, colores de fondo, sombras y bordes redondeados.*/
            * {
                margin: 0;
                padding: 0;
                box-sizing: border-box;
            }

            body {
                background-image: url(img/Fondo1.png);
                display: flex;
                justify-content: center;
                align-items: center;
                min-height: 100vh; /* Para ocupar toda la altura de la ventana */
                background-repeat: no-repeat;
                background-size: cover;
                background-attachment: fixed;
            }

            h1 {
                margin-top: 1%;
                text-align: center;
                color: rgb(187, 255, 0);
                font-size: 35px;
                text-shadow: 2px 2px 0 rgb(17, 16, 16), 2px -2px 0 rgb(7, 7, 7), -1px -1px 0 rgb(0, 0, 0);
            }

            form {
                width: 600px; /* Ampliar el ancho del formulario */
                background: rgb(0, 0, 0);
                padding: 25px;
                border-radius: 4px;
                font-family: 'Times New Roman', Times, serif;
                color: rgb(255, 255, 255);
                box-shadow: 7px 13px 37px #000;
            }

            h4 {
                font-size: 22px;
                margin-bottom: 20px;
                text-align: center;
            }

            .controls {
                width: 100%;
                background: rgb(179, 255, 0);
                padding: 5px;
                border: 4px;
                margin-bottom: 10px;
                border: 1px solid #00d9ff;
                font-family: 'Times New Roman', Times, serif;
                font-size: 14px;
            }


            p {
                margin-top: -10px;
                height: 40px;
                text-align: center;
                font-size: 18px;
                line-height: 40px;
            }

            button {
                width: 100%;
                background: #002bff;
                border: none;
                padding: 10px;
                color: Black;
                margin: 3px 0;
                font-size: 16px;
                cursor: pointer;
                opacity: 0.7;
            }

            button:disabled {
                cursor: not-allowed;
                opacity: 0.5;
            }

            b {
                width: 100%;
                background: rgb(179, 255, 0);
                padding: 5px;
                border: 4px;
                margin-bottom: 16px;
                border: 1px solid #00d9ff;
                font-family: 'Times New Roman', Times, serif;
                font-size: 14px;
                color: rgb(0, 0, 0);
            }

            select {
                width: 100%;
                background: rgb(255, 255, 255);
                padding: 5px;
                border: 4px;
                margin-bottom: 16px;
                border: 1px solid #00d9ff;
                font-family: 'Times New Roman', Times, serif;
                font-size: 14px;
                color: rgb(0, 0, 0);
            }

            .inline-fields {
                display: flex;
                justify-content: space-between;
                margin-bottom: 16px;
            }

            .inline-fields > div {
                width: 48%;
            }


            .checkbox {
                display: flex;
                align-items: center;
                margin-bottom: 10px;
                font-size: 16px;
            }

            .checkbox input {
                margin-right: 10px;
            }

            .go-to-index-btn {
                position: fixed;
                bottom: 20px;
                right: 20px;
                padding: 10px 20px;
                background-color: #1900ff;
                color: white;
                text-decoration: none;
                border-radius: 5px;
                box-shadow: 2px 2px 10px rgba(0, 0, 0, 0.3);
                font-size: 16px;
                transition: background-color 0.3s;
                text-decoration: underline;
            }

            .go-to-index-btn:hover {
                background-color: #45a049;
            }

            footer {
                margin-top: 15px;
                font-size: 90%;
                color: #49ff00;
                position: absolute; /* Posicionamiento absoluto */
                bottom: 10px; /* Ajustar según sea necesario */
                left: 10px; /* Ajustar según sea necesario */
                text-align: left; /* Alinear texto a la izquierda */
            }
            .copyright-logo {
                width: 20px; /* Ajusta el tamaño según necesites */
                vertical-align: middle; /* Centra verticalmente con el texto */
            }
        </style>
    </head>
    <body>
        <!-- Formulario de registro de clientes que envía los datos al servlet "UserRegistration" mediante el método POST -->
        <form action="UserRegistration" method="post" onsubmit="return validateForm()">
            <h1>CLIENTES</h1> <!-- Título principal de la página -->
            <h4>REGISTRO CLIENTES</h4> <!-- Subtítulo del formulario de registro -->

            <!-- Campo de selección para el tipo de documento y tipo de usuario -->
            <div class="inline-fields">
                <div>
                    <b>Tipo De Documento</b>
                    <!-- Selección del tipo de documento requerido para el registro -->
                    <select name="tipoDocumento" required>
                        <option value="">---------</option>
                        <option value="1">Cédula de Ciudadanía</option>
                        <option value="2">Cédula de Extranjería</option>
                        <option value="3">Tarjeta de Identidad</option>
                        <option value="4">Registro Civil</option>
                        <option value="5">Pasaporte</option>
                    </select>
                </div>
                <div>
                    <b>Tipo De Usuario</b>
                    <!-- Selección del tipo de usuario, sólo disponible para el rol de cliente -->
                    <select name="tipoUsuario" required>
                        <option value="">-----------</option>
                        <option value="3">Cliente</option>
                    </select>
                </div>
            </div>

            <!-- Campos de entrada para datos personales del cliente -->
            <div class="inline-fields">
                <div>
                    <!-- Campo para el número de documento del cliente -->
                    <input class="controls" name="documento" id="documento" placeholder="Número de Documento" required>
                    <!-- Campo para los nombres del cliente -->
                    <input class="controls" type="text" name="nombres" id="nombres" placeholder="Nombres" required>
                </div>
                <div>
                    <!-- Campo para los apellidos del cliente -->
                    <input class="controls" type="text" name="apellidos" id="apellidos" placeholder="Apellidos" required>
                    <!-- Campo para la dirección del cliente -->
                    <input class="controls" type="text" name="direccion" id="direccion" placeholder="Dirección" required>
                </div>
            </div>

            <!-- Campos adicionales para el teléfono, correo y contraseña -->
            <input class="controls" type="text" name="telefono" id="telefono" placeholder="Número de Teléfono" required>
            <input class="controls" type="email" name="correo" id="correo" placeholder="Email" required>
            <input class="controls" type="password" name="contraseña" id="contraseña" placeholder="Contraseña" required>

            <!-- Checkbox para aceptar términos y condiciones -->
            <div class="checkbox">
                <input type="checkbox" id="termsCheckbox" onclick="toggleSubmitButton()" required>
                <label for="termsCheckbox">Estoy de acuerdo con <a href="otros/terminosycondiciones.jsp">Términos y Condiciones</a></label>
            </div>

            <!-- Botones de acción para registrar o actualizar el usuario -->
            <button class="btn-a" type="submit" name="action" value="register" id="registerBtn" disabled>Registrar</button>
            <button class="btn-a" type="submit" name="action" value="update" id="updateBtn" disabled>Actualizar</button>

            <!-- Enlace para usuarios que ya tienen una cuenta -->
            <p><a href="01index.jsp">¿Ya tengo Cuenta?</a></p>
        </form>        

        <!-- Scripts para manejar el formulario -->
        <script>
            // Función para habilitar o deshabilitar los botones de registro y actualización según el estado del checkbox de términos
            function toggleSubmitButton() {
                const termsCheckbox = document.getElementById('termsCheckbox');
                const registerBtn = document.getElementById('registerBtn');
                const updateBtn = document.getElementById('updateBtn');
                registerBtn.disabled = !termsCheckbox.checked;
                updateBtn.disabled = !termsCheckbox.checked;
            }

            // Función para validar que todos los campos obligatorios estén completos antes de enviar el formulario
            function validateForm() {
                const form = document.querySelector('form');
                const inputs = form.querySelectorAll('input[required], select[required]');
                let valid = true;

                inputs.forEach(input => {
                    if (!input.value) {
                        valid = false;
                    }
                });

                if (!valid) {
                    alert('Por favor, completa todos los campos.');
                }

                return valid; // Retorna false si faltan campos, lo que impide el envío del formulario
            }
        </script>

        <!-- Enlace para regresar a la página de inicio -->
        <a href="01index.jsp" class="go-to-index-btn">Ir a Inicio</a>

        <!-- Pie de página con copyright -->
        <footer>
            <img src="img/pngegg.png" alt="Copyright" class="copyright-logo">
            2024. Todos los derechos reservados. SEDO-CRA V1.0.0
        </footer>
    </body>

</html>
