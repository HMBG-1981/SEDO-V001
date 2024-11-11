<%-- 
    Document   : carrito
    Created on : 11/10/2024, 5:01:08 p. m.
    Author     : jedab
--%>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="es">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Carrito de Compras</title>
        <link rel="stylesheet" href="styles.css">
        <style>
            body {
                font-family: 'Times New Roman', Times, serif;
                background-image: url('img/Fondo1.png'); /* Fondo */
                background-repeat: no-repeat;
                background-size: 100% 100%;
                background-attachment: fixed;
                background-size: cover; /* Ajusta la imagen de fondo */
                background-position: center; /* Centra la imagen de fondo */
                background-color: #ffecb3;
                margin: 0;
                padding: 20px;
            }

            .container {
                max-width: 800px;
                margin: auto;
                background: #ffd54f;
                padding: 20px;
                border-radius: 8px;
                box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            }

            h1, h2 {
                text-align: center;
                color: #333;
            }

            table {
                width: 100%;
                border-collapse: collapse;
                margin-top: 20px;
            }

            table th, table td {
                border: 1px solid #ddd;
                padding: 8px;
                text-align: left;
            }

            table th {
                background-color: #4CAF50;
                color: white;
            }

            table tr:nth-child(even) {
                background-color: #f2f2f2;
            }

            table tr:hover {
                background-color: #ddd;
            }

            img {
                width: 100px;
                height: auto;
            }

            .quantity-control {
                display: flex;
                align-items: center;
            }

            .quantity-control button {
                padding: 5px;
                margin: 0 5px;
                background-color: #4CAF50;
                color: white;
                border: none;
                cursor: pointer;
            }

            .quantity-control input[type="number"] {
                width: 60px;
                padding: 5px;
                text-align: center;
                border: 1px solid #ccc;
                border-radius: 4px;
            }

            .remove-btn {
                background-color: #f44336;
                color: white;
                border: none;
                cursor: pointer;
            }
            footer {
                margin-top: 15px;
                font-size: 90%;
                color: #49ff00;
                position: absolute; /* Posicionamiento absoluto */
                bottom: 10px; /* Ajustar según sea necesario */
                left: 10px; /* Ajustar según sea necesario */
                text-align: left; /* Alinear texto a la izquierda */
                text-shadow:
                    -1px -1px 0 black,  /* Sombra arriba a la izquierda */
                    1px -1px 0 black,  /* Sombra arriba a la derecha */
                    -1px  1px 0 black,  /* Sombra abajo a la izquierda */
                    1px  1px 0 black;  /* Sombra abajo a la derecha */
            }
            /* Tamaño y alineación del logotipo de derechos de autor en el pie de página */
            .copyright-logo {
                width: 20px; /* Ajuste de tamaño */
                vertical-align: middle; /* Alineación vertical con el texto */
            }

        </style>
    </head>
    <body>
        <div class="container">
            <h1>Carrito de Compras</h1>
            <form id="carrito-form" action="PedidoServlet" method="POST">
                <table>
                    <thead>
                        <tr>
                            <th>Nombre del Producto</th>
                            <th>Precio</th>
                            <th>Cantidad</th>
                            <th>Total</th>
                            <th>Acciones</th>
                        </tr>
                    </thead>
                    <tbody id="carrito-body">
                        <% 
                            String[] productos = request.getParameterValues("productos");
                            double total = 0.0;

                            if (productos != null) {
                                for (String producto : productos) {
                                    String[] partes = producto.split(":");
                                    String nombre = partes[0];
                                    double precio = Double.parseDouble(partes[1]);
                                    int cantidad = partes.length > 2 ? Integer.parseInt(partes[2]) : 1;
                                    double totalProducto = precio * cantidad;
                                    total += totalProducto;
                        %>
                        <tr id="<%= nombre %>">
                            <td><%= nombre %></td>
                            <td>$<%= String.format("%.2f", precio) %></td>
                            <td class="quantity-control">
                                <button type="button" onclick="updateQuantity('<%= nombre %>', 'decrease')">-</button>
                                <input type="number" name="cantidad_<%= nombre %>" value="<%= cantidad %>" min="1" onchange="updateQuantity('<%= nombre %>', 'custom')">
                                <button type="button" onclick="updateQuantity('<%= nombre %>', 'increase')">+</button>
                            </td>
                            <td class="total-producto">$<%= String.format("%.2f", totalProducto) %></td>
                            <td><button type="button" class="remove-btn" onclick="removeProduct('<%= nombre %>', <%= totalProducto %>)">Eliminar</button></td>
                    <input type="hidden" name="productos" value="<%= nombre + ":" + precio + ":" + cantidad %>"> 
                    </tr>
                    <% 
                            }
                        } else {
                    %>
                    <tr>
                        <td colspan="5">No hay productos en el carrito.</td>
                    </tr>
                    <% 
                        }
                    %>
                    </tbody>
                </table>

                <% if (productos != null && productos.length > 0) { %>
                <h2>Total: $<span id="total-a-pagar"><%= String.format("%.2f", total) %></span></h2>
                <button type="submit">Confirmar Pedido</button>
                <button type="button" onclick="window.location.href = 'productos.jsp'">Volver a Productos</button>
                <% } %>
            </form>
        </div>

        <script>
        let totalPagar = <%= total %>;

        function updateQuantity(nombre, action) {
            let row = document.getElementById(nombre);
            let input = row.querySelector("input[name='cantidad_" + nombre + "']");
            let currentQuantity = parseInt(input.value);
            let precio = parseFloat(row.cells[1].innerText.substring(1)); // Extraer precio sin el signo '$'

            if (action === 'increase') {
                currentQuantity++;
            } else if (action === 'decrease' && currentQuantity > 1) {
                currentQuantity--;
            } else if (action === 'custom') {
                currentQuantity = Math.max(1, currentQuantity); // No permitir que la cantidad sea menor a 1
            }

            // Actualizar el valor de la cantidad
            input.value = currentQuantity;

            // Calcular el nuevo total del producto
            let totalProducto = precio * currentQuantity;
            row.querySelector(".total-producto").innerText = "$" + totalProducto.toFixed(2);

            // Actualizar el total global
            totalPagar = calculateTotal();
            document.getElementById("total-a-pagar").innerText = "$" + totalPagar.toFixed(2);
        }

        function removeProduct(nombre, totalProducto) {
            // Eliminar la fila del carrito
            let row = document.getElementById(nombre);
            row.remove();

            // Restar el total del producto eliminado
            totalPagar -= totalProducto;

            // Actualizar el total
            document.getElementById("total-a-pagar").innerText = "$" + totalPagar.toFixed(2);
        }

        function calculateTotal() {
            let total = 0.0;
            document.querySelectorAll(".total-producto").forEach(function (cell) {
                total += parseFloat(cell.innerText.substring(1)); // Extraer precio sin el signo '$'
            });
            return total;
        }
        </script>
        <footer>
            <img src="img/pngegg.png" alt="Copyright" class="copyright-logo">
            2024. Todos los derechos reservados. SEDO-CRA V1.0.0
        </footer>
    </body>
</html>
