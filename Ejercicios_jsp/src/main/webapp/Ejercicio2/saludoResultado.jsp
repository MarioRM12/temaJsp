<!-- saludoResultado.jsp -->
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <title>Resultado del Saludo</title>
</head>
<body>
    <%
        String nombre = request.getParameter("nombre");
        String idioma = request.getParameter("idioma");
        String saludo = "";

        switch (idioma) {
            case "es":
                saludo = "Hola";
                break;
            case "pt":
                saludo = "Olá";
                break;
            case "en":
                saludo = "Hello";
                break;
        }
    %>

    <p><%= saludo %> <%= nombre %></p>
</body>
</html>
