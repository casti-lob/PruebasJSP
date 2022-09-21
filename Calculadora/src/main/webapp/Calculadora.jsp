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
	<% double result=0; 
	
	%>
	<form action="Calculadora.jsp">
		<div align="center">
			<table  width="200px" height="200px" border="2">
				<tr>
					<td colspan="3">
						<p><%=result %> </p>
					</td>
				</tr>
				<tr>
					<td>
						<button name="operator">+</button>
					
					</td>
					<td>
						<button name="operator">-</button>
					</td>
					<td>
						<button name="operator">*</button>
					</td>
					
				</tr>
				<tr>
					<td>
						<button name="number">9</button>
						
						
					</td>
					<td>
						<button name="number">8</button>
					
					</td>
					<td>
						<button name="number">7</button>
					
					</td>
					
				</tr>
				<tr>
					<td>
						<button name="number">6</button>
						
						
					</td>
					<td>
						<button name="number">5</button>
					
					</td>
					<td>
						<button name="number">4</button>
					
					</td>
				</tr>
				<tr>
					<td>
						<button name="number">3</button>
						
						
					</td>
					<td>
						<button name="number">2</button>
					
					</td>
					<td>
						<button name="number">1</button>
					
					</td>
				</tr>
				<tr>
					<td>
					  <button name="number">0</button>
					</td>
					<td>
						<button name="operator">/</button>
					</td>
					<td>
					  <input type="submit" id="name">
					</td>
				</tr>
				
				
				
			</table>
		</div>
	
	</form>
	
	<%
	int numberOne= Integer.parseInt(request.getParameter("number"));
	int numberTwo= Integer.parseInt(request.getParameter("number"));
	String op = request.getParameter("operator");
	Calculadora c = new Calculadora(numberOne,numberTwo); 
	
	switch(op){
		case "+":
			result= c.sumar();
		case "-":
			result= c.resta();
		case "*":
			result= c.multiplicar();
		case "/":
			try {
				result= c.dividir();
			} catch (divException e) {
				e.getMessage();
			}
			
			
	}
	
	%>
</body>
</html>