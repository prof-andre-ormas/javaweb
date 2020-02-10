<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<title>Acesso ao sistema</title>
<body>
	<h1>Entre com as credenciais</h1>
	<form action="ConectaUsuario" method="post">
    	<p>E-mail: <input type="text" name="mail" /></p>
    	<p>Senha: <input type="password" name="password" /></p> 
    	<p><button type="submit">Entrar</button></p>  
	</form>
</body>
</html>