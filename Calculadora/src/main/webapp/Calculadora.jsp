<%@page import="com.jacaranda.divException"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.jacaranda.Calculadora" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%double result=0;
	double number1= Integer.parseInt(request.getParameter("number1"));
	double number2= Integer.parseInt(request.getParameter("number2"));
	String error;
	
	String add = request.getParameter("+");
	String sub = request.getParameter("-");
	String mult = request.getParameter("*");
	String div = request.getParameter("/");
	
	Calculadora c = new Calculadora(number1,number2);
	
	if(add!=null){
		result = c.sumar();
	}if(sub!=null){
		result = c.resta();
	}if(mult!=null){
		result = c.multiplicar();
	}else{
		try {
			result = c.dividir();
				} catch (divException e) {
					error = e.getMessage();
					
				}
		
	}
	%>
	<p>
 	Numero: <input type="number" name="number1">
 	Numero: <input type="number" name="number1">
 	Resultado = <%=result %>
 	</p>
 	<p>
 	<button name="+" type="submit">Suma</button>
 	<button name="-" type="submit">Resta</button>
 	<button name="*" type="submit">Multiplica</button>
 	<button name="/" type="submit">Divide</button>
 	</p>
 	
	
</body>
</html>