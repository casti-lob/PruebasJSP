<h1>Hola mundo</h1>
<%= new java.util.Date() %>
<%! int numVisitas=0;%>

Numero de visitas: <%= numVisitas++%>

<% java.util.Calendar ahora = java.util.Calendar.getInstance();
   int hora = ahora.get(java.util.Calendar.HOUR_OF_DAY);
   if (hora>20||hora<6){%>
   Buenas noches
  <% }else if (hora>6 && hora<12){ %>
   		Buenos dias
<%   }else{ %>
   		Buenas tardes"
<%   	}
%>