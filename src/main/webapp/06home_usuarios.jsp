<%-- 
    Document   : 06home_usuarios
    Created on : 17/07/2024, 12:27:03 p. m.
    Author     : jedab
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>Home - Usuarios</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
    
    <meta charset="utf-8">
    
    <style>
        *{
    margin: 0px;
    padding: 0px;
    font-family: Georgia, 'Times New Roman', Times, serif;    
    text-align: center;  
}

body{
    
    display: inline-block;     
    background: url(img/upload-816230812391.png);
    background-repeat: no-repeat;
    background-size: 100% 100%;
    background-attachment: fixed;   
}    

h1{
    color: rgb(21, 255, 0);
    margin-top: 300px;
    text-shadow: 2px 2px 0 rgb(17, 16, 16), 2px -2px 0 rgb(7, 7, 7), -1px -1px 0 rgb(0, 0, 0);
}


.row img{
    margin-top: -40%;
    width: 30%;
}

.dropdown button{
    width: 220px;
    padding: 5px;    
    box-shadow: 7px 13px 37px #000;        
}

.dropdown-item{
    background-color: rgb(203, 248, 99);
    color: rgb(3, 121, 13);
}


p{
    margin-top: 10px;
    font-size: 35px;
    font-family: fantasy;
    color: rgb(21, 255, 0);
    text-shadow: 2px 2px 0 rgb(17, 16, 16), 2px -2px 0 rgb(7, 7, 7), -1px -1px 0 rgb(0, 0, 0);
}
    </style>
    <p>Bienvenido, Ingreso Exitoso!!!</p>    
</head>

<body>
    <h1>HOME CLIENTES</h1>
        
    <div class="container mt-3">
        <div class="row">        
            <div class="col">                                 
                <img src="img/Logo02.jpg" width="100%">
            </div>           
        </div>
    </div>
    
    <form action="home" method="get">
        
        <button class="btn btn-success" name="role" value="Productos">Productos</button>
        <button class="btn btn-success" name="role" value="Sugerencias">Quejas y Sugerencias</button>
        <button class="btn btn-success" name="role" value="Salir" >Cerrar Sesion</button>
        
    </form> 
           
        <p>SERVICIO DE VIERNES A DOMINGO, Y FESTIVOS</p>
        <p>18:00pm a 24:00pm</p>
    
</body>
</html>

