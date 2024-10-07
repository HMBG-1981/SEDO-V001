<!DOCTYPE html>
<html lang="en">

<head>
    <title>Modulo Empleados SEDO</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
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
            background: url(img/upload-816230812391.png) no-repeat center center fixed;
            background-size: cover;
        }

        h1 {
            font-size: 50px;
            color: rgb(187, 255, 0);
            text-shadow: 2px 2px 0 rgb(17, 16, 16), 2px -2px 0 rgb(7, 7, 7), -1px -1px 0 rgb(0, 0, 0);
        }

        img {
            margin-right: 800px;
            max-width: 50%;
            height: 160px;
            border-radius: 10px;
        }

        .contenedor {
            background-color: #00d9ff;
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
            margin-top: 20px;
        }

        table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 20px;
        }

        th, td {
            padding: 10px;
            text-align: left;
            border-bottom: 1px solid #ccc;
        }

        th {
            background-color: #f0f0f0;
        }

        tr:hover {
            background-color: #f9f9f9;
        }

        .btn-secondary {
            margin: 5px;
            color: #000;
            background-color: #ccc;
        }

        p {
            margin-top: 5px;
            font-size: 40px;
            font-family: fantasy;
            color: rgb(21, 255, 0);
            text-shadow: 2px 2px 0 rgb(17, 16, 16), 2px -2px 0 rgb(7, 7, 7), -1px -1px 0 rgb(0, 0, 0);
        }
    </style>
    <script>
        function imprimirPedido() {
            window.print();
        }

        function actualizarEstadoPedido() {
            alert("Estado del pedido actualizado");
        }

        function cerrarSesion() {
            if (confirm("¿Estás seguro de que quieres salir del sistema?")) {
                window.location.href = '01index.jsp';
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
                <img src="img/0002.jpg">
            </div>            
        </div>
        <form action="processForm" method="POST">
            <div class="contenedor">
                <table>
                    <thead>
                        <tr>
                            <th>ID del Pedido</th>
                            <th>Cliente</th>
                            <th>Fecha</th>
                            <th>Producto</th>
                            <th>Cantidad</th>
                            <th>Total</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td>001</td>
                            <td>Juan Pérez</td>
                            <td>2024-07-01</td>
                            <td>Hamburguesa</td>
                            <td>2</td>
                            <td>$12.00</td>
                        </tr>
                        <tr>
                            <td>002</td>
                            <td>María López</td>
                            <td>2024-07-02</td>
                            <td>Papas Fritas</td>
                            <td>1</td>
                            <td>$3.00</td>
                        </tr>
                        <tr>
                            <td>003</td>
                            <td>Carlos Ruiz</td>
                            <td>2024-07-03</td>
                            <td>Bebida</td>
                            <td>3</td>
                            <td>$6.00</td>
                        </tr>
                    </tbody>
                </table>
            </div>
        </form>        
        <div class="btn">
            <button type="button" class="btn btn-secondary" onclick="imprimirPedido()">Imprimir</button>
            <button type="button" class="btn btn-secondary" onclick="cancelarPedido()">Cancelar Pedido</button>
            <button type="button" class="btn btn-secondary" onclick="actualizarEstadoPedido()">Estado del pedido</button>
            <button type="button" class="btn btn-secondary" onclick="cerrarSesion()">Cerrar Sesión</button>            
        </div> 
    </div>
</body>
</html>
