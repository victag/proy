<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
         <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">    
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
    
        <link rel="icon" type="image/png" href="img/favicon.png" />
        <link href="Sets/CSS/Login.css" rel="stylesheet" type=""/>
    </head>
    <body>
       <div class="login-box">
                <a href="Index.jsp"><img class="fav" src="Sets/Imagenes/usuario.png" alt=""></a>
                <h1>Ingrese su Usuario</h1>

                <form method="post" action="loginController">
                    <label for="">Usuario</label>
                    <input class="in" type="text" name="txtUsu" placeholder="ingrese su usuario" required>

                    <label for="password">Contraseña</label>
                    <input class="in" type="text"  name="txtPass" placeholder="Ingrese su contraseña" required><br><br>
                    <input type="submit" class="btn btn-warning mt-2" name="btn-login" value="Ingresar">
                   
                </form>

            </div>
    </body>
</html>
