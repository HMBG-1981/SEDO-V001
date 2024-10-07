<%-- 
    Document   : error
    Created on : 22/07/2024, 4:31:06 p. m.
    Author     : jedab
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Error de Validacion</title>
        
        <style>
            * {
                margin: 0px;
                padding: 0px;
                font-family: Georgia, 'Times New Roman', Times, serif;
                text-align: center;
            }
            body {
                display: inline-block;
                margin: 70px;
                background: url(img/fondo_error.jpg);
                background-repeat: no-repeat;
                background-size: 100% 100%;
                background-attachment: fixed;
            }
            h1 {
                margin-top: 120px; 
                font-size: 250%;
            }
            .btn {
                font-size: 200%;
                background-color: blue;
                color: white;
                padding: 10px 20px;
                border: none;
                border-radius: 5px;
                text-decoration: none;
                display: inline-block;
                margin-top: 20px;
            }
            .error {
                color: black;
                font-size: 150%;
                margin-top: 20px;
                font-weight: bold;
            }
            .footer {
                position: absolute;
                bottom: 20px;
                width: 100%;
                text-align: center;
            }
        </style>
    </head>
    <body>
        <h1>Error al iniciar sesion</h1>
        <% 
            String error = "Usuario o Clave incorrectos, Intente nuevamente";
        %>
        <p class="error"><%=error%></p>
        <div class="footer">
            <form action="02ingreso_clientes.jsp" method="get" autocomplete="off" novalidate>
                <button type="submit" class="btn">Regresar</button>
            </form>
        </div>
    </body>
</html>

