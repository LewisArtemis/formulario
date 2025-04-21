<%-- 
    Document   : login
    Created on : 11/04/2025, 11:32:20 a. m.
    Author     : SENA
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Ingreso de usuario</title>
        <style> 
body {
font-family: Arial, sans-serif;
background-color: #f4f4f4;
margin: 0;
padding: 0;
display: flex;
justify-content: center;
align-items: center;
height: 100vh;
}
    </head>
    <body>
        <div>Ingreso Usuario</div>
        <form name="Ingreso" action="ValidarUsuario" method="post">
            <br><br>
            Usuario: <input type="text" name="usuario" value="" />
            <br><br>
            Clave: <input type="password" name="clave" value="" />
            <br><br>
            <input type="submit" value="Ingresar" />
        </form>
    </body>
</html>
