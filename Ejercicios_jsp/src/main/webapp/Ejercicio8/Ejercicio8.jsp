<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <title>Configurador de Interior de Vehículo</title>
    <link rel="stylesheet" href="estilos.css">
</head>
<body>
    <h1>Configurador de Interior de Vehículo</h1>
    <form action="configurarInterior.jsp" method="post">
        <label for="colorTapiceria">Color de la tapicería:</label>
        <select name="colorTapiceria" id="colorTapiceria">
            <option value="blanco">Blanco</option>
            <option value="negro">Negro</option>
            <option value="berenjena">Berenjena</option>
        </select><br><br>
        
        <label for="materialMolduras">Material de las molduras:</label>
        <select name="materialMolduras" id="materialMolduras">
            <option value="madera">Madera</option>
            <option value="carbono">Carbono</option>
        </select><br><br>
        
        <input type="submit" value="Configurar">
    </form>
</body>
</html>
