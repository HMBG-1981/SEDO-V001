<%-- 
    Document   : 10modulo_Administrador
    Created on : 15/08/2024, 12:58:34?p.?m.
    Author     : jedab
--%>

<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Administrador - Empleados</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
    <style>
        body {
            font-family: Arial, sans-serif;
            background-image: url('img/upload-816230812391.png');
            background-size: cover;
            background-position: center;
            margin: 0;
            padding: 0;
            text-align: center;
        }
        h1 {
            font-size: 30px;
            color: rgb(21, 255, 0);
            text-shadow: 2px 2px 0 rgb(17, 16, 16), 2px -2px 0 rgb(7, 7, 7), -1px -1px 0 rgb(0, 0, 0);
        }
        .container {
            margin-left: 150px;
            margin-right: 150px;
            border-radius: 10px;
            display: inline-block;
        }
        .logo img {
            max-width: 25%;
            height: auto;
            border-radius: 10px;
        }
        .welcome-message {
            font-size: 18px;
            margin-bottom: 20px;
        }
        .buttons {
            background-color: #74ff63;
            display: flex;
            flex-wrap: wrap;
            justify-content: center;
            border-radius: 5px;
        }
        .buttons button {
            background-color: #1db50b;
            color: black;
            border: none;
            padding: 10px 10px;
            margin: 10px;
            cursor: pointer;
            font-size: 16px;
            border-radius: 5px;
            transition: background-color 0.3s;
            width: 200px; /* Tamaño fijo para los botones */
        }
        .buttons button:hover {
            background-color: #0056b3;
        }
        p {
            font-size: 50px;
            font-family: fantasy;
            color: rgb(21, 255, 0);
            text-shadow: 2px 2px 0 rgb(17, 16, 16), 2px -2px 0 rgb(7, 7, 7), -1px -1px 0 rgb(0, 0, 0);
        }
        .buttons button i {
            margin-right: 8px;
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
    </script>
</head>
<body>

    <div class="container">
        <!-- Mensaje de bienvenida -->
        <p>¡Bienvenido Administrador!</p>
        <!-- Logo centrado -->
        <div class="logo">
            <img src="img/Logo02.jpg" alt="Logo">
        </div>

        <!-- Título -->
        <h1>SEDO-CRA</h1>
        <!-- Reloj -->
        <div id="clock"></div>

        <!-- Botones en dos filas -->
        <div class="buttons">
            <!-- Primera fila de botones -->
            <button onclick="window.location.href = '12ver_pedidos.jsp'"><b>Pedidos del Día</b></button>
            <button onclick="window.location.href = '13consultar_clientes.jsp'"><b>Consultar Clientes</b></button>
            <button onclick="window.location.href = '14ver_productos.jsp'"><b>Consultar Productos</b></button>
            <button onclick="window.location.href = '11registro_empleados.jsp'"><b>Registrar Empleados</b></button>

            <!-- Segunda fila de botones -->
            <button onclick="window.location.href = '05ingresar_actualizar_productos.jsp'"><b>Registrar Productos</b></button>
            <button onclick="window.location.href = 'modulo_otros1.jsp'"><b>Otros1</b></button>
            <button onclick="window.location.href = '15Ajustes.jsp'">
                <i class="fas fa-cog"></i> <b>Ajustes Sistema</b>
            </button>
            <button onclick="cerrarSesion()"><b>Cerrar Sesión</b></button>
        </div>
        <footer>
            <img src="img/pngegg.png" alt="Copyright" class="copyright-logo"> <b>2024. Todos los derechos reservados. SEDO-CRA V1.0.0<b>
        </footer>
    </div>

    <!-- Script para cerrar sesión con confirmación -->
    <script>
        function cerrarSesion() {
            if (confirm("¿Estás seguro de que deseas cerrar sesión?")) {
                window.location.href = '01index.jsp';
            }
        }
    </script>
</body>
</html>
