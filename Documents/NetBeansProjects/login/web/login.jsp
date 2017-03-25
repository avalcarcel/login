<%-- 
    Document   : login
    Created on : 24-mar-2017, 16:25:12
    Author     : Jhona
--%>


<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=uft-8">
<title>Página Login</title>
   <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">

        <!-- Optional theme -->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous">

        <!-- Latest compiled and minified JavaScript -->
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>

        <!-- Fonts -->
        <link href="https://fonts.googleapis.com/css?family=Raleway:100,600" rel="stylesheet" type="text/css">

</head>
<body>

	<div class="container">
			<div class="row">
				<div class="col-xs-6 col-md-4"><%@ page import ="java.sql.*" %>

<%

try {

Class.forName("com.mysql.jdbc.Driver");
String url = "jdbc:mysql://localhost/login";
String usuario = "root";
String clave = "";
Connection conn = DriverManager.getConnection(url,usuario,clave);

PreparedStatement pst = conn.prepareStatement("Select * from usuarios");



ResultSet rs = pst.executeQuery();
out.println("<br/><ul class='list.group'>");
while(rs.next()){
    String nombre = rs.getString("user");
    out.println("<li class='list-group-item'>"+nombre+"</li>");
}
out.println("</ul>");
} catch(Exception e){

out.println("Error Lista JSP");
out.println("<a class='btn btn-lg' href='login.jsp' > acceder</a>");
out.println("<a class='btn btn-lg' href='registro.jsp' > Registro</a>");

}
%></div>
				<div class="col-xs-6 col-md-4">

 <div class="wrapper">
    <!-- JSP TO JSP -->
    <!-- <form class="form-signin" action="/vinosApp/validacion.jsp" method="post"> -->       
    <!--  JSP TO SERVLET TO JSP -->
    <form class="form-signin" action="validacion.jsp" method="post">       
      <h1 class="form-signin-heading">Login</h1>
      <input type="text" class="form-control" name="user" placeholder="Email Address" required="" autofocus="" />
      <input type="password" class="form-control" name="pass" placeholder="Password" required=""/>      
      <label class="checkbox">
        <input type="checkbox" value="remember-me" id="rememberMe" name="rememberMe"> Remember me
      </label>
      <button class="btn btn-lg btn-primary btn-block" type="submit">Login</button>  | <a  class="btn btn-lg btn-primary btn-block" href="registro.jsp"> Registrate</a>
    </form>
  </div>
  </div>
 				<div class="col-xs-6 col-md-4"></div>
			</div>
		</div>
</body>
</html>