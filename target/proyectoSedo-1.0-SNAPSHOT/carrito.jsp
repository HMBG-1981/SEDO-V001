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
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            margin: 0;
            padding: 20px;
        }

        .container {
            max-width: 800px;
            margin: auto;
            background: #fff;
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

    </style>
</head>
<body>
    <div class="container">
        <h1>Carrito de Compras</h1>
        <form action="PedidoServlet" method="POST">
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
                <tbody>
                    <% 
                        String[] productos = request.getParameterValues("productos");
                        double total = 0.0;

                        if (productos != null) {
                            for (String producto : productos) {
                                String[] partes = producto.split(":");
                                String nombre = partes[0];
                                double precio = Double.parseDouble(partes[1]);
                                int cantidad = partes.length > 2 ? Integer.parseInt(partes[2]) : 1; // Default cantidad: 1
                                double totalProducto = precio * cantidad;
                                total += totalProducto;
                    %>
                    <tr>
                        <td><%= nombre %></td>
                        <td>$<%= String.format("%.2f", precio) %></td>
                        <td class="quantity-control">
                            <button type="button" onclick="updateQuantity('<%= nombre %>', 'decrease')">-</button>
                            <input type="number" name="cantidad_<%= nombre %>" value="<%= cantidad %>" min="1">
                            <button type="button" onclick="updateQuantity('<%= nombre %>', 'increase')">+</button>
                        </td>
                        <td>$<%= String.format("%.2f", totalProducto) %></td>
                        <td><button type="button" class="remove-btn" onclick="removeProduct('<%= nombre %>')">Eliminar</button></td>
                        <input type="hidden" name="productos" value="<%= nombre + ":" + precio + ":" + cantidad %>"> <!-- Enviar al servlet -->
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
            <h2>Total: $<%= String.format("%.2f", total) %></h2>
            <button type="submit">Confirmar Pedido</button>
            <button type="button" onclick="window.location.href = 'productos.jsp'">Volver a Productos</button>
            <% } %>
        </form>
    </div>

    <script>
        // Función para aumentar o disminuir la cantidad de productos
        function updateQuantity(nombre, action) {
            let input = document.querySelector(`input[name='cantidad_${nombre}']`);
            let currentQuantity = parseInt(input.value);
            if (action === 'increase') {
                input.value = currentQuantity + 1;
            } else if (action === 'decrease' && currentQuantity > 1) {
                input.value = currentQuantity - 1;
            }
            // Aquí puedes agregar lógica para actualizar el carrito dinámicamente si es necesario
        }

        // Función para eliminar productos
        function removeProduct(nombre) {
            let row = document.querySelector(`input[name='cantidad_${nombre}']`).closest('tr');
            row.remove();
            // Aquí puedes agregar lógica para eliminar el producto del carrito dinámicamente si es necesario
        }
    </script>
</body>
</html>



