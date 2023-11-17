<!-- calcularMedia.jsp -->
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <title>Calcular Media</title>
</head>
<body>
    <form action="mediaResultado.jsp" method="post">
        <label for="nota1">Nota 1:</label>
        <input type="number" name="nota1" required>
        
        <label for="nota2">Nota 2:</label>
        <input type="number" name="nota2" required>
        
        <label for="nota3">Nota 3:</label>
        <input type="number" name="nota3" required>
        
        <input type="submit" value="Calcular Media">
    </form>
</body>
</html>
