<%-- 
    Document   : 14ver_productos
    Created on : 8/10/2024, 4:29:18 p. m.
    Author     : jedab
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Buscar Productos</title>
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
                margin-top: 50px;
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
            table {
                width: 100%;
                border-collapse: collapse;
                margin-top: 20px;
                background-color: #74ff63;
            }
            th, td {
                border: 1px solid black;
                padding: 8px;
                text-align: left;
            }
            th {
                background-color: #f2f2f2;
            }
            input[type='submit'] {
                padding: 10px 20px;
            }
            input[type='submit']:hover {
                background-color: #218838;
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
        <h1>ASADOS ANGÉLICA</h1>
        <img src="img/Logo02.jpg" id="logo" alt="Logo">
        <div class="container mt-5 form-container">
            <h2 class="text-center">Lista de Productos</h2>
            <form action="BuscarProductosServlet" method="post">
                <div class="mb-3">
                    <label for="idProductos" class="form-label">Ingrese ID Producto:</label>
                    <input type="text" class="form-control" id="idProductos" name="idProductos" required>
                </div>
                <button type="submit" class="btn btn-primary">Buscar</button>
            </form>
        </div>
        <footer>
            <img src="img/pngegg.png" alt="Copyright" class="copyright-logo">
            2024. Todos los derechos reservados. SEDO-CRA V1.0.0
        </footer
    </body>
</html>
