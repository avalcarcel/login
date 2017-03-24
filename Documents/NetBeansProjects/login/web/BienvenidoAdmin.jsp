<%-- 
    Document   : BienvenidoAdmin
    Created on : 24-mar-2017, 16:55:13
    Author     : Jhona
--%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Usuario admin</title>
<style>
h3{

    color: red;

}
</style>
</head>
<body>
<%
String username = request.getParameter("user");

%>
	<div class="container">
			<div class="row">
				<div class="col-xs-6 col-md-4"><h3></h3></div>
				<div class="col-xs-6 col-md-4">
				<h3>Bienvenido <% out.println(username); %></h3>
								  
				</div>
 				<div class="col-xs-6 col-md-4"><h3></h3></div>
			</div>
		</div>
</body>
</html>