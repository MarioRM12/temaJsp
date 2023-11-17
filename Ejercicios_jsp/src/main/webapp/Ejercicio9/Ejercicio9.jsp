<%@ page import="java.util.Random" %>
<!DOCTYPE html>
<html>
<head>
    <title>Tablero de Ajedrez</title>
	<link rel="stylesheet" href="estilos.css">
</head>
<body>
    <h1>Tablero de Ajedrez</h1>
    <table>
        <%
            // Función para obtener una posición aleatoria dentro del tablero
            Random random = new Random();
            int alfilFila = random.nextInt(8);
            int alfilColumna = random.nextInt(8);
            
            int caballoFila, caballoColumna;
            do {
                caballoFila = random.nextInt(8);
                caballoColumna = random.nextInt(8);
            } while (caballoFila == alfilFila && caballoColumna == alfilColumna); // Asegurar que las posiciones no sean iguales
            
            for (int fila = 0; fila < 8; fila++) {
                %><tr><%
                for (int columna = 0; columna < 8; columna++) {
                    String clase = (fila + columna) % 2 == 0 ? "Blanco" : "Negro";
                    %><td class="<%= clase %>"><%
                    if (fila == alfilFila && columna == alfilColumna) {
                        %><span class="pieza">&#9815;</span><%
                    } else if (fila == caballoFila && columna == caballoColumna) {
                        %><span class="pieza">&#9822;</span><%
                    }
                    %></td><%
                }
                %></tr><%
            }
        %>
    </table>
</body>
</html>
