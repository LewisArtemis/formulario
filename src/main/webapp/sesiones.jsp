<%-- 
    Document   : sesiones
    Created on : 23/04/2025, 9:18:52 a. m.
    Author     : SENA
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Manejo de sesiones</title>
    </head>
    <body>
        <h1>Manejo de sesiones en JSP</h1>
        
        <%
        //incrementar contador de visitas
        Integer visitas = (Integer) session.getAttribute("contadorVisitas");
        if (visitas == null){
            visitas = 1;
            } else {
                visitas++;
            }
            session.setAttribute("contadorVisitas", visitas);
            
            //obtener datos del cliente
            String navegador = request.getHeader("User-Agent");
        %>
        
        <h2>Informacion de sesion: </h2>
        <p>ID de sesion: <%= session.getId() %></p>
        <p>Numero de visitas: <%= visitas %></p>
        <p>Fecha de primera vista: 
        <%
          if(session.getAttribute("primeraVisita") == null) {
          session.setAttribute("primeraVisita", new java.util.Date());
    }
    out.print(session.getAttribute("primeraVisita"));
        %>
        </p>
        <h2>Informacion del cliente: </h2>
        <p>Tu navegador es: <%= navegador%></p>
        <p>Tu directorio  IP es: <%= request.getRemoteAddr() %></p>
        
        <h2>Formulario para agregar datos a la sesion: </h2>
        
        <form method="post">
            Nombre: <input type="text" name="nombre"><br>
            Color favorito: <input type="text" name="color"><br>
            <input type="submit" value="Guardar en sesion">
        </form>
        
        <%
            //procesar formulario
            if(request.getMethod().equals("post")){
            String nombre = request.getParameter("nombre");
            String color = request.getParameter("color");
            
            if(nombre != null && !nombre.trim().isEmpty()) {
            session.setAttribute("nombreUsuario", nombre);
            }
            
            if(color != null && !color.trim().isEmpty()) {
            session.setAttribute("colorFavorito", color);
            }
            }
            
            //mostrar datos guardados
            String nombreGuardado = (String) session.getAttribute("nombreUsuario");
            String colorGuardado = (String) session.getAttribute("colorFavorito");
        %>
        
        <%
            if(nombreGuardado != null || colorGuardado != null) { %>
            <h2>Datos Guardados en sesion: </h2>
            <% if(nombreGuardado != null) {%>
            <p>Nombre: <%= nombreGuardado%></p>
            <% } %>
            <% if(colorGuardado != null) { %>
            <p>Color favorito: <%= colorGuardado%></p>
            <% }%>
            <form method="post" action="?accion=limpiar">
                <input type="hidden" name="accion" value="limpiar">
                <input type="submit" value="limpiar sesión"> 
            </form>
            <% } %>
            
            <%
                //limpiar sesion
                if("limpiar".equals(request.getParameter("accion"))) {
                session.invalidate();
                response.sendRedirect("sesiones.jsp");
                }
            %>
    </body>
</html>
