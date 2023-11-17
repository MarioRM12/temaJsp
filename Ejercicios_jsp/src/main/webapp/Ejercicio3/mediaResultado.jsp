<!-- mediaResultado.jsp -->
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <title>Resultado Media</title>
</head>
<body>
    <%
        double nota1 = Double.parseDouble(request.getParameter("nota1"));
        double nota2 = Double.parseDouble(request.getParameter("nota2"));
        double nota3 = Double.parseDouble(request.getParameter("nota3"));
        
        double media = (nota1 + nota2 + nota3) / 3;
    %>

    <p>La media de las notas es: <%= media %></p>
</body>
</html>
