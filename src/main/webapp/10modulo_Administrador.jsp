<%-- 
    Document   : 10modulo_Administrador
    Created on : 15/08/2024, 12:58:34?p.?m.
    Author     : jedab
--%>

<!DOCTYPE html>
<html lang="en">
    <head>
        <title>Modulo Administrador SEDO</title>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
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
                margin-top: 3%;
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

            .search-panel, .orders-panel {
                margin-top: 20px;
            }

            .settings-container {
                position: absolute;
                top: 20px;
                right: 65px;
                text-align: center;
            }

            /* Estilo del ícono */
            .settings-icon {
                font-size: 38px;
                color: #17202a;
                cursor: pointer;
            }

            /* Estilo del texto debajo del ícono */
            .settings-text {
                font-size: 20px;
                color: #17202a;
                margin-top: 5px;
            }
        </style>
        <script>
            function cargarPedidos() {
                fetch('PedidosServlet')
                        .then(response => response.json())
                        .then(data => {
                            const tableBody = document.getElementById('ordersTableBody');
                            tableBody.innerHTML = '';

                            data.forEach(pedido => {
                                const row = document.createElement('tr');
                                row.innerHTML = `
                                <td>${pedido.id}</td>
                                <td>${pedido.cliente}</td>
                                <td>${pedido.fecha}</td>
                                <td>${pedido.producto}</td>
                                <td>${pedido.cantidad}</td>
                                <td>${pedido.total}</td>
                            `;
                                tableBody.appendChild(row);
                            });
                        })
                        .catch(error => console.error('Error al cargar los pedidos:', error));
            }

            function agregarPedido() {
                // Función para agregar un nuevo pedido, puede realizarse mediante una llamada POST al servlet
            }

            function imprimirPedido() {
                window.print();
            }

            function cerrarSesion() {
                if (confirm("¿Estás seguro de que quieres salir del sistema?")) {
                    window.location.href = '01index.jsp';
                }
            }

            function buscarPedidos() {
                alert("Función de búsqueda aún no implementada.");
            }

            function registrarEmpleado() {
                window.location.href = '11registro_empleados.jsp';
            }

            function registrarProductos() {
                window.location.href = '05ingresar_actualizar_productos.jsp';
            }

            document.addEventListener('DOMContentLoaded', function () {
                cargarPedidos();
                setInterval(cargarPedidos, 5000); // Actualiza los pedidos cada 5 segundos
            });
        </script>

    </head>
    <body>       

        <div class="container mt-3">
            <p>Bienvenidos, Módulo del Administrador</p>
            <h1>ADMINISTRADOR</h1>

            <div class="btn">
                <button type="button" class="btn btn-secondary" onclick="imprimirPedido()">Imprimir Pedidos</button>
                <button type="button" class="btn btn-secondary" onclick="registrarEmpleado()">Registrar Empleados</button>
                <button type="button" class="btn btn-secondary" onclick="registrarProductos()">Registrar Productos</button>
                <button type="button" class="btn btn-secondary" onclick="cerrarSesion()">Cerrar Sesión</button>
            </div>
            <div class="settings-container">
                <a href="pagina_configuracion.html">
                    <i class="fas fa-cog settings-icon"></i>
                    <div class="settings-text">Configuración</div>
                </a>
            </div>


            <div class="search-panel">
                <input type="text" class="form-control" placeholder="Buscar en la base de datos">
                <button type="button" class="btn btn-primary mt-2" onclick="buscarPedidos()">Buscar</button>
            </div>

            <div class="contenedor orders-panel">
                <h2>Pedidos</h2>
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
                    <tbody id="ordersTableBody">
                        <!-- Las filas de la tabla se llenarán dinámicamente -->
                    </tbody>
                </table>
            </div>
        </div>
    </body>
</html>

