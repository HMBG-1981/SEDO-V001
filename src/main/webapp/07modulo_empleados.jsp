<%-- 
    Document   : 07modulo_empleados.jsp
    Created on : 17/07/2024, 12:19:47 p. m.
    Author     : jedab
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Módulo de Empleados SEDO</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
        <style>
            * {
                margin: 0;
                padding: 0;
                font-family: Georgia, 'Times New Roman', Times, serif;
                text-align: center;
            }

            body {
                background: url('img/upload-816230812391.png') no-repeat center center fixed;
                background-size: cover;
            }

            h1 {
                font-size: 45px;
                color: rgb(21, 255, 0);
                text-shadow: 2px 2px 0 rgb(17, 16, 16), 2px -2px 0 rgb(7, 7, 7), -1px -1px 0 rgb(0, 0, 0);
                margin-top: 20px;
            }

            .contenedor {
                background-color: #74ff63;
                padding: 2px;
                border-radius: 10px;
                box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
                margin-top: 20px;
            }

            img {
                max-width: 25%;
                height: auto;
                border-radius: 10px;
                margin-top: 20px;
            }

            .btn-secondary {
                padding: 1%;
                margin: 5px;
                color: #000;
                background-color: #1db50b;
            }

            p {
                margin-top: 0px;
                font-size: 35px;
                font-family: fantasy;
                color: rgb(21, 255, 0);
                text-shadow: 2px 2px 0 rgb(17, 16, 16), 2px -2px 0 rgb(7, 7, 7), -1px -1px 0 rgb(0, 0, 0);
            }

            /* Estilos para el reloj */
            #clock {
                background-color: black;
                padding: 10px;
                width: 150px;
                font-size: 24px;
                color: rgb(21, 255, 0);
                position: absolute;
                top: 10px;
                right: 10px;
                text-align: center;
                border-radius: 5px;
                box-shadow: 0 0 10px rgba(0, 0, 0, 0.5);
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
        <script>
            function actualizarHora() {
                const ahora = new Date();
                const horas = String(ahora.getHours()).padStart(2, '0');
                const minutos = String(ahora.getMinutes()).padStart(2, '0');
                const segundos = String(ahora.getSeconds()).padStart(2, '0');
                document.getElementById('clock').textContent = horas + ":" + minutos + ":" + segundos;
            }

            setInterval(actualizarHora, 1000);

            function confirmarLogout() {
                return confirm("¿Estás seguro de que deseas cerrar sesión?");
            }
        </script>
    </head>
    <body>
        <div class="container mt-3">
            <p>Bienvenidos, Ingreso Exitoso!!!</p>
            <h1>EMPLEADOS</h1>

            <!-- Reloj -->
            <div id="clock"></div>

            <div class="row">
                <div class="col">
                    <img src="img/Logo02.jpg" alt="Logo" />
                </div>
            </div>

            <div class="contenedor">
                <form method="POST" action="SvModuloEmpleados">
                    <div class="button-container">
                        <button class="btn btn-secondary" type="submit" name="action" value="Pedidos">Pedidos</button>
                        <button class="btn btn-secondary" type="submit" name="action" value="Clientes">Clientes</button>
                        <button class="btn btn-secondary" type="submit" name="action" value="Productos">Productos</button>                        
                        <button class="btn btn-secondary" type="submit" onclick="return confirmarLogout();">Cerrar Sesión</button>
                        <input type="hidden" name="action" value="Logout">
                    </div>
                </form>
            </div>

            <p>"Cada pequeño paso que damos nos acerca al éxito." <br>¡Gracias por ser parte de este gran equipo!</p>
            <footer>
                <img src="img/pngegg.png" alt="Copyright" class="copyright-logo">
                <b>2024. Todos los derechos reservados. SEDO-CRA V1.0.0</b>
            </footer
        </div>
    </body>
</html>
