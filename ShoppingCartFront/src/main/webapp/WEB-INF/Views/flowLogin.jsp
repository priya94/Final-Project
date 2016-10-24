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
						
						<h3>Enter your details...</h3>

	<div id="box">
		<c:url var="action" value="here/register"></c:url>
		<form:form modelAttribute="user">
			<table>

				<tr>
					<td>ID:</td>
					<td><form:input type="text" path="id"  placeholder="Enter ID"/></td>
					<c:forEach items="${flowRequestContext.messageContext.getMessagesBySource('id')}" var="err">
					  <div><span>${err.text}</span></div>
					</c:forEach><br />
				</tr>

				<tr>
					<td>Name:</td>
					<td><form:input type="text" path="name"  placeholder="Enter Name"/></td>
					<c:forEach items="${flowRequestContext.messageContext.getMessagesBySource('name')}" var="err">
					  <div><span>${err.text}</span></div>
					</c:forEach><br />
				</tr>

				<tr>
					<td>Password:</td>
					<td><form:input type="text" path="password"  placeholder="Enter Password"/></td>
					<c:forEach items="${flowRequestContext.messageContext.getMessagesBySource('password')}" var="err">
					  <div><span>${err.text}</span></div>
					</c:forEach><br />
							
				</tr>

				<tr>
					<td>Mobile Number:</td>
					<td><form:input type="text" path="mobile_number"  placeholder="Enter Mobile Number"/></td>
					<c:forEach items="${flowRequestContext.messageContext.getMessagesBySource('mobile_number')}" var="err">
					  <div><span>${err.text}</span></div>
					</c:forEach><br />
				</tr>
				<tr>
					<td>Email:</td>
					<td><form:input type="text" path="mail_id"  placeholder="Enter Mail_id"/></td>
					<c:forEach items="${flowRequestContext.messageContext.getMessagesBySource('mail_id')}" var="err">
					  <div><span>${err.text}</span></div>
					</c:forEach><br />
				</tr>
				<tr>
					<td>Address:</td>
					<td><form:input type="text" path="address"  placeholder="Enter Address" /></td>
					<c:forEach items="${flowRequestContext.messageContext.getMessagesBySource('address')}" var="err">
					  <div><span>${err.text}</span></div>
					</c:forEach><br />
				</tr>

				<tr>
					<td><button name="_eventId_submit" type="submit" class="btn btn-default">Register</button></td>
				</tr>

			</table>



		</form:form>
	</div>
	
						
						
							
							
							
							
					</div>		
				</div>
			</div>
		</div>
	</section>
	<!--/form-->





	

</body>
</html>