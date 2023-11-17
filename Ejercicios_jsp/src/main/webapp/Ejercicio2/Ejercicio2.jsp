<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Saludo</title>
</head>
<body>
    <form action="saludoResultado.jsp" method="post">
        <label for="nombre">Nombre:</label>
        <input type="text" name="nombre" required>
        
        <label for="idioma">Selecciona un idioma:</label>
        <select name="idioma" required>
            <option value="es">Español</option>
            <option value="pt">Portugués</option>
            <option value="en">Inglés</option>
        </select>
        
        <input type="submit" value="Saludar">
    </form>
</body>
</html>