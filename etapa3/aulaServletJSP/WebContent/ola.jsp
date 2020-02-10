<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8" import="java.util.Date, java.text.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Meu primeiro JSP</title>
</head>
<body>
	<h1>
		<%
		out.println("Ola Mundo");
		%>
		<br>
		<%= new Date() %>		
	</h1>
	<h2>
		<%
			int dia_num = Integer.parseInt((new SimpleDateFormat("dd")).format(new Date()));
			out.println("<br>Hoje é dia " + dia_num);			
			out.println("<br>" + request.getParameter("param1"));
			out.println("<br>" + application.getServletContextName());
			out.println("<br>" + application.getContextPath());
			out.println("<br>" + application.getServerInfo());
			application.setAttribute("att1", "teste");
			out.println("<br>" + application.getAttribute("att1").toString());
			
			
		%>
	</h2>
	<h3>
		<%
		int dia = Integer.parseInt((new SimpleDateFormat("dd")).format(new Date()));
        int mes = Integer.parseInt((new SimpleDateFormat("M")).format(new Date()));
        int ano = Integer.parseInt((new SimpleDateFormat("yyyy")).format(new Date()));
        if(mes==1){
           out.println("Hoje é " + dia + " de Janeiro de " + ano);
        }else if(mes==02){
           out.println("Hoje é " + dia + " de Fevereiro de " + ano);
        }else if(mes==3){
           out.println("Hoje é " + dia + " de Março de " + ano);
        }else if(mes==4){
           out.println("Hoje é " + dia + " de Abril de " + ano);
        }else if(mes==5){
           out.println("Hoje é " + dia + " de Maio de " + ano);
        }else if(mes==6){
           out.println("Hoje é " + dia + " de Junho de " + ano);
        }else if(mes==7){
           out.println("Hoje é " + dia + " de Julho de " + ano);
        }else if(mes==8){
           out.println("Hoje é " + dia + " de Agosto de " + ano);
        }else if(mes==9){
           out.println("Hoje é " + dia + " de Setembro de " + ano);
        }else if(mes==10){
           out.println("Hoje é " + dia + " de Outubro de " + ano);
        }else if(mes==11){
           out.println("Hoje é " + dia + " de Novembro de " + ano);
        }else if(mes==12){
           out.println("Hoje é " + dia + " de Dezembro de " + ano);
        }
		%>
	</h3>
</body>
</html>