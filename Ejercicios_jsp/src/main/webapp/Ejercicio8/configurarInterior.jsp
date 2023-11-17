<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <title>Resultado de la Configuración</title>
    <link rel="stylesheet" href="styles.css">
</head>
<body>
    <h1>Resultado de la Configuración</h1>
    
    <%-- Recogemos los datos del formulario --%>
    <% String colorTapiceria = request.getParameter("colorTapiceria"); %>
    <% String materialMolduras = request.getParameter("materialMolduras"); %>
    
    <div class="resultado-configuracion">
        <h2>Interior del Vehículo Configurado:</h2>
        <p>Color de la tapicería: <%= colorTapiceria %></p>
        <p>Material de las molduras: <%= materialMolduras %></p>
        
        <div class="interior-vehiculo">
            <%-- Aquí podrías insertar imágenes u otros elementos que representen el interior del vehículo configurado --%>
        </div>
    </div>
</body>
</html>
