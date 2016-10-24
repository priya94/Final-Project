<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<title>Register</title>

<!-- for-mobile-apps -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords"
	content="Best Store Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
<script type="application/x-javascript">
	
	
	 addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false);
		function hideURLbar(){ window.scrollTo(0,1); } 


</script>
<!-- //for-mobile-apps -->
<link href="resources\css\bootstrap.css" rel="stylesheet"
	type="text/css" media="all" />
<link href="resources\css\style.css" rel="stylesheet" type="text/css"
	media="all" />
<!-- js -->
<script src="resources\js\jquery.min.js"></script>
<!-- //js -->
<!-- cart -->
<script src="resources\js\simpleCart.min.js"></script>
<!-- cart -->
<!-- for bootstrap working -->
<script type="text/javascript" src="resources\js\bootstrap-3.1.1.min.js"></script>
<!-- //for bootstrap working -->
<link
	href='//fonts.googleapis.com/css?family=Open+Sans:400,300,300italic,400italic,600,600italic,700,700italic,800,800italic'
	rel='stylesheet' type='text/css'>
<link
	href='//fonts.googleapis.com/css?family=Lato:400,100,100italic,300,300italic,400italic,700,700italic,900,900italic'
	rel='stylesheet' type='text/css'>
<!-- timer -->
<link rel="stylesheet" href="resources\css\jquery.countdown.css" />
<!-- //timer -->
<!-- animation-effect -->
<link href="resources\css\animate.min.css" rel="stylesheet">
<script src="resources\js\wow.min.js"></script>
<script>
	new WOW().init();
</script>
<!-- //animation-effect -->

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

</head>
<body>
	
	<!-- header -->
	<div class="header">
		<div class="container">
			
			
						
				
				<div class="clearfix"> </div>
			</div>
		</div>
	</div>
<!-- //header -->
<!-- breadcrumbs -->
	<div class="breadcrumbs">
		<div class="container">
			<ol class="breadcrumb breadcrumb1 animated wow slideInLeft" data-wow-delay=".5s">
				
				<li class="active">Login Page</li>
			</ol>
		</div>
	</div>
<!-- //breadcrumbs -->
<!-- login -->
	<div class="login">
		<div class="container">
			<h3 class="animated wow zoomIn" data-wow-delay=".5s">Login Form</h3>
			<p class="est animated wow zoomIn" data-wow-delay=".5s">Please enter with your credentials.</p>
			<div class="login-form-grids animated wow slideInUp" data-wow-delay=".5s">
				<c:url var="action" value="here/register"></c:url>
				<form:form action="${action}" method="post" modelAttribute="user">
					<table>
			<tr>
					<td>ID:</td>
					<td><input type="text" name="id" autofocus required="id"
						placeholder="Enter ID"></td>
				</tr>

				<tr>
					<td>Name:</td>
					<td><input type="text" name="name" autofocus required="name"
						placeholder="Enter Name"></td>
				</tr>

				<tr>
					<td>Password:</td>
					<td><input type="text" name="password" autofocus
						required="password" placeholder="Enter Password" /></td>
				</tr>

				<tr>
					<td>Mobile Number:</td>
					<td><input type="text" name="mobile_number" autofocus
						required="mobile_number" placeholder="Enter Mobile Number" /></td>
				</tr>
				<tr>
					<td>Email:</td>
					<td><input type="text" name="mail_id" autofocus
						required="mail_id" placeholder="Enter Mail_id" /></td>
				</tr>
				<tr>
					<td>Address:</td>
					<td><input type="text" name="address" autofocus
						required="address" placeholder="Enter Address" /></td>
				</tr>

				<tr>
					<td><input type="submit" value="Register"></td>
				</tr>


		</table>

				</form:form>	
				
			</div>
			
		</div>
	</div>
<!-- //register -->
	
	
</body>
</html>