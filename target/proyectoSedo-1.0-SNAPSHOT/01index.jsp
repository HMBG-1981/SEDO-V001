<%-- 
    Document   : 01index.jsp
    Created on : 17/07/2024, 12:19:47 p. m.
    Author     : jedab
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <!-- Título de la página -->
        <title>Index Asados Angelica</title>   
        <meta charset="utf-8">   

        <style>
            /* Se establecen estilos generales para la página, como márgenes, 
               tipografía y alineación de texto en el centro */
            * {
                margin: 0px;
                padding: 0px;
                font-family: Georgia, 'Times New Roman', Times, serif;
                text-align: center;
            }

            /* Estilo del contenedor general de contenido */
            div#general {
                width: 800px;
                height: 400px;
                background: url(img/Logo.jpg) center 30px;
                background-repeat: no-repeat;
            }

            /* Estilo del cuerpo de la página con imagen de fondo fija */
            body {
                display: inline-block;
                margin: 40px;
                background: url(img/Fondo1.png);
                background-repeat: no-repeat;
                background-size: 100% 100%;
                background-attachment: fixed;
            }

            /* Icono de usuario que aparece en la esquina superior derecha */
            .icon-user {
                margin-left: 80%;
                width: 50px;
                height: 50px;
            }

            /* Estilo del título principal */
            h1 {
                margin: auto;
                margin-top: 0px;
                color: #49ff00;
                font-size: 3em;
                text-shadow: 2px 2px 0 rgb(17, 16, 16), 2px -2px 0 rgb(7, 7, 7), -1px -1px 0 rgb(0, 0, 0);
            }

            /* Estilo del subtítulo */
            h2 {
                color: #49ff00;
                font-size: 1.7em;
                font-weight: 600;
                margin-top: 20px;
                padding-top: 60px;
                text-shadow: 2px 2px 0 rgb(17, 16, 16), 2px -2px 0 rgb(7, 7, 7), -1px -1px 0 rgb(0, 0, 0);
            }

            /* Estilo de los botones para seleccionar el rol de usuario */
            .btn-a {
                display: inline-block;
                background-color: #72e85f;
                padding: 5px;
                font-size: 1.5em;
                color: rgb(0, 0, 0);
                font-weight: 400;
                margin-top: 10px;
                width: 300px;
                border-radius: 10px;
                text-decoration: none;
            }

            /* Enlace de registro de usuario */
            a.regis {
                margin-left: 80%;
                color: rgb(0, 0, 0);
                font-size: 14px;
            }

            /* Estilo de la sección que contiene los botones y el formulario */
            section {
                padding: 20px 100px 10px 100px;
            }

            /* Estilos para el pie de página */
            footer {
                margin-top: 15px;
                font-size: 90%;
                color: #49ff00;
                position: absolute; /* Posicionamiento absoluto */
                bottom: 10px; /* Ajuste de posición */
                left: 10px; /* Ajuste de posición */
                text-align: left; /* Alineación a la izquierda */
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

        <!-- Título principal de la página -->
        <h1>ASADOS ANGELICA <br>¡Bienvenidos!</h1>
    <center>
        <!-- Ícono de usuario que aparece en la parte superior de la página -->
        <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke-width="1.5" stroke="currentColor" class="icon-user">
        <path stroke-linecap="round" stroke-linejoin="round" d="M18 7.5v3m0 0v3m0-3h3m-3 0h-3m-2.25-4.125a3.375 3.375 0 1 1-6.75 0 3.375 3.375 0 0 1 6.75 0ZM3 19.235v-.11a6.375 6.375 0 0 1 12.75 0v.109A12.318 12.318 0 0 1 9.374 21c-2.331 0-4.512-.645-6.374-1.766Z" />
        </svg>

        <!-- Contenedor principal de los elementos de la página -->
        <div id="general">
            <!-- Enlace para registrar un nuevo usuario -->
            <a class="regis" href="04registro_usuarios.jsp"><b>Registrar Usuario<b></a>

            <!-- Subtítulo de ingreso de usuarios -->
            <h2>INGRESO DE USUARIOS</h2>
            <section>
                <!-- Formulario para seleccionar el rol e iniciar sesión -->
                <form action="index" method="get">
                    <button class="btn-a" name="role" value="Administrador">Administrador</button>
                    <button class="btn-a" name="role" value="Empleado">Empleado</button>                                                              
                    <button class="btn-a" name="role" value="Clientes">Clientes</button>   
                </form>

                <!-- Pie de página con derechos de autor -->
                <footer>
                    <img src="img/pngegg.png" alt="Copyright" class="copyright-logo">
                    <b>2024. Todos los derechos reservados. SEDO-CRA V1.0.0</b>
                </footer>        

            </section>
        </div>
    </center>       
</body>
</html>
