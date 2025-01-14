<%-- 
    Document   : 03ingreso_empleados
    Created on : 17/07/2024, 12:24:00 p. m.
    Author     : jedab
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

    <head>
        <TItle>Ingreso Empleados</TItle>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
        <meta charset="utf-8">

        <style>
            /*CSS Estilo: Se utilizan estilos CSS para dar formato y diseño a los elementos de la página. Aquí se 
            establecen propiedades como márgenes, tamaños de letra, colores de fondo, sombras y bordes redondeados.*/
            *{
                margin: 0px;
                padding: 0px;
                font-family: Georgia, 'Times New Roman', Times, serif;
                text-align: center;
            }


            div#general {
                width: 600px;
                height: 400px;
                background: url(img/Logo.jpg) center 30px;
                background-repeat: no-repeat;
                background-size: 80% 100%;

            }


            body{

                display: inline-block;
                margin: 70px;
                background: url(img/Fondo1.png);
                background-repeat: no-repeat;
                background-size: 100% 100%;
                background-attachment: fixed;
            }

            h1 {
                margin: auto;
                margin-top: 0px;
                color: #49ff00;
                font-size: 3em;
                text-shadow: 2px 2px 0 rgb(17, 16, 16), 2px -2px 0 rgb(7, 7, 7), -1px -1px 0 rgb(0, 0, 0);

            }

            h2 {
                color: #49ff00;
                font-size: 1.7em;
                font-weight: 600;
                margin-top: 20px;
                padding-top: 60px;
                text-shadow: 2px 2px 0 rgb(17, 16, 16), 2px -2px 0 rgb(7, 7, 7), -1px -1px 0 rgb(0, 0, 0);
            }


            label {

                font-size: 30px;
                color: #49ff00;
                margin-top: 30px;
                width: 220px;
                border-radius: 40px;
                text-shadow: 2px 2px 0 rgb(17, 16, 16), 2px -2px 0 rgb(7, 7, 7), -1px -1px 0 rgb(0, 0, 0);

            }

            .btn-a {
                display: inline-block;
                background-color: #72e85f;
                padding: 5px;
                font-size: 1.5em;
                color: rgb(0, 0, 0);
                font-weight: 400;
                margin-top: 20px;
                width: 150px;
                border-radius: 10px;
                text-decoration: none;
            }



            div#piepagina {
                font-size: 100%;
                margin-top: -60px;
                color: rgb(0, 255, 0);

            }



            input {
                background-color: #e0e4e4;
                margin: 5px 5px 5px -50px;
                width: 250px;
                height: 35px;
                border-radius: 10px;

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
            .copyright-logo {
                width: 20px; /* Ajusta el tamaño según necesites */
                vertical-align: middle; /* Centra verticalmente con el texto */
            }
        </style>

    </head>

    <body>
        <h1>ASADOS ANGELICA</h1>
        <!--<h1> muestra el nombre de la empresa con un efecto de sombra y color verde.-->  
        <div id="general">
            <h2>INGRESO EMPLEADOS</h2>
            <!--<h2> es un encabezado secundario para el formulario de empleados, con un color verde 
            intenso y efectos de sombra.-->
            <div id="contenedor">            
                <form action="iniciar" method="post">
                    <!--Un formulario (<form>) que envía datos a un destino llamado "iniciar" usando el método POST.-->
                    <label for="usuario">Usuario:</label>
                    <input type="text" id="usuario" name="usuario" placeholder="idUsuario">
                    <!--Dos campos de entrada (<input>) para "Usuario" y "Clave", donde la clave se oculta como texto 
                    oculto (tipo password).-->
                    <label for="clave">Clave:</label>
                    <input type="password" id="clave" name="clave" placeholder="Clave">
                    <br>
                    <!--Un botón (<button>) con la clase .btn-a para enviar el formulario, etiquetado como "Ingresar".-->
                    <button class="btn-a" name="role" value="Clientes">Ingresar</button>
                </form>                                      
            </div>        
        </div>
        <div id="piepagina">
            <!--Un área inferior (<div id="piepagina">) que incluye un enlace para recuperar la 
            contraseña y un pequeño pie de página con información adicional.-->              
            <a href="recuperar_contraseña.jsp">¿Has olvidado tu contraseña?</a>
            <footer>
                <img src="img/pngegg.png" alt="Copyright" class="copyright-logo">
                <b>2024. Todos los derechos reservados. SEDO-CRA V1.0.0</b>
            </footer
        </div>    
    </body>
</html>
