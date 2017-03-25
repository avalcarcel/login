<%-- 
    Document   : registrosql
    Created on : 25-mar-2017, 16:04:13
    Author     : Jhona
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%@ page import ="java.sql.*" %>

<%
String username = request.getParameter("user");

String password = request.getParameter("pass");



try {

Class.forName("com.mysql.jdbc.Driver");
String url = "jdbc:mysql://localhost/login";
String usuario = "root";
String clave = "";
Connection conn = DriverManager.getConnection(url,usuario,clave);

PreparedStatement pst = conn.prepareStatement("Insert into  usuarios (`user`,`pass`) VALUES (?,?)");


pst.setString(1, username);

pst.setString(2, password);

pst.execute();
out.println(username);
 response.sendRedirect("login.jsp");
} catch(Exception e){

out.println("Error Registro JSP");
out.println("<a class='btn btn-lg' href='login.jsp' > acceder</a>");
out.println("<a class='btn btn-lg' href='registro.jsp' > Registro</a>");

}
%>