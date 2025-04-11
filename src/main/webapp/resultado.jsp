<%-- 
    Document   : resultado
    Created on : 11/04/2025, 12:03:20 p. m.
    Author     : SENA
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Resultado de Validacion</title>
    </head>
    <body>
        <h1>${mensaje}</h1>
        <%
            Boolean valido = (Boolean)request.getAttribute("esValido");
            if(valido != null && valido){
        %>
        <p>Bienvenida, ${usuario}!</p>
        <div>
        <h2>Menu de opciones</h2> 
        <br><br>
        <input type="submit" value="Home">
        <br><br>
        <input type="submit" value="Cuentas" />
        <br><br>
        <input type="submit" value="Registros" />
        </div>
        <%}else { %>
        <p>Usuario o contraseña incorrectos. </p>
        <a href="login.jsp">Volver a intentar</a>
        <%}%>
    </body>
</html>
