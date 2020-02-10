<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Usuario conectado</title>
</head>
<body>
	<h1> Bem vindo</h1>
	<h2>
	<jsp:useBean id="user" scope="request" class="pojos.Usuario" />
	<jsp:getProperty property="email" name="user"/>
	</h2>
</body>
</html>