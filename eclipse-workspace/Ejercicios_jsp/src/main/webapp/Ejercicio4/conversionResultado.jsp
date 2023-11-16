<!-- conversionResultado.jsp -->
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <title>Resultado Conversión</title>
</head>
<body>
    <%
        double cantidadDolares = Double.parseDouble(request.getParameter("cantidad"));
        double tasaConversion = 0.87; // Tasa de conversión de dólares a euros (ejemplo)
        double cantidadEuros = cantidadDolares * tasaConversion;
    %>

    <p><%= cantidadDolares %> dólares son aproximadamente <%= cantidadEuros %> euros</p>
</body>
</html>
