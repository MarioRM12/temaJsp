<!-- tablaResultado.jsp -->
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <title>Resultado Tabla</title>
</head>
<body>
    <%
        int numero = Integer.parseInt(request.getParameter("numero"));
    %>

    <h2>Tabla de Multiplicar del <%= numero %>:</h2>
    <table border="1">
        <%
            for (int i = 1; i <= 10; i++) {
                int resultado = numero * i;
        %>
        <tr>
            <td><%= numero %> x <%= i %> =</td>
            <td><%= resultado %></td>
        </tr>
        <%
            }
        %>
    </table>
</body>
</html>
