<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Piramide</title>
</head>
<body>
	
	<%int alt =Integer.parseInt(request.getParameter("alt"));
	int multiplier =1;
	
			
	for(int i=0;i<alt;i++){%>
	<div align="center">
		<%for(int j=0;j<multiplier;j++){%>
		
			<img width="200px" height="200px" src="https://us.123rf.com/450wm/anatolymas/anatolymas1211/anatolymas121100007/16452374-pequeña-persona-3d-que-se-sienta-en-una-posición-triste-imagen-en-3d-aislado-fondo-blanco-.jpg">
		
		<% }%>
		
	</div>
		<%multiplier+=2; %>
	<%}%>
	
	
	
	
	
	

</body>
</html>