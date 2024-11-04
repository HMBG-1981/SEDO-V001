<%-- 
    Document   : 01index.jsp
    Created on : 17/07/2024, 12:19:47 p. m.
    Author     : jedab
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <TItle>INICIO ASADOS ANGELICA DATABASE</TItle>   
        <meta charset="utf-8">   

        <style>
            /*Se definen varios estilos para los elementos HTML en la página, como el 
            cuerpo (`body`), encabezados (`h1`, `h2`), botones (`btn-a`), entre otros*/

            * {
                margin: 0px;
                padding: 0px;
                font-family: Georgia, 'Times New Roman', Times, serif;
                text-align: center;
            }

            div#general {
                width: 800px;
                height: 400px;
                background: url(img/0002.jpg) center 30px;
                background-repeat: no-repeat;
            }

            body {
                display: inline-block;
                margin: 70px;
                background: url(img/upload-816230812391.png);
                background-repeat: no-repeat;
                background-size: 100% 100%;
                background-attachment: fixed;
            }

            .icon-user {
                margin-left: 80%;
                width: 50px;
                height: 50px;
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

            a.regis {
                margin-left: 80%;
                color: rgb(0, 0, 0);
                font-size: 14px;
            }

            section {
                padding: 20px 100px 10px 100px;
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

        <h1>ASADOS ANGELICA - SEDO</h1>
    <center>
        <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke-width="1.5" stroke="currentColor" class="icon-user">
        <path stroke-linecap="round" stroke-linejoin="round" d="M18 7.5v3m0 0v3m0-3h3m-3 0h-3m-2.25-4.125a3.375 3.375 0 1 1-6.75 0 3.375 3.375 0 0 1 6.75 0ZM3 19.235v-.11a6.375 6.375 0 0 1 12.75 0v.109A12.318 12.318 0 0 1 9.374 21c-2.331 0-4.512-.645-6.374-1.766Z" />
        </svg>
        <div id="general">
            <a class="regis" href="04registro_usuarios.jsp">Registrar Usuario</a>
            <h2>INGRESO DE USUARIOS</h2>
            <section>
                <form action="index" method="get">
                    <button class="btn-a" name="role" value="Administrador">Administrador</button>
                    <button class="btn-a" name="role" value="Empleado">Empleado</button>                                                              
                    <button class="btn-a" name="role" value="Clientes">Clientes</button>   
                </form>

                <footer>
                    <img src="img/pngegg.png" alt="Copyright" class="copyright-logo">
                    <b>2024. Todos los derechos reservados. SEDO-CRA V1.0.0</b>
                </footer>        

            </section>
        </div>
    </center>       
</body>
</html>
