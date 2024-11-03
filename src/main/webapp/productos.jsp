<%-- 
    Document   : productos
    Created on : 11/10/2024, 4:49:12 p. m.
    Author     : jedab
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Catálogo de Productos</title>
        <link rel="stylesheet" href="styles.css">
        <style>
            body {
                font-family: Georgia, 'Times New Roman', Times, serif;
                background-image: url('img/upload-816230812391.png'); /* Fondo */
                background-repeat: no-repeat;
                background-size: 100% 100%;
                background-attachment: fixed;
                background-size: cover; /* Ajusta la imagen de fondo */
                background-position: center; /* Centra la imagen de fondo */
                margin: 0;
                padding: 20px;
                color: #333; /* Cambia el color del texto a un tono oscuro */
            }

            .container {
                max-width: 800px;
                margin: auto;
                background: rgba(255, 255, 255, 0.8); /* Fondo blanco semitransparente */
                padding: 20px;
                border-radius: 8px;
                box-shadow: 0 0 10px rgba(0, 0, 0, 0.2);
            }

            h1, h2 {
                text-align: center;
            }

            /* Logo en la parte superior */
            .logo {
                display: block;
                margin: 0 auto 20px auto; /* Centra el logo y agrega margen abajo */
                width: 150px; /* Ajusta el tamaño del logo */
                height: auto;
            }

            table {
                background-color: #ffd54f;
                width: 100%;
                border-collapse: collapse;
                margin-top: 20px;
            }

            table th,
            table td {
                border: 1px solid #ddd;
                padding: 8px;
                text-align: left;
            }

            table th {
                background-color: #4CAF50;
                color: white;
                text-align: center;
            }

            table tr:nth-child(even) {
                background-color: #ffd54f;
            }

            table tr:hover {
                background-color: #ddd;
            }

            img {
                width: 100px;
                height: auto;
            }

        </style>
    </head>
    <body>
        <div class="container">
            <img src="img/Logo02.jpg" alt="Logo" class="logo"> <!-- Logo en la parte superior -->
            <h1>PODUCTOS</h1>

            <form id="product-form" action="carrito.jsp" method="POST">
                <h2>FRITOS</h2>
                <table>
                    <thead>
                        <tr>
                            <th>Seleccionar</th>
                            <th>Imagen</th>
                            <th>Producto</th>
                            <th>Descripción</th>
                            <th>Precio</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td><input type="checkbox" name="productos" value="Papa Rellena:3500"></td>
                            <td><img src="img/Papa-Rellena.jpg" alt="Papa Rellena"></td>
                            <td>Papa Rellena</td>
                            <td>Deliciosa Papa rellena con carne de res, arroz, cavano etc..</td>
                            <td>$3500</td>
                        </tr>
                        <tr>
                            <td><input type="checkbox" name="productos" value="Pastel de Pollo:3500"></td>
                            <td><img src="img/Pastel pollo.jpg" alt="Pastel pollo"></td>
                            <td>Pastel de Pollo</td>
                            <td>Delicioso Pastel de Pollo relleno con pollo, arroz, cavano etc..</td>
                            <td>$3500</td>                            
                        </tr>
                        <tr>
                            <td><input type="checkbox" name="productos" value="Aborrajado Maduro:3000"></td>
                            <td><img src="img/ABORRAJADOS MADURO.png" alt="Aborrajado Maduro"></td>
                            <td>Aborrajado Maduro</td>
                            <td>Delicioso Maduro guayabo relleno de queso cuajada.</td>
                            <td>$3000</td>
                        </tr>
                        <tr>
                            <td><input type="checkbox" name="productos" value="Empanadas Caseras:1500"></td>
                            <td><img src="img/EMPANADAS1.jpeg" alt="Empanadas Caseras"></td>
                            <td>Empanadas Caseras</td>
                            <td>Deliciosas empanadas caseras, echas con la receta de la abuela.</td>
                            <td>$1500</td>                            
                        </tr>
                        <tr>
                            <td><input type="checkbox" name="productos" value="Marranitas:3500"></td>
                            <td><img src="img/Marranitas.jpg" alt="Marranitas"></td>
                            <td>Marranitas</td>
                            <td>Deliciosas marranitas hechas con platano maduro y rellenas de delicioso chicharron.</td>
                            <td>$3500</td>
                        </tr>
                        <tr>
                            <td><input type="checkbox" name="productos" value="Pastel de Yuca:2500"></td>
                            <td><img src="img/PASTELES DE YUCA.jpg" alt="Pastel de Yuca"></td>
                            <td>Pastel de Yuca</td>
                            <td>Un delicioso pastel tradicional elaborado con una base crujiente de yuca rallada, cocida y frita a la perfección.</td>
                            <td>$2500</td>                            
                        </tr>
                        <tr>
                            <td><input type="checkbox" name="productos" value="Papas Aborrajadas:1500"></td>
                            <td><img src="img/papas-aborrajadas.jpg" alt="Papas Aborrajadas"></td>
                            <td>Papas Aborrajadas</td>
                            <td>Deliciosas Papas aborrajadas con fecula de maiz.</td>
                            <td>$1500</td>
                        </tr>
                        <tr>
                            <td><input type="checkbox" name="productos" value="Porcion Papa con Salchichon:3000"></td>
                            <td><img src="img/porcion-papa-salchichon.PNG" alt="Porcion Papa con Salchichon"></td>
                            <td>Porcion Papa con Salchichon</td>
                            <td>Una deliciosa combinación de Papa con Salchichon frito, oportuna para cualquier momento.</td>
                            <td>$3000</td>                            
                        </tr>
                    </tbody>
                </table>

                <h2>ASADOS</h2>
                <table>
                    <thead>
                        <tr>
                            <th>Seleccionar</th>
                            <th>Imagen</th>
                            <th>Producto</th>
                            <th>Descripción</th>
                            <th>Precio</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td><input type="checkbox" name="productos" value="Asada de Res:30000"></td>
                            <td><img src="img/asada de res.jpg" alt="Costilla Asada"></td>
                            <td>Asada de Res</td>
                            <td>Deliciosa porcion de carne de res asada al carbon, aproximadamente 500gr</td>
                            <td>$30000</td>
                        </tr>
                        <tr>
                            <td><input type="checkbox" name="productos" value="Chuleton de Cerdo:27000"></td>
                            <td><img src="img/Chuleton de Cerdo.jpg" alt="Pollo Asado"></td>
                            <td>Chuleton de Cerdo</td>
                            <td>Deliciosa chuleta de cerdo jugosa, a la parrilla, marinada con especias frescas y un toque de ajo.</td>
                            <td>$27.000</td>
                        </tr>
                        <tr>
                            <td><input type="checkbox" name="productos" value="picada de carne:45000"></td>
                            <td><img src="img/picada de carne.jpg" alt="Costilla Asada"></td>
                            <td>Picada de Carne</td>
                            <td>Una generosa porción de diferentes cortes de carne a la parrilla, incluyendo jugosa res, cerdo y pollo, sazonados a la perfección.</td>
                            <td>$45000</td>
                        </tr>
                        <tr>
                            <td><input type="checkbox" name="productos" value="pincho cerdo:12000"></td>
                            <td><img src="img/pincho cerdo.jpeg" alt="Pollo Asado"></td>
                            <td>Pincho Cerdo</td>
                            <td>Delicioso pincho de cerdo marinados y asados a la parrilla</td>
                            <td>$12000</td>
                        </tr>
                        <tr>
                            <td><input type="checkbox" name="productos" value="pincho de costilla ahumada:12000"></td>
                            <td><img src="img/pincho de costilla ahumada.jpg" alt="Costilla Asada"></td>
                            <td>Pincho de Costilla Ahumada</td>
                            <td>Exquisita costilla de cerdo ahumada lentamente para obtener un sabor profundo y suculento, servida en brocheta.</td>
                            <td>$12000</td>
                        </tr>
                        <tr>
                            <td><input type="checkbox" name="productos" value="pinchos de pollo:12000"></td>
                            <td><img src="img/pinchos de pollo.jpeg" alt="Pollo Asado"></td>
                            <td>Pinchos de Pollo</td>
                            <td>Tiernos trozos de pechuga de pollo marinados y asados a la parrilla, ensartados en brochetas.</td>
                            <td>$12000</td>
                        </tr>
                        <tr>
                            <td><input type="checkbox" name="productos" value="chorizo de cerdo:10000"></td>
                            <td><img src="img/chorizo de cerdo.jpg" alt="Pollo Asado"></td>
                            <td>Chorizo de Cerdo</td>
                            <td>Sabroso chorizo artesanal de cerdo, cocinado a la parrilla hasta obtener una textura jugosa y un exterior ligeramente crujiente.</td>
                            <td>$10000</td>
                        </tr>
                    </tbody>
                </table>

                <h2>AREPAS</h2>
                <table>
                    <thead>
                        <tr>
                            <th>Seleccionar</th>
                            <th>Imagen</th>
                            <th>Producto</th>
                            <th>Descripción</th>
                            <th>Precio</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td><input type="checkbox" name="productos" value="Arepas Jamón y Queso:4500"></td>
                            <td><img src="img/Arepas Jamón y Queso.jpeg" alt="Arepa de Queso"></td>
                            <td>Arepas Jamón y Queso</td>
                            <td>Deliciosas arepas rellenas con una generosa porción de jamón y queso derretido. La combinación perfecta entre la suavidad del queso fundido y el sabor ahumado del jamón.</td>
                            <td>$4500</td>
                        </tr>
                        <tr>
                            <td><input type="checkbox" name="productos" value="Arepa Rellena:10000"></td>
                            <td><img src="img/arepa rellena.jpeg" alt="Arepa de Huevo"></td>
                            <td>Arepa Rellena</td>
                            <td>Una arepa dorada y crujiente por fuera, generosamente rellena con una deliciosa mezcla de carne, pollo, o cerdo, a elección del cliente.</td>
                            <td>$10000</td>
                        </tr>
                        <tr>
                            <td><input type="checkbox" name="productos" value="Arepaburguer:12000"></td>
                            <td><img src="img/arepaburguer.jpg" alt="Arepa de Queso"></td>
                            <td>Arepaburguer</td>
                            <td>Una deliciosa fusión entre la clásica hamburguesa y la tradicional arepa. </td>
                            <td>$12000</td>
                        </tr>
                        <tr>
                            <td><input type="checkbox" name="productos" value="Arepa con Queso:5000"></td>
                            <td><img src="img/arepaqueso.jpg" alt="Arepa de Huevo"></td>
                            <td>Arepa con Queso</td>
                            <td>Deliciosa arepa dorada, coronada con una generosa capa de queso cuajado que se derrite ligeramente al contacto.</td>
                            <td>$5000</td>
                        </tr>
                        <tr>
                            <td><input type="checkbox" name="productos" value="Arepa con Mantequilla:1500"></td>
                            <td><img src="img/arepamantequilla.jpg" alt="Arepa de Huevo"></td>
                            <td>Arepa con Mantequilla</td>
                            <td>Una arepa recién hecha y dorada, untada generosamente con mantequilla, que se derrite lentamente al contacto..</td>
                            <td>$1500</td>
                        </tr>
                    </tbody>
                </table>

                <h2>BEBIDAS</h2>
                <table>
                    <thead>
                        <tr>
                            <th>Seleccionar</th>
                            <th>Imagen</th>
                            <th>Producto</th>
                            <th>Descripción</th>
                            <th>Precio</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td><input type="checkbox" name="productos" value="Gaseosa:2.00"></td>
                            <td><img src="img/bebida1.jpg" alt="Gaseosa"></td>
                            <td>Gaseosa</td>
                            <td>Bebida carbonatada refrescante.</td>
                            <td>$2.00</td>
                        </tr>
                        <tr>
                            <td><input type="checkbox" name="productos" value="Jugo Natural:2.50"></td>
                            <td><img src="img/bebida2.jpg" alt="Jugo Natural"></td>
                            <td>Jugo Natural</td>
                            <td>Jugo fresco hecho de frutas naturales.</td>
                            <td>$2.50</td>
                        </tr>
                    </tbody>
                </table>

                <input type="submit" value="Añadir al Carrito">
            </form>
        </div>
    </body>
</html>
