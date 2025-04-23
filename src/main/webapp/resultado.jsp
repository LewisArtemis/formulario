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
        
        <a href="home.jsp"><input type="submit" value="Home"></a>
        
        <input type="submit" value="Cuentas" />
        
        <input type="submit" value="Registros" />
        
        <a href="login.jsp"><input type="reset" value="Cerrar Sesion" /></a>
        </div>
        
        <%}else { %>
        <p>Usuario o contraseña incorrectos. </p>
        <a href="login.jsp">Volver a intentar</a>
        <%}%>
    </body>
</html>
