<%-- 
    Document   : modulo_productos
    Created on : 17/07/2024, 6:05:28 p. m.
    Author     : jedab
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
    <head>
        <meta charset="UTF-8">        
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.1/css/all.min.css" integrity="sha512-MV7K8+y+gLIBoVD59lQIYicR65iaqukzvf/nwasF0nqhPay5w/9lJmVM2hMDcnK1OnMGCdVK+iQrJ7lzPJQd1w==" crossorigin="anonymous" referrerpolicy="no-referrer" />
        <script src="scripts/carrito.js" type="text/javascript"></script>

        <title>Carrito de Compras</title>
        <style>
            body {
                font-family: Arial, sans-serif;
                background-color: #ffecb3;
                background-size: cover;
                background-position: center;
                margin: 0;
                padding: 0;
            }

            header {
                background: url(img/upload-816230812391.png);
                background-size: cover;
                background-position:center;
                height: 300px;
                text-align: center;
            }

            h1{
                text-align: center;
                font-size: 50px;
                /*background-color: #000; */
                color: #bbff00;
                text-shadow: 2px 2px 0 rgb(0, 0, 0), 2px -2px 0 rgb(0, 0, 0), -1px -1px 0 rgb(0, 0, 0);
            }

            h2{
                font-size: 35px;
                /*background-color: #000; */
                color: #bbff00;
                text-shadow: 2px 2px 0 rgb(0, 0, 0), 2px -2px 0 rgb(0, 0, 0), -1px -1px 0 rgb(0, 0, 0);
            }
            
            hr {
                height: 3px;
                background-color: #000;
            }

            header .logo img {
                width: 250px;
            }

            .contenedor{                
                max-width: 1200px;
                padding: 10px;
                margin: auto;
                display: flex;
                justify-content: space-between;
                /* oculto lo que queda fuera del .contenedor */
                contain: paint;
            }

            .contenedor-items{
                margin-top: 20px;
                display: grid;
                grid-template-columns: repeat(auto-fit, minmax(220px, 1fr));
                grid-gap:0px;
                grid-row-gap: 10px;
                /* width: 60%; */
                width: 100%;
                transition: .3s;
            }

            .contenedor-items .item{                
                background-color: #ffca28;
                max-width: 100px;
                border: 1px solid #666;
                border-radius: 10px;
                padding: 15px;
                transition: .3s;
            }

            .item img {
                width: 100%;
                height: auto;
                object-fit: contain;
                border-radius: 8px;
                max-width: 200px; /* Tamaño reducido de la imagen */
                max-height: 120px; /* Tamaño reducido de la imagen */
            }

            .contenedor-items .item:hover{
                box-shadow: 0 0 10px #666;
                scale: 1.05;
            }

            .contenedor-items .item .titulo-item{
                font-size: 14px;
                display: block;
                font-weight: bold;
                text-align: center;
                text-transform: uppercase;
            }

            .contenedor-items .item .precio-item{
                display: block;
                text-align: center;
                font-weight: bold;
                font-size: 15px;
            }

            .contenedor-items .item .boton-item{
                display: block;
                margin: 10px auto;
                border: none;
                background-color: black;
                color: #fff;
                padding: 5px 15px;
                border-radius: 5px;
                cursor: pointer;
            }


            .carrito {
                width: 30%;
                background-color: rgba(255, 255, 255, 0.9);
                border-radius: 10px;
                box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
                padding: 20px;
            }

            .carrito .header-carrito{
                background-color: #000;
                color: #fff;
                text-align: center;
                padding: 2px 0;
            }

            .carrito.carrito-item{
                display: flex;
                align-items: center;
                /* justify-content: space-between; */
                position: relative;
                border-bottom: 1px solid #666;
                padding: 20px;
            }

            .carrito-item {
                display: flex;
                justify-content: space-between;
                align-items: center;
                padding: 10px 0;
                border-bottom: 1px solid #ccc;
            }

            .carrito-item-img {
                width: 50px;
                height: auto;
                border-radius: 5px;
            }

            .carrito-item .carrito-item-titulo{
                display: block;
                font-weight: bold;
                font-size: 14px;
                margin-bottom: 10px;
                text-transform: uppercase;
            }

            .carrito-item .carrito-item-precio{
                font-weight: bold;
                display: inline-block;
                font-size: 14px;
                margin-bottom: 5px;
            }

            .selector-cantidad {
                display: flex;
                align-items: center;
            }

            .selector-cantidad input {
                width: 50px;
                text-align: center;
                border: 1px solid #ccc;
                border-radius: 5px;
                margin: 0 5px;
            }

            .selector-cantidad i {
                color: #007bff;
                cursor: pointer;
            }

            .selector-cantidad i:hover {
                color: #0056b3;
            }

            .carrito-item .btn-eliminar{
                right: 15px;
                top: 15px;
                color: #000;
                font-size: 20px;
                width: 40px;
                height: 40px;
                line-height: 40px;
                text-align: center;
                border-radius: 50%;
                border: 1px solid #000;
                cursor: pointer;
                display: block;
                background: transparent;
                z-index: 20;
            }

            .btn-eliminar:hover {
                background-color: #f8d7da;
            }

            .carrito-total{
                background-color: #f3f3f3;
                padding: 30px;
            }

            .carrito-total .fila{
                display: flex;
                justify-content: space-between;
                align-items: center;
                font-size: 22px;
                font-weight: bold;
                margin-bottom: 10px;
            }

            .carrito-total .total {
                font-weight: bold;
                color: #333;
            }

            .carrito-total .btn-pagar{
                display: block;
                width: 100%;
                border: none;
                background: #000;
                color: #fff;
                border-radius: 5px;
                font-size: 18px;
                padding: 20px;
                display: flex;
                justify-content: space-between;
                align-items: center;
                cursor: pointer;
                transition: .3s;
            }

            .carrito-total .btn-pagar:hover{
                scale: 1.05;
            }

            .btn-pagar:hover {
                background-color: #218838;
            }

            .carrito {
                display: none;
            }

            /* SECCION RESPONSIVE */
            @media screen and (max-width: 850px) {
                .contenedor {
                    display: block;
                }
                .contenedor-items{
                    width: 100% !important;
                }
                .carrito{
                    width: 100%;
                }
            }

        </style>

        <!-- Aquí sigue el resto del código HTML y JavaScript -->
    </body>
</html>


</head>
<body>
    <hr>
    <header>
        <h1>ASADOS ANGELICA</h1>
        <div class="logo">
            <img src="img/Logo02.jpg" alt="Logo">
        </div>
    </header>
    <hr>
    
    <div class="seccion-fritos">
        <h2>FRITOS</h2>
    </div>      

    <Section class="contenedor">
        <div class="contenedor-items">
            <!-- Producto 1 -->
            <div class="item">
                
                <img src="img/Papa-Rellena.jpg" alt="Papas Rellenas" class="img-item"><br>
                <span class="titulo-item">Papas Rellenas</span><br>
                <span class="precio-item">$3500.00</span><br>
                <button class="boton-item">Agregar al carrito</button>
            </div>
            <!-- Producto 2 -->
            <div class="item">
                <img src="img/ABORRAJADOS MADURO.png" alt="Aborrajados Maduros" class="img-item"><br>
                <span class="titulo-item">Aborrajados Maduros</span><br>
                <span class="precio-item">$3000.00</span><br>
                <button class="boton-item">Agregar al carrito</button>
            </div>
            <!-- Producto 3 -->
            <div class="item">
                <img src="img/EMPANADAS1.jpeg" alt="Empanadas" class="img-item"><br>
                <span class="titulo-item">Empanadas</span><br>
                <span class="precio-item">$1800.00</span><br>
                <button class="boton-item">Agregar al carrito</button>
            </div>
            <!-- Producto 4 -->
            <div class="item">
                <img src="img/Marranitas.jpg" alt="Marranitas" class="img-item"><br>
                <span class="titulo-item">Marranitas</span><br>
                <span class="precio-item">$3000.00</span><br>
                <button class="boton-item">Agregar al carrito</button>
            </div>
            <!-- Producto 5 -->
            <div class="item">
                <img src="img/PASTELES DE YUCA.jpg" alt="Pastel de Yuca" class="img-item"><br>
                <span class="titulo-item">Pastel de Yuca</span><br>
                <span class="precio-item">$3500.00</span><br>
                <button class="boton-item">Agregar al carrito</button>
            </div>
            <!-- Producto 6 -->
            <div class="item">
                <img src="img/Pastel pollo.jpg" alt="Pastel de Pollo" class="img-item"><br>
                <span class="titulo-item">Pastel de Pollo</span><br>
                <span class="precio-item">$3500.00</span><br>
                <button class="boton-item">Agregar al carrito</button>
            </div>
            <!-- Producto 7 -->
            <div class="item">
                <img src="img/papas-aborrajadas.jpg" alt="Papas-aborrajadas" class="img-item"><br>
                <span class="titulo-item">Papas-aborrajadas</span><br>
                <span class="precio-item">$1800.00</span><br>
                <button class="boton-item">Agregar al carrito</button>
            </div>
            <!-- Producto 8 -->
            <div class="item">
                <img src="img/porcion-papa-salchichon.PNG" alt="Porcion Papa y Salchichon" class="img-item"><br>
                <span class="titulo-item">Porcion Papa y Salchichon</span><br>
                <span class="precio-item">$3000.00</span><br>
                <button class="boton-item">Agregar al carrito</button>
            </div>
            <!-- Agrega más productos aquí -->
        </div>

        <div class="carrito">
            <div class="header-carrito">
                <h2>Carrito</h2>
            </div>
            <div class="carrito-items">
                <!-- Los productos se agregarán aquí dinámicamente -->
            </div>
            <div class="carrito-total">
                <div class="fila">
                    <span>Total:</span>
                    <span class="total">$0.00</span>
                </div>
                <button class="btn-pagar">Enviar</button>
            </div>
        </div>
    </Section>
    <hr>

    <div class="seccion-asados">
        <h2>ASADOS</h2>
    </div>  

    <Section class="contenedor">
        <div class="contenedor-items">
            <!-- Producto 1 -->
            <div class="item">
                <img src="img/asada de res.jpg" alt="asada de res" class="img-item"><br>
                <span class="titulo-item">Asada de Res</span><br>
                <span class="precio-item">$35000.00</span><br>
                <button class="boton-item">Agregar al carrito</button>
            </div>
            <!-- Producto 2 -->
            <div class="item">
                <img src="img/chorizo de cerdo.jpg" alt="chorizo de cerdo" class="img-item"><br>
                <span class="titulo-item">Chorizo de Cerdo</span><br>
                <span class="precio-item">$12000.00</span><br>
                <button class="boton-item">Agregar al carrito</button>
            </div>
            <!-- Producto 3 -->
            <div class="item">
                <img src="img/pincho cerdo.jpeg" alt="pincho cerdo" class="img-item"><br>
                <span class="titulo-item">Pincho de Cerdo</span><br>
                <span class="precio-item">$12000.00</span><br>
                <button class="boton-item">Agregar al carrito</button>
            </div>
            <!-- Producto 4 -->
            <div class="item">
                <img src="img/pinchos de pollo.jpeg" alt="pinchos de pollo" class="img-item"><br>
                <span class="titulo-item">Pinchos de Pollo</span><br>
                <span class="precio-item">$12000.00</span><br>
                <button class="boton-item">Agregar al carrito</button>
            </div>
            <!-- Producto 5 -->
            <div class="item">
                <img src="img/picada de carne.jpg" alt="picada de carne" class="img-item"><br>
                <span class="titulo-item">picada de carne</span><br>
                <span class="precio-item">$45000.00</span><br>
                <button class="boton-item">Agregar al carrito</button>
            </div>

    </Section>
    <hr>
    
    <div class="seccion-arepas">
        <h2>AREPAS</h2>
    </div>  

    <Section class="contenedor">
        <div class="contenedor-items">
            <!-- Producto 1 -->
            <div class="item">
                <img src="img/arepa rellena.jpeg" alt="arepa rellena" class="img-item"><br>
                <span class="titulo-item">Arepa Rellena</span><br>
                <span class="precio-item">$12000.00</span><br>
                <button class="boton-item">Agregar al carrito</button>
            </div>
            <!-- Producto 2 -->
            <div class="item">
                <img src="img/arepaburguer.jpg" alt="arepaburguer" class="img-item"><br>
                <span class="titulo-item">Arepa-Burguer</span><br>
                <span class="precio-item">$10000.00</span><br>
                <button class="boton-item">Agregar al carrito</button>
            </div>
            <!-- Producto 3 -->
            <div class="item">
                <img src="img/arepaqueso.jpg" alt="arepaqueso" class="img-item"><br>
                <span class="titulo-item">Arepa con Queso</span><br>
                <span class="precio-item">$5000.00</span><br>
                <button class="boton-item">Agregar al carrito</button>
            </div>
            <!-- Producto 4 -->
            <div class="item">
                <img src="img/arepamantequilla.jpg" alt="arepamantequilla" class="img-item"><br>
                <span class="titulo-item">Arepa con Mantequilla</span><br>
                <span class="precio-item">$1500.00</span><br>
                <button class="boton-item">Agregar al carrito</button>
            </div>

    </Section>
    <hr>
    
    <div class="seccion-bebidas">
        <h2>BEBIDAS</h2>
    </div>  

    <Section class="contenedor">
        <div class="contenedor-items">
            <!-- Producto 1 -->
            <div class="item">
                <img src="img/JUGOS HIT X400 BOTELLA PLASTICA.png" alt="jugo hit" class="img-item"><br>
                <span class="titulo-item">Jugo Hit x400</span><br>
                <span class="precio-item">4000.00</span><br>
                <button class="boton-item">Agregar al carrito</button>
            </div>
            <!-- Producto 2 -->
            <div class="item">
                <img src="img/Postobon.jpg" alt="postobon" class="img-item"><br>
                <span class="titulo-item">Gaseosa Postobon x350</span><br>
                <span class="precio-item">$3000.00</span><br>
                <button class="boton-item">Agregar al carrito</button>
            </div>
            <!-- Producto 3 -->
            <div class="item">
                <img src="img/coca cola.jpg" alt="coca cola" class="img-item"><br>
                <span class="titulo-item">Gaseosa Coca-Cola x350</span><br>
                <span class="precio-item">$3500.00</span><br>
                <button class="boton-item">Agregar al carrito</button>
            </div>
            <!-- Producto 4 -->
            <div class="item">
                <img src="img/pony malta.jpg" alt="pony malta" class="img-item"><br>
                <span class="titulo-item">Pony Malta x330</span><br>
                <span class="precio-item">$3000.00</span><br>
                <button class="boton-item">Agregar al carrito</button>
            </div>
            <!-- Producto 5 -->
            <div class="item">
                <img src="img/cerveza.png" alt="cerveza" class="img-item"><br>
                <span class="titulo-item">Cerveza Aguila x330</span><br>
                <span class="precio-item">$5000.00</span><br>
                <button class="boton-item">Agregar al carrito</button>
            </div>
            <!-- Producto 6 -->
            <div class="item">
                <img src="img/agua-cristal.jpg" alt="agua-cristal" class="img-item"><br>
                <span class="titulo-item">Agua Cristal</span><br>
                <span class="precio-item">$2500.00</span><br>
                <button class="boton-item">Agregar al carrito</button>
            </div>
            <!-- Producto 7 -->
            <div class="item">
                <img src="img/coca-cola y cuatro.PNG" alt="coca-cola y cuatro" class="img-item"><br>
                <span class="titulo-item">Coca-Cola y Cuatro x3000</span><br>
                <span class="precio-item">$12000.00</span><br>
                <button class="boton-item">Agregar al carrito</button>
            </div>
            <!-- Producto 8 -->
            <div class="item">
                <img src="img/POSTOBON 3.125.jpe" alt="POSTOBON 3.125" class="img-item"><br>
                <span class="titulo-item">POSTOBON x3.125</span><br>
                <span class="precio-item">$2500.00</span><br>
                <button class="boton-item">Agregar al carrito</button>
            </div>
    </Section>
    <hr>
</body>
</html>
