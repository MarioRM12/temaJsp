<%@ page import="java.math.BigDecimal" %>
<%@ page import="java.math.MathContext" %>
<%@ page language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>Solución de la Ecuación</title>
</head>
<body>
    <h1>Solución de la Ecuación de Segundo Grado</h1>
    
    <%-- Obtener los valores de a, b y c desde el formulario --%>
    <% 
        BigDecimal a = new BigDecimal(request.getParameter("a"));
        BigDecimal b = new BigDecimal(request.getParameter("b"));
        BigDecimal c = new BigDecimal(request.getParameter("c"));
    %>
    
    <%-- Calcular el discriminante --%>
    <% 
        BigDecimal discriminante = b.pow(2).subtract(a.multiply(c).multiply(new BigDecimal("4")));
    %>
    
    <%-- Calcular las soluciones --%>
    <% 
        BigDecimal raizDiscriminante = discriminante.sqrt(MathContext.DECIMAL128);
        BigDecimal dosA = a.multiply(new BigDecimal("2"));
        
        BigDecimal x1 = b.negate().add(raizDiscriminante).divide(dosA, 5, BigDecimal.ROUND_HALF_UP);
        BigDecimal x2 = b.negate().subtract(raizDiscriminante).divide(dosA, 5, BigDecimal.ROUND_HALF_UP);
    %>
    
    <%-- Mostrar la solución --%>
    <p>La ecuación ingresada es: <%= a %>x^2 + <%= b %>x + <%= c %> = 0</p>
    <p>El discriminante es: <%= discriminante %></p>
    
    <% if (discriminante.compareTo(BigDecimal.ZERO) > 0) { %>
        <p>Las soluciones son: x1 = <%= x1 %>, x2 = <%= x2 %></p>
    <% } else if (discriminante.compareTo(BigDecimal.ZERO) == 0) { %>
        <p>La solución única es: x = <%= x1 %></p>
    <% } else { %>
        <p>No existen soluciones reales</p>
    <% } %>
    
    <a href="index.jsp">Volver</a>
</body>
</html>

