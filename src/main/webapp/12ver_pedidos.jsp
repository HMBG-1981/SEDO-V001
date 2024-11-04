<%-- 
    Document   : ver_pedidos
    Created on : 8/10/2024, 1:10:24 p. m.
    Author     : jedab
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Buscar Pedido</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
        <style>
            body {
                background-image: url('img/upload-816230812391.png');
                background-size: cover;
                color: #333;
                font-family: 'Times New Roman', Times, serif;
            }
            h1 {
                text-align: center;
                font-size: 50px;
                color: rgb(21, 255, 0);
                text-shadow: 2px 2px 0 rgb(17, 16, 16), 2px -2px 0 rgb(7, 7, 7), -1px -1px 0 rgb(0, 0, 0);
                margin-top: 50px; /* Ajuste de margen superior */
            }
            #logo {
                max-width: 15%;
                display: block;
                margin: 0 auto;
                margin-top: 20px;
            }
            .form-container {
                background: #74ff63;
                padding: 20px;
                border-radius: 10px;
                margin-top: 20px;
            }
            input[type="text"] {
                padding: 10px;
                margin-top: 10px;
                width: 100%;
            }
            input[type="submit"] {
                margin-top: 10px;
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
        <h1>ASADOS ANGELICA</h1>
        <img src="img/Logo02.jpg" id="logo" alt="Logo">
        <div class="container mt-5 form-container">
            <h2 class="text-center">Buscar Pedido por ID</h2>
            <form action="BuscarPedidoServlet" method="post">
                <label for="idPedido">Ingrese el ID del Pedido:</label>
                <input type="text" id="idPedido" name="idPedido" required>
                <input type="submit" class="btn btn-primary" value="Buscar Pedido">
            </form>
        </div>
        <footer>
            <img src="img/pngegg.png" alt="Copyright" class="copyright-logo">
            2024. Todos los derechos reservados. SEDO-CRA V1.0.0
        </footer
    </body>
</html>

