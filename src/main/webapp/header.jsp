<%@page import="com.bean.User"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
<html>
	<head>
	
	<%
	
	User u=null;
	
	if(session!=null)
	{
		if(session.getAttribute("u")!=null)
		{
			u=(User)session.getAttribute("u");
		}
	}
	
	%>
	
	
	<title>Footwear</title>
   <meta charset="utf-8">
   <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

	<link href="https://fonts.googleapis.com/css?family=Montserrat:300,400,500,600,700" rel="stylesheet">
	<link href="https://fonts.googleapis.com/css?family=Rokkitt:100,300,400,700" rel="stylesheet">
	
	<!-- Animate.css -->
	<link rel="stylesheet" href="css/animate.css">
	<!-- Icomoon Icon Fonts-->
	<link rel="stylesheet" href="css/icomoon.css">
	<!-- Ion Icon Fonts-->
	<link rel="stylesheet" href="css/ionicons.min.css">
	<!-- Bootstrap  -->
	<link rel="stylesheet" href="css/bootstrap.min.css">

	<!-- Magnific Popup -->
	<link rel="stylesheet" href="css/magnific-popup.css">

	<!-- Flexslider  -->
	<link rel="stylesheet" href="css/flexslider.css">

	<!-- Owl Carousel -->
	<link rel="stylesheet" href="css/owl.carousel.min.css">
	<link rel="stylesheet" href="css/owl.theme.default.min.css">
	
	<!-- Date Picker -->
	<link rel="stylesheet" href="css/bootstrap-datepicker.css">
	<!-- Flaticons  -->
	<link rel="stylesheet" href="fonts/flaticon/font/flaticon.css">

	<!-- Theme style  -->
	<link rel="stylesheet" href="css/style.css">
	

	</head>
	<body>

	<div id="page">
		<nav class="colorlib-nav" role="navigation">
			<div class="top-menu">
				<div class="container">
					<div class="row">
						<div class="col-sm-7 col-md-9">
							<div id="colorlib-logo"><a href="index.jsp">Footwear</a></div>
						</div>
						<div class="col-sm-5 col-md-3">
			            <form action="#" class="search-wrap">
			               <div class="form-group">
			                  <input type="search" class="form-control search" placeholder="Search">
			                  <button class="btn btn-primary submit-search text-center" type="submit"><i class="icon-search"></i></button>
			               </div>
			            </form>
			         </div>
		         </div>
					<div class="row">
						<div class="col-sm-12 text-left menu-1">
							<ul>
								<li><a href="index.jsp">Home</a></li>
								<li><a href="about.jsp">About</a></li>
								<li><a href="contact.jsp">Contact</a></li>
								
								<%
								if(u==null)
								{
								%>
								<li><a href="login.jsp">Login</a></li>
								<li><a href="signup.jsp">Sign Up</a></li>
								<%
								}
								
								else
								{
								%>
								<li><a href="logout.jsp">Logout(<%=u.getFname()%>)</a></li>
								<li><a href="change_password.jsp">Change Password</a></li>
								
								<%
									int count=Integer.parseInt(session.getAttribute("wishlist_count").toString());
								%>
								
								
								
								
								<li><a href="wishlist.jsp">Wishlist<%if(count>0){%>(<%=session.getAttribute("wishlist_count")%>)<%}%></a></li>
								<li><a href="myorder.jsp">My Order</a></li>
								<%
									int count1=Integer.parseInt(session.getAttribute("cart_count").toString());
								%>
								
								<li class="cart"><a href="cart.jsp"><i class="icon-shopping-cart"></i>Cart<%if(count1>0){%>(<%=session.getAttribute("cart_count")%>)<%}%></a></li>
								
								
								<%
								}
								%>
								
								
							</ul>
						</div>
					</div>
				</div>
			</div>
			
		</nav>
	</div>
  </body>
 </html>
		