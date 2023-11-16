<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.util.Calendar" %>
<html>
<head>
    <title>Calendario</title>
    <style>
        /* Estilos CSS para la tabla del calendario */
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
    <%
        String nombreMes = request.getParameter("nombreMes");
        int año = Integer.parseInt(request.getParameter("año"));

        Calendar calendario = Calendar.getInstance();
        int mes;

        switch (nombreMes) {
            case "Enero":
                mes = Calendar.JANUARY;
                break;
            case "Febrero":
                mes = Calendar.FEBRUARY;
                break;
            case "Marzo":
                mes = Calendar.MARCH;
                break;
            case "Abril":
                mes = Calendar.APRIL;
                break;
            case "Mayo":
                mes = Calendar.MAY;
                break;
            case "Junio":
                mes = Calendar.JUNE;
                break;
            case "Julio":
                mes = Calendar.JULY;
                break;
            case "Agosto":
                mes = Calendar.AUGUST;
                break;
            case "Septiembre":
                mes = Calendar.SEPTEMBER;
                break;
            case "Octubre":
                mes = Calendar.OCTOBER;
                break;
            case "Noviembre":
                mes = Calendar.NOVEMBER;
                break;
            case "Diciembre":
                mes = Calendar.DECEMBER;
                break;
            default:
                out.println("Mes no válido.");
                return;
        }

        calendario.set(Calendar.YEAR, año);
        calendario.set(Calendar.MONTH, mes);
        calendario.set(Calendar.DAY_OF_MONTH, 1);

        int totalDias = calendario.getActualMaximum(Calendar.DAY_OF_MONTH);
        int diaSemana = calendario.get(Calendar.DAY_OF_WEEK);
    %>

    <h1>Calendario del <%= nombreMes %> <%= año %></h1>

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
            for (int i = 1; i < diaSemana; i++) {
                out.print("<td></td>");
            }

            for (int i = 1; i <= totalDias; i++) {
                out.print("<td>%d</td>", i);
                if ((i + diaSemana - 1) % 7 == 0 || i == totalDias) {
                    out.println("</tr><tr>");
                }
            }

            while ((totalDias + diaSemana - 1) % 7 != 0) {
                out.print("<td></td>");
                totalDias++;
            }
        %>
    </table>
</body>
</html>
