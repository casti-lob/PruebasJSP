<%@  page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%String nombre = request.getParameter("nombre"); %>
	<%int edad =Integer.parseInt(request.getParameter("edad")); %>
	<%String resultado; %>
	Hola <%=nombre %>
	<%
		if(edad<17){
			resultado="Eres un enano";
			
		}else if(edad<38){
			resultado="Eres ya mayorcito";
		}else{
			resultado="Te falta poco";
		}
	
	%>
	
	Segun tu edad <%=resultado %>
	
	
	
</body>
</html>