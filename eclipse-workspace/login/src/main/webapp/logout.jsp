<%
 //session.removeAttribute("usuario");
 session.invalidate();  //<== preferible, m�s seguro
  response.sendRedirect("index.jsp");
%>
