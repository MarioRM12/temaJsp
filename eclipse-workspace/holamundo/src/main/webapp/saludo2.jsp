<%-- saludo2_1.jsp --%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
</head>
<body>
	<%String cabecera = "<h1>¡Hola Mundo!</h1>"; %>
<% out.println(cabecera); %>
<%String parrafo = "<p>Esto es un párrafo de hola mundo...</p>"; %>
<% out.print(parrafo); %>
</body>
</html>