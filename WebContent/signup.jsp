<%@ page import="java.sql.*"%>
<%@page import="jsp.SignUp"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="UTF-8"%>
    <%
    int result = 0;
    
    if(request.getParameter("submit") !=null){
    String sfirst = new String();
    String slast = new String();
    String semail = new String();
    String spassword = new String();
    if(request.getParameter("first")!=null){
    	sfirst = request.getParameter("first");
    }
    if(request.getParameter("last")!=null){
    	slast = request.getParameter("last");
    }
    if(request.getParameter("email")!=null){
    	semail = request.getParameter("email");
    }
    if(request.getParameter("password")!=null){
    	spassword = request.getParameter("password");
    }
    SignUp signup = new SignUp();
    result = signup.setSignUp(sfirst, slast, semail, spassword);
    }
    %>
<html>
<head>
<script type="text/javascript" src="js/jquery.js"></script>
<script type="text/javascript" src="js/jquery-ui.js"></script>
<script type="text/javascript" src="js/bootstrap.min.js"></script>
<link type="text/css" rel="stylesheet" href="css/jquery-ui.css">
<link type="text/css" rel="stylesheet" href="css/bootstrap.min.css">
<link type="text/css" rel="stylesheet" href="css/bootstrap-theme.min.css">
<link type="text/css" rel="stylesheet" href="css/style.css">
<script type="text/javascript">

</script>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>

</head>
<body>
<div class="container">
        <div class="row centered-form">
        <div class="col-xs-12 col-sm-8 col-md-4 col-sm-offset-2 col-md-offset-4">
        	<div class="panel panel-default">
        		<div class="panel-heading">
			    		<h3 class="panel-title">Please sign up <small>It's free!</small></h3>
			 			</div>
			 			<div class="panel-body">
			    		<form role="form" method="post">
			    			<div class="row">
			    				<div class="col-xs-6 col-sm-6 col-md-6">
			    					<div class="form-group">
			                <input type="text" name="first" id="first_name" class="form-control input-sm" placeholder="First Name">
			    					</div>
			    				</div>
			    				<div class="col-xs-6 col-sm-6 col-md-6">
			    					<div class="form-group">
			    						<input type="text" name="last" id="last_name" class="form-control input-sm" placeholder="Last Name">
			    					</div>
			    				</div>
			    			</div>

			    			<div class="form-group">
			    				<input type="email" name="email" id="email" class="form-control input-sm" placeholder="Email Address" >
			    			</div>

			    			<div class="row">
			    				<div class="col-xs-6 col-sm-6 col-md-6">
			    					<div class="form-group">
			    						<input type="password" name="password" id="password" class="form-control input-sm" placeholder="Password">
			    					</div>
			    				</div>

			    			</div>

			    			<input type="submit" name="submit" value="Register" class="btn btn-info btn-block">
			    		
			    		</form>
			    	</div>
	    		</div>
    		</div>
    	</div>
    </div>
</body>
</html>