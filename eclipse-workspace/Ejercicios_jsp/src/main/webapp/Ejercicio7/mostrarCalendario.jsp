<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Calendario</title>
    <style>
        /* Estilos CSS para la tabla del calendario (puedes adaptarlos según tu preferencia) */
        table {
            border-collapse: collapse;
        }

        th, td {
            border: 1px solid black;
            padding: 8px;
            text-align: center;
        }
    </style>
</head>
<body>
    <h1>Calendario del <%= request.getAttribute("nombreMes") %> <%= request.getAttribute("año") %></h1>

    <table>
        <tr>
            <th>L</th>
            <th>M</th>
            <th>X</th>
            <th>J</th>
            <th>V</th>
            <th>S</th>
            <th>D</th>
        </tr>

        <% 
            // Obtener el calendario desde el request
            Object calendario = request.getAttribute("calendario");

            // Aquí puedes recorrer el calendario para generar las filas y celdas de la tabla HTML
            // Por ejemplo, podrías usar JSTL o scriptlets Java para iterar sobre los días y mostrarlos en la tabla
            // En este ejemplo, se omiten los detalles del bucle y se deja como tarea adicional
        %>

        <!-- Aquí iría el código para generar las filas y celdas de la tabla con los datos del calendario -->
        <!-- Puedes usar scriptlets Java o JSTL para iterar sobre el calendario y mostrarlo en la tabla -->
    </table>
</body>
</html>
tml>