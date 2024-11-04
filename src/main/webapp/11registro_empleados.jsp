<%-- 
    Document   : 11registro_empleados
    Created on : 15/08/2024, 3:30:15 p. m.
    Author     : jedab
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Registrar Usuario</title>
        <style>
            /*CSS Estilo: Se utilizan estilos CSS para dar formato y diseño a los elementos de la página. Aquí se 
            establecen propiedades como márgenes, tamaños de letra, colores de fondo, sombras y bordes redondeados.*/
            * {
                margin: 0;
                padding: 0;
                box-sizing: border-box;
            }

            body {
                background-image: url(img/upload-816230812391.png);
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
                background: #1900ff;
                border: none;
                padding: 10px;
                color: white;
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
        <form action="UserEmpleado" method="post" onsubmit="return validateForm()">
            <h1>EMPLEADOS</h1>
            <h4>REGISTRO</h4>
            <div class="inline-fields">
                <div>
                    <b>Tipo De Documento</b>
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
                    <select name="tipoUsuario" required>
                        <option value="">-----------</option>
                        <option value="1">Administrador</option>
                        <option value="2">Empleados</option>
                    </select>
                </div>
            </div>
            <div class="inline-fields">
                <div>
                    <input class="controls" name="documento" id="documento" placeholder="Número de Documento" required>
                    <input class="controls" type="text" name="nombres" id="nombres" placeholder="Nombres" required>
                </div>
                <div>
                    <input class="controls" type="text" name="apellidos" id="apellidos" placeholder="Apellidos" required>
                    <input class="controls" type="text" name="direccion" id="direccion" placeholder="Dirección" required>
                </div>
            </div>
            <input class="controls" type="text" name="telefono" id="telefono" placeholder="Número de Teléfono" required>
            <input class="controls" type="email" name="correo" id="correo" placeholder="Email" required>
            <input class="controls" type="password" name="contraseña" id="contraseña" placeholder="Contraseña" required>

            <div class="checkbox">
                <input type="checkbox" id="termsCheckbox" onclick="toggleSubmitButton()" required>
                <label for="termsCheckbox">Estoy de acuerdo con <a href="otros/terminosycondiciones.jsp">Términos y Condiciones</a></label>
            </div>

            <button class="btn-a" type="submit" name="action" value="register" id="registerBtn" disabled>Registrar</button>
            <button class="btn-a" type="submit" name="action" value="update" id="updateBtn" disabled>Actualizar</button>

            <p><a href="01index.jsp">¿Ya tengo Cuenta?</a></p>
        </form>

        <script>
            function toggleSubmitButton() {
                const termsCheckbox = document.getElementById('termsCheckbox');
                const registerBtn = document.getElementById('registerBtn');
                const updateBtn = document.getElementById('updateBtn');
                registerBtn.disabled = !termsCheckbox.checked;
                updateBtn.disabled = !termsCheckbox.checked;
            }

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

                return valid;
            }
        </script>
        <footer>
            <img src="img/pngegg.png" alt="Copyright" class="copyright-logo">
            2024. Todos los derechos reservados. SEDO-CRA V1.0.0
        </footer
    </body>
</html>
