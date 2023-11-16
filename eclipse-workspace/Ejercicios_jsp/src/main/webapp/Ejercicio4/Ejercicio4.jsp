<!-- conversor.jsp -->
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <title>Conversor de Divisas</title>
</head>
<body>
    <form action="conversionResultado.jsp" method="post">
        <label for="cantidad">Cantidad en dólares:</label>
        <input type="number" name="cantidad" step="0.01" required>
        
        <input type="submit" value="Convertir a Euros">
    </form>
</body>
</html>
