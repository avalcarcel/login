<%-- 
    Document   : validacion
    Created on : 24-mar-2017, 16:56:14
    Author     : Jhona
--%>


<%@ page import ="java.sql.*" %>

<%
String username = request.getParameter("user");

String password = request.getParameter("pass");
out.println(username);


try {

Class.forName("com.mysql.jdbc.Driver");
String url = "jdbc:mysql://localhost/login";
String usuario = "root";
String clave = "";
Connection conn = DriverManager.getConnection(url,usuario,clave);

PreparedStatement pst = conn.prepareStatement("Select `user`,`pass` from usuarios where user=? and pass=?");




pst.setString(1, username);

pst.setString(2, password);

ResultSet rs = pst.executeQuery();

if(rs.next())
        if(rs.getString("user").equals("admin")){
	response.sendRedirect("BienvenidoAdmin.jsp?user="+username+"");
        }else{
        response.sendRedirect("Bienvenido.jsp?user="+username+"");
        }
else

	response.sendRedirect("login.jsp");

} catch(Exception e){

out.println("Error Validación JSP");

}
%>
</body>
</html>