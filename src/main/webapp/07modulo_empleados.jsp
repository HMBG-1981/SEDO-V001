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
                font-size: 50px;
                color: rgb(21, 255, 0);
                text-shadow: 2px 2px 0 rgb(17, 16, 16), 2px -2px 0 rgb(7, 7, 7), -1px -1px 0 rgb(0, 0, 0);
                margin-top: 50px; /* Ajuste de margen superior */
            }

            .contenedor {
                background-color: #74ff63;
                padding: 20px;
                border-radius: 10px;
                box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
                margin-top: 20px;
            }

            img {
                max-width: 25%;
                height: auto;
                border-radius: 10px;
                margin-top: 20px; /* Espaciado adicional para la imagen */
            }

            .btn-secondary {
                padding: 3%;
                margin: 5px;
                color: #000;
                background-color: #1db50b;
            }

            p {
                margin-top: 5px;
                font-size: 35px;
                font-family: fantasy;
                color: rgb(21, 255, 0);
                text-shadow: 2px 2px 0 rgb(17, 16, 16), 2px -2px 0 rgb(7, 7, 7), -1px -1px 0 rgb(0, 0, 0);
            }
        </style>
        <script>
            function confirmLogout() {
                if (confirm("¿Estás seguro que deseas cerrar sesión?")) {
                    window.location.href = 'logout.jsp'; // Redirigir al servlet de cerrar sesión
                }
            }
        </script>
    </head>
    <body>
        <div class="container mt-3">
            <p>Bienvenidos, Ingreso Exitoso!!!</p>
            <h1>EMPLEADOS</h1>
            <div class="row">
                <div class="col">
                    <img src="img/Logo02.jpg" alt="Logo" />
                </div>
            </div>

            <div class="contenedor">
                    <div class="button-container">
                        <button class="btn btn-secondary" onclick="window.location.href = '12ver_pedidos.jsp'">Pedidos</button>
                        <button class="btn btn-secondary" onclick="window.location.href = 'consultar_clientes.jsp'">Clientes</button>
                        <button class="btn btn-secondary" onclick="window.location.href = 'consultar_productos.jsp'">Productos</button>
                        <button class="btn btn-secondary" onclick="window.print()">Imprimir</button>
                        <button class="btn btn-secondary" onclick="confirmLogout()">Cerrar Sesión</button>
                    </div>
            </div>

        </div>
    </body>
</html>

