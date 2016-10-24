<!DOCTYPE html>

<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<html lang="en">
<head>


<title>Home | Cool Outlet</title>


</head>

<body>


	<section id="form">
		<!--form-->
		<div class="container">
			<div class="row">
				<div class="col-sm-4 col-sm-offset-1">
					<div class="login-form">
						<!--login form-->
						<h2>Login to your account</h2>
						<c:if test="${invalidCredentials==true}">
						${errorMessage}
						</c:if>

						<c:url var="action" value="/login"></c:url>

						<form:form action="${action}" method="post">
							<input type="text" placeholder="Username" name="name" />
							<input type="password" placeholder="Password" name="password" />

							<button type="submit" class="btn btn-default">Login</button>
						</form:form>
					</div>
					<!--/login form-->
				</div>

				<div class="col-sm-4">
					<div class="signup-form">
						<!--sign up form-->
						<h2>New User Signup!</h2>

						<form:form modelAttribute="user">
							${user.id}
							
								<br />
							${user.name}
							
							<br />
							${user.password}	
							
							<br />
							${user.mobile_number}
								 
						    <br />
						    ${user.mail_id}		
							
							<br />
							${user.address}
							
							<br />

							<button name="_eventId_edit" type="submit"
								class="btn btn-default">Edit</button>
							<br />
							<button name="_eventId_submit" type="submit"
								class="btn btn-default">Confirm Details</button>

						</form:form>
					</div>
					<!--/sign up form-->
				</div>
			</div>
		</div>
		
	</section>
	<!--/form-->







</body>
</html>