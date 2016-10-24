<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<link rel="stylesheet" href="<c:url value="resources/css/admin.css" />">

<html>
<head>
<title>Cart</title>

</head>
<body>
<c:url var="action" value="/cart"></c:url>
		
	
	<div id="cartDisplay">
      <h3>Cart List</h3>
		<c:if test="${!empty cartList}">
			<h2 style="font-family: verdana; text-align: center; color: #FDFDFD">List
				of Carts</h2>
	
	<table>
		<tr>
			<th align="left" width="80">Cart ID</th>
			<th align="left" width="80">Price</th>
			<th align="left" width="100">Quantity</th>
			<th align="left" width="120">Status</th>
			<th align="left" width="120">Product ID</th>
			<th align="left" width="120">User ID</th>
			<th align="left" width="60">Delete</th>
			

		</tr>
		<c:forEach items="${cartList}" var="cart">
			<tr>
				
				
				<td align="left">${cart.getId()}</td>
				<td align="left">${cart.price}</td>
				<td align="left">${cart.quantity}</td>
				<td align="left">${cart.status}</td>
				<td align="left">${cart.product.id}</td>
				<td align="left">${cart.user.id}</td>
				
				
				
				<td align="left"><a href="<c:url value='/myCart/delete/${cart.id}'  />">Delete</a></td>
				
			</tr>
		</c:forEach>

	</table></br>
	
	</c:if>
	</div>
	
				
	
	<h5><B>Mode of Payment</B></h5>
	<form action="">
 	 <input type="radio" name="payment" value="cash"> cash on Delivery<br>
  	<input type="radio" name="payment" value="net"> Net Banking<br>
 	 
</form>
</body>
</html>