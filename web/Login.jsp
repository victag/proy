<%-- 
    Document   : Login
    Created on : 20/04/2022, 06:40:41 PM
    Author     : AMVM_
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="icon" type="image/png" href="img/favicon.png" />
        <link href="Sets/CSS/Login.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
       <div class="login-box">
                <a href="Index.jsp"><img class="fav" src="Sets/Imagenes/usuario.png" alt=""></a>
                <h1>Ingrese su Usuario</h1>

                <form action="">
                    <label>Correo</label>
                    <input class="in" type="text" placeholder="ingrese su correo">

                    <label for="password">Contraseña</label>
                    <input class="in" type="text" placeholder="Ingrese su contraseña"><br><br>

                   <a href="Index.jsp" class="btn"> Ingresar</a><br><br>


                    <a href="" class="bt"> <p>Olvido su contraseña?</p></a>
                    <a href=""  class="bt"><p>Registrarse</p></a>
                </form>

            </div>
    </body>
</html>
