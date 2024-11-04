<%-- 
    Document   : 06home_usuarios
    Created on : 17/07/2024, 12:27:03 p. m.
    Author     : jedab
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <title>Home - Usuarios</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>

        <meta charset="utf-8">

        <style>
            * {
                margin: 0;
                padding: 0;
                font-family: Georgia, 'Times New Roman', Times, serif;
                text-align: center;
            }

            body {
                display: inline-block;
                background: url(img/upload-816230812391.png) no-repeat;
                background-size: 100% 100%;
                background-attachment: fixed;
                margin-top: 10px;
            }

            h1 {
                color: rgb(21, 255, 0);
                margin-top: 250px;
                text-shadow: 2px 2px 0 rgb(17, 16, 16), 2px -2px 0 rgb(7, 7, 7), -1px -1px 0 rgb(0, 0, 0);
            }

            .row img {
                margin-top: -50%;
                width: 30%;
            }

            .btn-custom {
                background-color: #72e85f;
                border-color: #72e85f;
                color: black;
                width: 220px;
                padding: 5px;
                box-shadow: 7px 13px 37px #000;
                margin-top: 20px;
            }

            .dropdown-item {
                background-color: rgb(203, 248, 99);
                color: rgb(3, 121, 13);
            }

            p {
                margin-top: 1px;
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

        <p>Bienvenido, Ingreso Exitoso!!!</p>
        <h1>HOME CLIENTES</h1>

        <div class="container mt-3">

            <div class="row">        
                <div class="col">                                 
                    <img src="img/Logo02.jpg" width="100%">
                </div>           
            </div>
        </div>
        <!-- Reloj -->
        <div id="clock"></div>


        <form action="home" method="get">
            <button class="btn btn-custom" name="role" value="Productos">Productos</button>
            <button class="btn btn-custom" name="role" value="Sugerencias">Quejas y Sugerencias</button>
            <button class="btn btn-custom" name="role" value="Salir">Cerrar Sesión</button>
        </form> 

        <p>SERVICIO DE VIERNES A DOMINGO, Y FESTIVOS</p>
        <p>18:00pm a 24:00pm</p>
        <footer>
            <img src="img/pngegg.png" alt="Copyright" class="copyright-logo">
            <b>2024. Todos los derechos reservados. SEDO-CRA V1.0.0</b>
        </footer
    </body>
</html>
