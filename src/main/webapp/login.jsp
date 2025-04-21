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
    font-family: Cooper Black, sans-serif;
    background-color: #f4f4f4;
    margin: 0px;
    padding: 0px;
    display: flex;
    justify-content: center;
    align-items: center;
    height: 100vh;
} 
.login-container {
    width: 400px;
    height: auto;
    margin: 0 auto;
    padding: 60px;
    border-radius: 60px;
    background-color: white; 
    box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
}
.login-title {
    text-align: center;
    color: #030303;
    margin-bottom: 30px;
    font-size: 25px;
}
.form-group {
    margin-bottom: 20px;
    display: flex;
    align-items: center;
}
.form-group label {
    margin-right: 10px;
    color: #555;
    font-weight: bold;
    width: 80px;
}
.form-group input[type="text"],
.form-group input[type="password"] {
    width: 250px;
    padding: 8px;
    border: 1px solid #546BE1;
    border-radius: 4px;
    box-sizing: border-box;
}
.button-container {
    width: 100%;
    display: flex;
    justify-content: center;
    margin-top: 25px;
}
.submit-button {
    width: 100px;
    padding: 10px;
    background-color: #546BE1;
    color: white;
    border: none;
    border-radius: 5px;
    cursor: pointer;
    font-size: 16px;
}
.submit-button:hover {
    background-color: #45a049;
}
</style>
    </head>
    <body>
        <div class="login-container">
            <div class="login-title">Ingreso Usuario</div>
            <form name="Ingreso" action="ValidarUsuario" method="post">
                <div class="form-group">
                    <label for="usuario">Usuario:</label>
                    <input type="text" id="usuario" name="usuario" placeholder="Ingrese su usuario" />
                </div>

                <div class="form-group">
                    <label for="clave">Clave:</label>
                    <input type="password" id="clave" name="clave" placeholder="Ingrese su contraseña" />
                </div>
                
                <input type="submit" class="submit-button" value="Ingresar" />
        </form>
         </div>
    </body>
</html>

