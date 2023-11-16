<!-- tablaMultiplicar.jsp -->
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <title>Tabla de Multiplicar</title>
</head>
<body>
    <form action="tablaResultado.jsp" method="post">
        <label for="numero">Número:</label>
        <input type="number" name="numero" required>
        
        <input type="submit" value="Mostrar Tabla">
    </form>
</body>
</html>
