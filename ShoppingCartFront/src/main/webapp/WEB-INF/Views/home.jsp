<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<title>Home</title>
<!-- for-mobile-apps -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords"
	content="Best Store Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
<script type="application/x-javascript"></script>

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
<title>Shopping cart</title>
</head>
<body>
	<div class="header">
		<div class="container">
			<div class="header-grid">
				<div class="header-grid-left animated wow slideInLeft"
					data-wow-delay=".5s">
					<ul>
						<li><i class="glyphicon glyphicon-envelope"
							aria-hidden="true"></i><a href="mailto:menon94priya@gmail.com">menon94priya@gmail.com</a></li>
						<li><i class="glyphicon glyphicon-earphone"
							aria-hidden="true"></i>+9446029241</li>
						<c:choose>
							<c:when test="${empty loggedInUser}">
								<li><i class="glyphicon glyphicon-log-in"
									aria-hidden="true"></i><a href="loginhere">Login</a></li>
								<li><i class="glyphicon glyphicon-book" aria-hidden="true"></i><a
									href="member.obj">Register</a></li>
							</c:when>

							<c:when test="${not empty loggedInUser}">

								<li><a href="logout">LOGOUT</a></li>
								<li><a href="cart">CART</a></li>

							</c:when>


						</c:choose>



					</ul>
				</div>

				<div class="clearfix"></div>
			</div>
			<div class="logo-nav">
				<div class="logo-nav-left animated wow zoomIn" data-wow-delay=".5s">
					<h1>
						<a href="#">Cool Outlet </a>
					</h1>
				</div>
				<div class="logo-nav-left1">
					<nav class="navbar navbar-default"> <!-- Brand and toggle get grouped for better mobile display -->
					<div class="navbar-header nav_2">
						<button type="button"
							class="navbar-toggle collapsed navbar-toggle1"
							data-toggle="collapse" data-target="#bs-megadropdown-tabs">
							<span class="sr-only">Toggle navigation</span> <span
								class="icon-bar"></span> <span class="icon-bar"></span> <span
								class="icon-bar"></span>
						</button>
					</div>
					<div class="collapse navbar-collapse" id="bs-megadropdown-tabs">
						<ul class="nav navbar-nav">
							<li class="active"><a href="#" class="act">Home</a></li>
							<!-- Mega Menu -->
							<li class="dropdown"><a href="#" class="dropdown-toggle"
								data-toggle="dropdown">Products <b class="caret"></b></a>
								<ul class="dropdown-menu multi-column columns-3">
									<div class="row">
										<div class="col-sm-4">
											<ul class="multi-column-dropdown">
												<h6>Men's Wear</h6>
												<li><a href="#">Clothing</a></li>
												<li><a href="#">Shoes</a></li>
												<li><a href="#">Watches</a></li>

											</ul>
										</div>
										<div class="col-sm-4">
											<ul class="multi-column-dropdown">
												<h6>Women's Wear</h6>
												<li><a href="#">Clothing</a></li>
												<li><a href="#">Wallets,Bags</a></li>
												<li><a href="#">Footwear</a></li>
												<li><a href="#">Accessories</a></li>


											</ul>
										</div>
										<div class="col-sm-4">
											<ul class="multi-column-dropdown">
												<h6>Kid's Wear</h6>
												<li><a href="#">Boy's Clothing</a></li>
												<li><a href="#">Girl's Clothing</a></li>
												<li><a href="#">Shoes</a></li>

											</ul>
										</div>
										<div class="clearfix"></div>
									</div>
								</ul></li>
							<li class="dropdown"><a href="#" class="dropdown-toggle"
								data-toggle="dropdown">Furniture <b class="caret"></b></a>
								<ul class="dropdown-menu multi-column columns-3">
									<div class="row">
										<div class="col-sm-4">
											<ul class="multi-column-dropdown">
												<h6>Home Collection</h6>
												<li><a href="#">Sofas</a></li>
												<li><a href="#">Dining Tables</a></li>
												<li><a href="#">Home Decor</a></li>
											</ul>
										</div>
										<div class="col-sm-4">
											<ul class="multi-column-dropdown">
												<h6>Office Collection</h6>
												<li><a href="#">Tables</a></li>
												<li><a href="#">Sofas</a></li>
												<li><a href="#">Sockets</a></li>
												<li><a href="#">Electrical Machines</a></li>
											</ul>
										</div>
										<div class="col-sm-4">
											<ul class="multi-column-dropdown">
												<h6>Decorations</h6>
												<li><a href="#">Toys</a></li>
												<li><a href="#">Wall Clock</a></li>
												<li><a href="#">Lighting</a></li>
												<li><a href="#">Top Brands</a></li>
											</ul>
										</div>
										<div class="clearfix"></div>
									</div>
								</ul></li>
								
							<li><a href="#">Contact</a></li>
							<li><a href="#">AboutUs</a></li>
							
						</ul>
					</div>
					</nav>
				</div>

				<div class="header-right">
					<div class="cart box_1">
						<a href="#">
							<h3>
								<div class="total">
									<span class="simpleCart_total"></span> (<span
										id="simpleCart_quantity" class="simpleCart_quantity"></span>
									items)
								</div>
								<img src="resources\images\bag.png" alt="" />
							</h3>
						</a>
						<p>
							<a href="javascript:;" class="simpleCart_empty">Empty Cart</a>
						</p>
						<div class="clearfix"></div>
					</div>
				</div>
				<div class="clearfix"></div>
			</div>
		</div>
	</div>
	<!-- //header -->

	<div id="loginhere">
		<c:if
			test="${isUserClickedLoginHere==true || invalidCredentials==true}">
			<%@ include file="login.jsp"%>

		</c:if>
	</div>


	<div id="loginhere">
		<c:if test="${islogin==true || invalidCredentials==true}">
			<div id="error">${errorMessage}</div>
			<%@ include file="login.jsp"%>

		</c:if>
	</div>

	<div id="registerhere">
		<c:if test="${isregister==true}">
			<%@ include file="register.jsp"%>

		</c:if>
	</div>

	<div id="registerhere">
		<c:if test="${isregister==true || invalidCredentials==true}">
			<div id="error">${errorMessage}</div>
			<%@ include file="register.jsp"%>

		</c:if>
	</div>











	<!-- banner -->
	<div class="banner">
		<div class="container">
			<div class="banner-info animated wow zoomIn" data-wow-delay=".5s">
				<h3>Free Online Shopping</h3>
				<h4>
					Up to <span>50% <i>Off/-</i></span>
				</h4>
				<div class="wmuSlider example1">
					<div class="wmuSliderWrapper">
						<article style="position: absolute; width: 100%; opacity: 0;">
						<div class="banner-wrap">
							<div class="banner-info1">
								<p>T-Shirts + Formal Pants + Accessories + Wallets</p>
							</div>
						</div>
						</article>
						<article style="position: absolute; width: 100%; opacity: 0;">
						<div class="banner-wrap">
							<div class="banner-info1">
								<p>Toys + Furniture + Lighting + Watches</p>
							</div>
						</div>
						</article>
						<article style="position: absolute; width: 100%; opacity: 0;">
						<div class="banner-wrap">
							<div class="banner-info1">
								<p>Tops + Bags + Home Decor</p>
							</div>
						</div>
						</article>
					</div>
				</div>
				<script src="resources\js\jquery.wmuSlider.js"></script>
				<script>
					$('.example1').wmuSlider();
				</script>
			</div>
		</div>
	</div>
	<!-- //banner -->
	<!-- banner-bottom -->
	<div class="banner-bottom">
		<div class="container">
			<div class="banner-bottom-grids">
				<div class="banner-bottom-grid-left animated wow slideInLeft"
					data-wow-delay=".5s">
					<div class="grid">
						<figure class="effect-julia"> <img
							src="resources\images\4.jpg" alt=" " class="img-responsive" /> <figcaption>
						<h3>
							Cool <span>Outlet</span><i> in online shopping</i>
						</h3>
						<div>
							<p>Exotic Mens Jeans</p>
							<p>Cool Leggings in all shades</p>
							<p>Boots in all new styles</p>
						</div>
						</figcaption> </figure>
					</div>
				</div>
				<div class="banner-bottom-grid-left1 animated wow slideInUp"
					data-wow-delay=".5s">
					<div
						class="banner-bottom-grid-left-grid left1-grid grid-left-grid1">
						<div class="banner-bottom-grid-left-grid1">
							<img src="resources\images\1.jpg" alt=" " class="img-responsive" />
						</div>
						<div class="banner-bottom-grid-left1-pos">
							<p>Discount 45%</p>
						</div>
					</div>
					<div
						class="banner-bottom-grid-left-grid left1-grid grid-left-grid1">
						<div class="banner-bottom-grid-left-grid1">
							<img src="resources\images\2.jpg" alt=" " class="img-responsive" />
						</div>
						<div class="banner-bottom-grid-left1-position">
							<div class="banner-bottom-grid-left1-pos1">
								<p>Latest New Collections</p>
							</div>
						</div>
					</div>
				</div>
				<div class="banner-bottom-grid-right animated wow slideInRight"
					data-wow-delay=".5s">
					<div class="banner-bottom-grid-left-grid grid-left-grid1">
						<div class="banner-bottom-grid-left-grid1">
							<img src="resources\images\3.jpg" alt=" " class="img-responsive" />
						</div>
						<div class="grid-left-grid1-pos">
							<p>
								top and classic designs <span>2016 Collection</span>
							</p>
						</div>
					</div>
				</div>
				<div class="clearfix"></div>
			</div>
		</div>
	</div>
	<!-- //banner-bottom -->
	<!-- collections -->
	<div class="new-collections">
		<div class="container">
			<h3 class="animated wow zoomIn" data-wow-delay=".5s">New
				Collections</h3>
			<p class="est animated wow zoomIn" data-wow-delay=".5s">Simply
				better shopping.</p>
			<div class="new-collections-grids">
				<div class="col-md-3 new-collections-grid">
					<div class="new-collections-grid1 animated wow slideInUp"
						data-wow-delay=".5s">
						<div class="new-collections-grid1-image">
							<a href="#" class="product-image"><img
								src="resources\images\7.jpg" alt=" " class="img-responsive" /></a>
							<div class="new-collections-grid1-image-pos">
								<a href="##">Quick View</a>
							</div>
							<div class="new-collections-grid1-right">
								<div class="rating">
									<div class="rating-left">
										<img src="resources\images\2.png" alt=" "
											class="img-responsive" />
									</div>
									<div class="rating-left">
										<img src="resources\images\2.png" alt=" "
											class="img-responsive" />
									</div>
									<div class="rating-left">
										<img src="resources\images\2.png" alt=" "
											class="img-responsive" />
									</div>
									<div class="rating-left">
										<img src="resources\images\1.png" alt=" "
											class="img-responsive" />
									</div>
									<div class="rating-left">
										<img src="resources\images\1.png" alt=" "
											class="img-responsive" />
									</div>
									<div class="clearfix"></div>
								</div>
							</div>
						</div>
						<h4>
							<a href="#">Formal Shirt</a>
						</h4>
						<p>Marks & Spencer Light Purple Solid Slim Fit Formal Shirt.</p>
						<div class="new-collections-grid1-left simpleCart_shelfItem">
							<p>
								<i>2825</i> <span class="item_price">2250</span><a
									class="item_add" href="#">add to cart </a>
							</p>
						</div>
					</div>
					<div class="new-collections-grid1 animated wow slideInUp"
						data-wow-delay=".5s">
						<div class="new-collections-grid1-image">
							<a href="#" class="product-image"><img
								src="resources\images\8.jpg" alt=" " class="img-responsive" /></a>
							<div class="new-collections-grid1-image-pos">
								<a href="#">Quick View</a>
							</div>
							<div class="new-collections-grid1-right">
								<div class="rating">
									<div class="rating-left">
										<img src="resources\images\2.png" alt=" "
											class="img-responsive" />
									</div>
									<div class="rating-left">
										<img src="resources\images\2.png" alt=" "
											class="img-responsive" />
									</div>
									<div class="rating-left">
										<img src="resources\images\1.png" alt=" "
											class="img-responsive" />
									</div>
									<div class="rating-left">
										<img src="resources\images\1.png" alt=" "
											class="img-responsive" />
									</div>
									<div class="rating-left">
										<img src="resources\images\1.png" alt=" "
											class="img-responsive" />
									</div>
									<div class="clearfix"></div>
								</div>
							</div>
						</div>
						<h4>
							<a href="#">Running Shoes</a>
						</h4>
						<p>Earton's Men's Blue EVA Running Shoes.</p>
						<div class="new-collections-grid1-left simpleCart_shelfItem">
							<p>
								<i>1280</i> <span class="item_price">1150</span><a
									class="item_add" href="#">add to cart </a>
							</p>
						</div>
					</div>
				</div>
				<div class="col-md-6 new-collections-grid">
					<div
						class="new-collections-grid1 new-collections-grid1-image-width animated wow slideInUp"
						data-wow-delay=".5s">
						<div class="new-collections-grid1-image">
							<a href="#" class="product-image"><img
								src="resources\images\5.jpg" alt=" " class="img-responsive" /></a>
							<div
								class="new-collections-grid1-image-pos new-collections-grid1-image-pos1">
								<a href="#">Quick View</a>
							</div>
							<div
								class="new-collections-grid1-right new-collections-grid1-right-rate">
								<div class="rating">
									<div class="rating-left">
										<img src="resources\images\2.png" alt=" "
											class="img-responsive" />
									</div>
									<div class="rating-left">
										<img src="resources\images\2.png" alt=" "
											class="img-responsive" />
									</div>
									<div class="rating-left">
										<img src="resources\images\2.png" alt=" "
											class="img-responsive" />
									</div>
									<div class="rating-left">
										<img src="resources\images\2.png" alt=" "
											class="img-responsive" />
									</div>
									<div class="rating-left">
										<img src="resources\images\1.png" alt=" "
											class="img-responsive" />
									</div>
									<div class="clearfix"></div>
								</div>
							</div>
							<div class="new-one">
								<p>New</p>
							</div>
						</div>
						<h4>
							<a href="#">Dining Table</a>
						</h4>
						<p>leather covered base and a transparent glass dining
							surface.</p>
						<div class="new-collections-grid1-left simpleCart_shelfItem">
							<p>
								<i>12580</i> <span class="item_price">10550</span><a
									class="item_add" href="#">add to cart </a>
							</p>
						</div>
					</div>
					<div class="new-collections-grid-sub-grids">
						<div class="new-collections-grid1-sub">
							<div class="new-collections-grid1 animated wow slideInUp"
								data-wow-delay=".5s">
								<div class="new-collections-grid1-image">
									<a href="#" class="product-image"><img
										src="resources\images\6.jpg" alt=" " class="img-responsive" /></a>
									<div class="new-collections-grid1-image-pos">
										<a href="#">Quick View</a>
									</div>
									<div class="new-collections-grid1-right">
										<div class="rating">
											<div class="rating-left">
												<img src="resources\images\2.png" alt=" "
													class="img-responsive" />
											</div>
											<div class="rating-left">
												<img src="resources\images\2.png" alt=" "
													class="img-responsive" />
											</div>
											<div class="rating-left">
												<img src="resources\images\2.png" alt=" "
													class="img-responsive" />
											</div>
											<div class="rating-left">
												<img src="resources\images\2.png" alt=" "
													class="img-responsive" />
											</div>
											<div class="rating-left">
												<img src="resources\images\2.png" alt=" "
													class="img-responsive" />
											</div>
											<div class="clearfix"></div>
										</div>
									</div>
								</div>
								<h4>
									<a href="#">Wall Lamp</a>
								</h4>
								<p>Philips Stylo Wall Light.</p>
								<div class="new-collections-grid1-left simpleCart_shelfItem">
									<p>
										<i>3480</i> <span class="item_price">2400</span><a
											class="item_add" href="#">add to cart </a>
									</p>
								</div>
							</div>
						</div>
						<div class="new-collections-grid1-sub">
							<div class="new-collections-grid1 animated wow slideInUp"
								data-wow-delay=".5s">
								<div class="new-collections-grid1-image">
									<a href="#" class="product-image"><img
										src="resources\images\9.jpg" alt=" " class="img-responsive" /></a>
									<div class="new-collections-grid1-image-pos">
										<a href="#">Quick View</a>
									</div>
									<div class="new-collections-grid1-right">
										<div class="rating">
											<div class="rating-left">
												<img src="resources\images\2.png" alt=" "
													class="img-responsive" />
											</div>
											<div class="rating-left">
												<img src="resources\images\1.png" alt=" "
													class="img-responsive" />
											</div>
											<div class="rating-left">
												<img src="resources\images\1.png" alt=" "
													class="img-responsive" />
											</div>
											<div class="rating-left">
												<img src="resources\images\1.png" alt=" "
													class="img-responsive" />
											</div>
											<div class="rating-left">
												<img src="resources\images\1.png" alt=" "
													class="img-responsive" />
											</div>
											<div class="clearfix"></div>
										</div>
									</div>
								</div>
								<h4>
									<a href="#">Wall Lamp</a>
								</h4>
								<p>Tisva Roomstylers Wall Light.</p>
								<div class="new-collections-grid1-left simpleCart_shelfItem">
									<p>
										<i>2280</i> <span class="item_price">2150</span><a
											class="item_add" href="#">add to cart </a>
									</p>
								</div>
							</div>
						</div>
						<div class="clearfix"></div>
					</div>
				</div>
				<div class="col-md-3 new-collections-grid">
					<div class="new-collections-grid1 animated wow slideInUp"
						data-wow-delay=".5s">
						<div class="new-collections-grid1-image">
							<a href="#" class="product-image"><img
								src="resources\images\10.jpg" alt=" " class="img-responsive" /></a>
							<div class="new-collections-grid1-image-pos">
								<a href="#">Quick View</a>
							</div>
							<div class="new-collections-grid1-right">
								<div class="rating">
									<div class="rating-left">
										<img src="resources\images\2.png" alt=" "
											class="img-responsive" />
									</div>
									<div class="rating-left">
										<img src="resources\images\2.png" alt=" "
											class="img-responsive" />
									</div>
									<div class="rating-left">
										<img src="resources\images\2.png" alt=" "
											class="img-responsive" />
									</div>
									<div class="rating-left">
										<img src="resources\images\1.png" alt=" "
											class="img-responsive" />
									</div>
									<div class="rating-left">
										<img src="resources\images\1.png" alt=" "
											class="img-responsive" />
									</div>
									<div class="clearfix"></div>
								</div>
							</div>
						</div>
						<h4>
							<a href="#">Pearl & Stone Anklet</a>
						</h4>
						<p>Red and White Stone Anklet.</p>
						<div class="new-collections-grid1-left simpleCart_shelfItem">
							<p>
								<i>880</i> <span class="item_price">620</span><a
									class="item_add" href="#">add to cart </a>
							</p>
						</div>
					</div>
					<div class="new-collections-grid1 animated wow slideInUp"
						data-wow-delay=".5s">
						<div class="new-collections-grid1-image">
							<a href="#" class="product-image"><img
								src="resources\images\11.jpg" alt=" " class="img-responsive" /></a>
							<div class="new-collections-grid1-image-pos">
								<a href="#">Quick View</a>
							</div>
							<div class="new-collections-grid1-right">
								<div class="rating">
									<div class="rating-left">
										<img src="resources\images\2.png" alt=" "
											class="img-responsive" />
									</div>
									<div class="rating-left">
										<img src="resources\images\2.png" alt=" "
											class="img-responsive" />
									</div>
									<div class="rating-left">
										<img src="resources\images\2.png" alt=" "
											class="img-responsive" />
									</div>
									<div class="rating-left">
										<img src="resources\images\2.png" alt=" "
											class="img-responsive" />
									</div>
									<div class="rating-left">
										<img src="resources\images\1.png" alt=" "
											class="img-responsive" />
									</div>
									<div class="clearfix"></div>
								</div>
							</div>
						</div>
						<h4>
							<a href="#">Stones Bangles</a>
						</h4>
						<p>M Gold Alloy Gold Bangles.</p>
						<div class="new-collections-grid1-left simpleCart_shelfItem">
							<p>
								<i>990</i> <span class="item_price">900</span><a
									class="item_add" href="#">add to cart </a>
							</p>
						</div>
					</div>
				</div>
				<div class="clearfix"></div>
			</div>
		</div>
	</div>
	<!-- //collections -->
	<!-- new-timer -->
	<div class="timer">
		<div class="container">
			<div class="timer-grids">
				<div class="col-md-8 timer-grid-left animated wow slideInLeft"
					data-wow-delay=".5s">
					<h3>
						<a href="#">Bestsellers in Ethnic Wear</a>
					</h3>
					<div class="rating">
						<div class="rating-left">
							<img src="resources\images\2.png" alt=" " class="img-responsive" />
						</div>
						<div class="rating-left">
							<img src="resources\images\2.png" alt=" " class="img-responsive" />
						</div>
						<div class="rating-left">
							<img src="resources\images\2.png" alt=" " class="img-responsive" />
						</div>
						<div class="rating-left">
							<img src="resources\images\2.png" alt=" " class="img-responsive" />
						</div>
						<div class="rating-left">
							<img src="resources\images\1.png" alt=" " class="img-responsive" />
						</div>
						<div class="clearfix"></div>
					</div>
					<div
						class="new-collections-grid1-left simpleCart_shelfItem timer-grid-left-price">
						<p>
							<i>2580</i> <span class="item_price">2400</span>
						</p>
						<h4>Take your style statement to a whole new level by
							choosing from our exquisite collection of full gowns suits that
							feature the trademark flared and pleated variations. They are
							available in different designs and fabrics such as cotton,
							embroidered, semi-stitched, full-sleeved, printed and more. If
							you are someone who likes to wear gowns, we also feature a wide
							collection of australian gowns, from designer collections to
							cotton beach gowns or even the replicas of designer gowns from
							various Bollywood movies. You could also choose from the most
							trending designs such as dual coloured or embroidered design
							gowns that are a fine blend of tradition and contemporary
							fashion. Also check for the best prices and grab the most
							exciting deals available on umpteen luxuriant shades, elegant
							styles and designs..</h4>
						<p>
							<a class="item_add timer_add" href="#">add to cart </a>
						</p>
					</div>
					<div id="counter"></div>
					<script src="resources\js\jquery.countdown.js"></script>
					<script src="resources\js\script.js"></script>
				</div>
				<div class="col-md-4 timer-grid-right animated wow slideInRight"
					data-wow-delay=".5s">
					<div class="timer-grid-right1">
						<img src="resources\images\17.jpg" alt=" " class="img-responsive" />
						<div class="timer-grid-right-pos">
							<h4>Special Offer</h4>
						</div>
					</div>
				</div>
				<div class="clearfix"></div>
			</div>
		</div>
	</div>
	<!-- //new-timer -->
	<!-- collections-bottom -->
	<div class="collections-bottom">
		<div class="container">
			<div class="collections-bottom-grids">
				<div class="collections-bottom-grid animated wow slideInLeft"
					data-wow-delay=".5s">
					<h3>
						45% Offer For <span>Women & Children's</span>
					</h3>
				</div>
			</div>
		</div>
	</div>
	<!-- //collections-bottom -->
	<!-- footer -->
	<div class="footer">
		<div class="container">
			<div class="footer-grids">
				<div class="col-md-3 footer-grid animated wow slideInLeft"
					data-wow-delay=".5s">
					<h3>About Us</h3>
					<p>
						At Cool Outlet, our vision is to be Earth's most customer centric
						company; to build a place where people can come to find and
						discover virtually anything they want to buy online. With
						Cooloutlet.in, we endeavor to build that same destination in India
						by giving customers more of what they want vast selection, low
						prices, fast and reliable delivery. </span>
					</p>
				</div>
				<div class="col-md-3 footer-grid animated wow slideInLeft"
					data-wow-delay=".6s">
					<h3>Contact Info</h3>
					<ul>
						<li><i class="glyphicon glyphicon-map-marker"
							aria-hidden="true"></i>1234k Avenue, 4th block, <span>New
								York City.</span></li>
						<li><i class="glyphicon glyphicon-envelope"
							aria-hidden="true"></i><a href="mailto:info@example.com">info@cooloutlet.com</a></li>
						<li><i class="glyphicon glyphicon-earphone"
							aria-hidden="true"></i>+9446098765</li>
					</ul>
				</div>
				<div class="col-md-3 footer-grid animated wow slideInLeft"
					data-wow-delay=".7s">
					<h3>Flickr Posts</h3>
					<div class="footer-grid-left">
						<a href="#"><img src="resources\images\13.jpg" alt=" "
							class="img-responsive" /></a>
					</div>
					<div class="footer-grid-left">
						<a href="#"><img src="resources\images\14.jpg" alt=" "
							class="img-responsive" /></a>
					</div>
					<div class="footer-grid-left">
						<a href="#"><img src="resources\images\15.jpg" alt=" "
							class="img-responsive" /></a>
					</div>
					<div class="footer-grid-left">
						<a href="#"><img src="resources\images\16.jpg" alt=" "
							class="img-responsive" /></a>
					</div>
					<div class="footer-grid-left">
						<a href="#"><img src="resources\images\13.jpg" alt=" "
							class="img-responsive" /></a>
					</div>
					<div class="footer-grid-left">
						<a href="#"><img src="resources\images\14.jpg" alt=" "
							class="img-responsive" /></a>
					</div>
					<div class="footer-grid-left">
						<a href="#"><img src="resources\images\15.jpg" alt=" "
							class="img-responsive" /></a>
					</div>
					<div class="footer-grid-left">
						<a href="#"><img src="resources\images\16.jpg" alt=" "
							class="img-responsive" /></a>
					</div>
					<div class="footer-grid-left">
						<a href="#"><img src="resources\images\13.jpg" alt=" "
							class="img-responsive" /></a>
					</div>
					<div class="footer-grid-left">
						<a href="#"><img src="resources\images\14.jpg" alt=" "
							class="img-responsive" /></a>
					</div>
					<div class="footer-grid-left">
						<a href="#"><img src="resources\images\15.jpg" alt=" "
							class="img-responsive" /></a>
					</div>
					<div class="footer-grid-left">
						<a href="#"><img src="resources\images\16.jpg" alt=" "
							class="img-responsive" /></a>
					</div>
					<div class="clearfix"></div>
				</div>

				<div class="clearfix"></div>
			</div>
			<div class="footer-logo animated wow slideInUp" data-wow-delay=".5s">
				<h2>
					<a href="#">Cool Outlet </a>
				</h2>
			</div>
			<div class="copy-right animated wow slideInUp" data-wow-delay=".5s">
				<p>
					&copy 2016 Cool Outlet. All rights reserved | Design by Menonz</a>
				</p>
			</div>
		</div>
	</div>
	<!-- //footer -->


















	</div>
	</div>





	<div id="logout">
		<c:if test="${not empty loggedInUser}">
			<td>Welcome ${loggedInUser},</td>

		</c:if>
	</div>


	<div id="cart">
		<c:if test="${cartDisplay==true }">
			<%@ include file="cart.jsp"%>
		</c:if>
	</div>

   

	<div id="admin">

		<c:if test="${isIsadmin==true}">

			<%@ include file="adminhome.jsp"%>

		</c:if>

		<div id="categories">
			<c:if test="${isIsadminClickedCategories==true}">
				<%@ include file="adminhome.jsp"%>
				<%@ include file="categories.jsp"%>
			</c:if>
		</div>

		<div id="products">
			<c:if test="${isIsadminClickedProducts==true}">
				<%@ include file="adminhome.jsp"%>
				<%@ include file="products.jsp"%>
			</c:if>
		</div>

		<div id="suppliers">
			<c:if test="${isIsadminClickedSuppliers==true}">
				<%@ include file="adminhome.jsp"%>
				<%@ include file="suppliers.jsp"%>
			</c:if>
		</div>
	</div>
	<footer>

	<p></p>
	<br>
	<br>
	<br>
	<br>
	<br>

	</footer>
</body>
</html>