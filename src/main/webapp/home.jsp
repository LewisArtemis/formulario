<%-- 
    Document   : home
    Created on : 11/04/2025, 12:38:37 p. m.
    Author     : SENA
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
       <style>
            body {
                font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
                background-color: #f5f7fa;
                margin: 0;
                padding: 0;
                color: #333;
            }
            
            .home {
                max-width: 1000px;
                margin: 0 auto;
                padding: 20px;
                background-color: white;
                box-shadow: 0 4px 12px rgba(0, 0, 0, 0.1);
                border-radius: 8px;
                margin-top: 50px;
            }
            
            .home h1 {
                color: #2c3e50;
                border-bottom: 2px solid #3498db;
                padding-bottom: 10px;
                font-size: 28px;
            }
            
            .home .welcome-message {
                font-size: 18px;
                color: #7f8c8d;
                margin-bottom: 30px;
            }
            
            .home .user-greeting {
                background-color: #e8f4fc;
                padding: 15px;
                border-radius: 6px;
                margin-bottom: 20px;
                border-left: 4px solid #3498db;
            }
            
            .home .repository-section {
                margin-top: 30px;
            }
            
            .home .repository-title {
                font-size: 24px;
                color: #2c3e50;
                margin-bottom: 15px;
            }
            
            .home .btn {
                display: inline-block;
                padding: 10px 15px;
                background-color: #3498db;
                color: white;
                text-decoration: none;
                border-radius: 4px;
                transition: background-color 0.3s;
            }
            
            .home .btn:hover {
                background-color: #2980b9;
            }
            
            footer {
                text-align: center;
                margin-top: 40px;
                color: #95a5a6;
                font-size: 14px;
            }
        </style>
    </head>
    
         <body>
        <div class="home">
            <div class="user-greeting">
                <h1>Hola ${user}</h1>
            </div>
            
            <div class="repository-section">
                <h1 class="repository-title">Bienvenida a tu repositorio</h1>
                <p class="welcome-message">Aquí podrás encontrar y gestionar todos tus archivos de manera sencilla.</p>
                
                <a href="#" class="btn">Comenzar a explorar</a>
            </div>
            
            <footer>
                © 2025 - Tu Repositorio Personal
            </footer>
        </div>
    </body>
 
</html>
