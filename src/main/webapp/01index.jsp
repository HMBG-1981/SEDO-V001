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
       
       *{
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


body{
    display: inline-block;
    margin: 70px;
    background: url(img/upload-816230812391.png);
    background-repeat: no-repeat;
    background-size: 100% 100%;
    background-attachment: fixed;
}

.icon-user{
    margin-left: 80%;
    width: 50px;
    height: 50px;

}

h1 {
    margin: auto;
    margin-top: 0px;
    color: rgb(187, 255, 0);
    font-size: 3em;
    text-shadow: 2px 2px 0 rgb(17, 16, 16), 2px -2px 0 rgb(7, 7, 7), -1px -1px 0 rgb(0, 0, 0);

}

h2 {
    color: rgb(94, 255, 0);
    font-size: 1.5em;
    font-weight: 600;
    margin-top: 30px;
    padding-top: 60px;
    text-shadow: 2px 2px 0 rgb(255, 0, 0), 2px -2px 0 rgb(255, 0, 0), -1px -1px 0 rgb(255, 0, 0);
}

.btn-a {
    display: inline-block;
    background-color: rgb(188, 248, 252);
    padding: 10px;
    font-size: 1.5em;
    color: rgb(0, 0, 0);
    font-weight: 400;
    margin-top: 5px;
    width: 360px;
    border-radius: 10px;
    text-decoration: none;
}

a.regis{
    margin-left: 80%;
    color: rgb(0, 0, 0);
    font-size: 14px;

}

section {
    padding: 20px 100px 10px 100px;
}

footer {
    margin-top: 50px;
    font-size: 70%;
    color: rgb(0, 255, 0);
}


   </style>
 </head>
<body> <%--Contenido del cuerpo (`<body>`)--%>
       
    <h1>ASADOS ANGELICA - SEDO</h1>
    <%--Encabezados (`<h1>`, `<h2>`)**: Definen títulos grandes para la página y secciones específicas.--%>
    <center>
        <%--SVG (`<svg>`)**: Muestra un icono de usuario, que probablemente se utiliza para indicar funcionalidades 
        relacionadas con usuarios.--%>
        <svg xmlns="http://www.w3.org/2001/svg" fill="none" viewBox="0 0 24 24" stroke-width="1.5" stroke="currentColor" class="icon-user">
            <path stroke-linecap="round" stroke-linejoin="round" d="M18 7.5v3m0 0v3m0-3h3m-3 0h-3m-2.25-4.125a3.375 3.375 0 1 1-6.75 0 3.375 3.375 0 0 1 6.75 0ZM3 19.235v-.11a6.375 6.375 0 0 1 12.75 0v.109A12.318 12.318 0 0 1 9.374 21c-2.331 0-4.512-.645-6.374-1.766Z" />
            
        </svg>
         <%--Div (`<div id="general">`)**: Agrupa contenido general de la página, con un fondo de imagen 
         específico.--%>         
        <div id="general">
            <a class="regis" href="04registro_usuarios.jsp">Registrar Usuario</a><%--Enlace (`<a class="regis">`)**: Enlace para registrar usuarios, apuntando a otra página JSP (`04registro_usuarios.jsp`).--%>
        
            <h2>INGRESO DE USUARIOS</h2>
            <%--Encabezados (`<h1>`, `<h2>`)**: Definen títulos grandes para la página y secciones específicas.--%>
            <section>
                <%--Formulario (`<form>`)**: Contiene botones para seleccionar el rol de usuario(Administrador, Empleado, 
                Clientes). El formulario se envía a sí mismo (`action="index"`), usando el método GET.--%>
                <form action="index" method="get">
                    <button class="btn-a" name="role" value="Administrador">Administrador</button>
                    <button class="btn-a" name="role" value="Empleado">Empleado</button>                                                              
                    <button class="btn-a" name="role" value="Clientes">Clientes</button>   
                </form>
                <%--Div (`<div id="general">`)**: Agrupa contenido general de la página, con un 
                fondo de imagen específico.--%>
                <div id="piepagina">
                    <%--Pie de página (`<footer>`):**- Muestra información adicional, en este caso, la versión 
                    del software (`SEDO-CRA V1.0. 2023`).--%>
                    <footer>
                        <p><b>SEDO-CRA V1.0. 2024</b></p>
                    </footer>        
                </div>
            </section>
         </div>
    </center>       
</body>
</html>
