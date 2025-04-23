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
         <style>
            body {
                font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
                background-color: #f5f7fa;
                margin: 0;
                padding: 0;
                color: #333;
                display: flex;
                justify-content: center;
                align-items: center;
                height: 100vh;
            }
            
            .resultado {
                max-width: 600px;
                width: 90%;
                background-color: white;
                box-shadow: 0 4px 15px rgba(0, 0, 0, 0.1);
                border-radius: 10px;
                padding: 30px;
                text-align: center;
            }
            
            .resultado h1 {
                color: #2c3e50;
                font-size: 26px;
                margin-bottom: 20px;
                border-bottom: 2px solid #3498db;
                padding-bottom: 15px;
            }
            
            .resultado .welcome-message {
                font-size: 20px;
                color: #27ae60;
                margin-bottom: 30px;
                font-weight: 500;
            }
            
            .resultado h2 {
                color: #2c3e50;
                font-size: 22px;
                margin-top: 10px;
                margin-bottom: 20px;
            }
            
            .resultado .menu-options {
                display: flex;
                flex-direction: column;
                align-items: center;
                gap: 15px;
                margin-top: 15px;
            }
            
            .resultado .btn {
                background-color: #3498db;
                color: white;
                border: none;
                padding: 12px 25px;
                width: 200px;
                font-size: 16px;
                border-radius: 5px;
                cursor: pointer;
                transition: all 0.3s ease;
                text-decoration: none;
                font-weight: 500;
            }
            
            .resultado .btn:hover {
                background-color: #2980b9;
                transform: translateY(-2px);
                box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            }
            
            .resultado .error-message {
                color: #e74c3c;
                font-size: 18px;
                margin: 20px 0;
            }
            
            .resultado .retry-link {
                display: inline-block;
                color: #3498db;
                margin-top: 15px;
                text-decoration: none;
                font-weight: 500;
                transition: color 0.3s;
                padding: 10px 20px;
                border: 1px solid #3498db;
                border-radius: 5px;
            }
            
            .resultado .retry-link:hover {
                color: #2980b9;
                background-color: #f0f8ff;
            }
        </style>
    </head>
    <body>
        <div class="resultado">
            <h1>${mensaje}</h1>
            <%
                Boolean valido = (Boolean)request.getAttribute("esValido");
                if(valido != null && valido){
            %>
            <p class="welcome-message">Bienvenida, ${usuario}!</p>
            <div class="options-container">
                <h2>Menu de opciones</h2>
                <div class="menu-options">
                    <a href="home.jsp" class="btn">Home</a>
                    <button class="btn">Cuentas</button>
                    <button class="btn">Registros</button>
                </div>
            </div>
            <%}else { %>
            <p class="error-message">Usuario o contraseña incorrectos.</p>
            <a href="login.jsp" class="retry-link">Volver a intentar</a>
            <%}%>
        </div>
    </body>
</html>
