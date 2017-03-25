<%-- 
    Document   : registro
    Created on : 25-mar-2017, 15:57:52
    Author     : Jhona
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
           <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">

        <!-- Optional theme -->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous">

        <!-- Latest compiled and minified JavaScript -->
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>

        <!-- Fonts -->
        <link href="https://fonts.googleapis.com/css?family=Raleway:100,600" rel="stylesheet" type="text/css">
        <title>Registro</title>
    </head>
    <body>
       <body>

	<div class="container">
			<div class="row">
				<div class="col-xs-6 col-md-4"><h3></h3></div>
				<div class="col-xs-6 col-md-4"><h3></h3>

 <div class="wrapper">
    <!-- JSP TO JSP -->
    <!-- <form class="form-signin" action="/vinosApp/validacion.jsp" method="post"> -->       
    <!--  JSP TO SERVLET TO JSP -->
    <form class="form-signin" action="registrosql.jsp" method="post">       
      <h1 class="form-signin-heading">Registro</h1>
      <input type="text" class="form-control" name="user" placeholder="Nombre" required="" autofocus="" />
      <input type="password" class="form-control" name="pass" placeholder="Password" required=""/>      
      <button class="btn btn-lg btn-primary btn-block" type="submit">registrar</button>  | <a class="btn btn-lg" href="login" > acceder</a>
    </form>
  </div>
  </div>
 				<div class="col-xs-6 col-md-4"><h3></h3></div>
			</div>
		</div>
</body>
    </body>
</html>
