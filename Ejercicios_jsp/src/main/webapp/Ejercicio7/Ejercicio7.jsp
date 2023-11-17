<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page import= "java.util.*" %>
    <%@page import= "java.text.*" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	
	Calendar calendar = Calendar.getInstance();
	calendar.set(Calendar.YEAR, 1905);
	calendar.set(Calendar.MONTH, 1);
	int numDays = calendar.getActualMaximum(Calendar.DATE);
	
	for(int dia = 1; dia <= numDays; dia++){
		calendar.set(Calendar.DAY_OF_MONTH, dia);
		Date fecha = calendar.getTime();
		SimpleDateFormat formateador = new SimpleDateFormat("EEEE dd MMM yyyy");
		out.println(formateador.format(fecha) + "<br/>");
	}
	%>
</body>
</html>