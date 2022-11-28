<%@page import="com.dao.CartDao"%>
<%@page import="com.dao.WishlistDao"%>
<%@page import="com.dao.ProductDao"%>
<%@page import="com.bean.Product"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="header.jsp"%>
<!DOCTYPE HTML>
<html>
<head>
</head>
<body>
	<%
	Product p = ProductDao.getProductPid(Integer.parseInt(request.getParameter("pid")));
	%>

	<div class="colorlib-loader"></div>

	<div id="page">

		<div class="colorlib-product">
			<div class="container">
				<div class="row row-pb-lg product-detail-wrap">
					<div class="item">
						<div class="product-entry border">
							<a href="#" class="prod-img"> <img
								src="product_images/<%=p.getProduct_image()%>" class="img-fluid"
								alt="Free html5 bootstrap 4 template">
							</a>
						</div>
					</div>
				</div>
				<div class="col-sm-4">
					<div class="product-desc">
						<h3>Men's Sneaker Shoes</h3>
						<h5><i>Description: <%=p.getProduct_desc() %></i></h5>
						<p class="price">
							<b><span>Price: INR <%=p.getProduct_price()%></span></b> <br>
							<span class="rate"> <i class="icon-star-full"></i> <i
								class="icon-star-full"></i> <i class="icon-star-full"></i> <i
								class="icon-star-full"></i> <i class="icon-star-half"></i> (74
								Rating)
							</span>
						</p>
						<p>Shoes Prevent Foot Problems. Going without shoes for too
							long or wearing ill-fitting shoes can cause:Shoes Alleviate Pain
							and Shoes Protect Against Infections.</p>
						<div class="size-wrap">
							<div class="block-26 mb-2">
								<h4>Size</h4>
								<ul>
									<li><a href="#">7</a></li>
									<li><a href="#">8</a></li>
									<li><a href="#">9</a></li>
									<li><a href="#">10</a></li>
									<li><a href="#">11</a></li>
									<li><a href="#">12</a></li>
								</ul>
							</div>
						</div>
						<div class="row">
							<div class="col-sm-12 text-center">
									<%
										boolean flag1=CartDao.checkCart(u.getId(),p.getId());
										if(flag1==false)
										{
									%>
								<a href="add_to_cart.jsp?pid=<%=p.getId()%>&uid=<%=u.getId()%>"><button
										type="button" class="btn btn-info">Add to Cart</button></a>
									<%
										}
										else
										{
									%>
										<a href="remove_from_cart.jsp?pid=<%=p.getId()%>&uid=<%=u.getId()%>"><button
										type="button" class="btn btn-info">Remove From Cart</button></a>
									
									<%
										}
									%>
								
								
								
									
									<%
										boolean flag=WishlistDao.checkWishlist(u.getId(),p.getId());
										if(flag==false)
										{
									%>
								<a href="add_to_wishlist.jsp?pid=<%=p.getId()%>&uid=<%=u.getId()%>"><button
										type="button" class="btn btn-info">Add to Wishlist</button></a>
									<%
										}
										else
										{
									%>
										<a href="remove_from_wishlist.jsp?pid=<%=p.getId()%>&uid=<%=u.getId()%>"><button
										type="button" class="btn btn-info">Remove From Wishlist</button></a>
									
									<%} %>
							</div>
						</div>
					</div>
				</div>
			</div>

			<div class="row">
				<div class="col-sm-12">
					<div class="row">
						<div class="col-md-12 pills">
							<div class="bd-example bd-example-tabs">
								<ul class="nav nav-pills mb-3" id="pills-tab" role="tablist">

									<li class="nav-item"><a class="nav-link active"
										id="pills-description-tab" data-toggle="pill"
										href="#pills-description" role="tab"
										aria-controls="pills-description" aria-expanded="true">Description</a>
									</li>
									<li class="nav-item"><a class="nav-link"
										id="pills-manufacturer-tab" data-toggle="pill"
										href="#pills-manufacturer" role="tab"
										aria-controls="pills-manufacturer" aria-expanded="true">Manufacturer</a>
									</li>
									<li class="nav-item"><a class="nav-link"
										id="pills-review-tab" data-toggle="pill" href="#pills-review"
										role="tab" aria-controls="pills-review" aria-expanded="true">Review</a>
									</li>
								</ul>

								<div class="tab-content" id="pills-tabContent">
									<div class="tab-pane border fade show active"
										id="pills-description" role="tabpanel"
										aria-labelledby="pills-description-tab">
										<p>It's not only highly cushioned but also lightweight and
											breathable, making it a comfortable option for long-distance
											runs. Other notable features include a compression-molded
											midsole, inner heel support, and Hoka's Meta-Rocker
											technology, which is designed to propel you forward and
											encourage a more natural stride.</p>
										<ul>
											<li>Protection against falling objects.</li>
											<li>Helps to prevent slips and falls.</li>
											<li>Helps posture and prevent muscle strain.</li>
											<li>Protection against the elements.</li>
											<li>Helps protect against electric shocks.</li>
										</ul>
									</div>

									<div class="tab-pane border fade" id="pills-manufacturer"
										role="tabpanel" aria-labelledby="pills-manufacturer-tab">
										<p>Shoes not only help our feet to heal but can also aid
											in support and stability of our foot. Not all feet are
											perfect, so properly fitting shoes can help align your feet,
											ankles, knees, hips and back to correct your gait and improve
											posture.</p>
									</div>

									<div class="tab-pane border fade" id="pills-review"
										role="tabpanel" aria-labelledby="pills-review-tab">
										<div class="row">
											<div class="col-md-8">
												<h3 class="head">23 Reviews</h3>
												<div class="review">
													<div class="user-img"
														style="background-image: url(images/person1.jpg)"></div>
													<div class="desc">
														<h4>
															<span class="text-left">Jacob Webb</span> <span
																class="text-right">14 March 2018</span>
														</h4>
														<p class="star">
															<span> <i class="icon-star-full"></i> <i
																class="icon-star-full"></i> <i class="icon-star-full"></i>
																<i class="icon-star-half"></i> <i
																class="icon-star-empty"></i>
															</span> <span class="text-right"><a href="#"
																class="reply"><i class="icon-reply"></i></a></span>
														</p>
														<p>When she reached the first hills of the Italic
															Mountains, she had a last view back on the skyline of her
															hometown Bookmarksgrov</p>
													</div>
												</div>
												<div class="review">
													<div class="user-img"
														style="background-image: url(images/person2.jpg)"></div>
													<div class="desc">
														<h4>
															<span class="text-left">Jacob Webb</span> <span
																class="text-right">14 March 2018</span>
														</h4>
														<p class="star">
															<span> <i class="icon-star-full"></i> <i
																class="icon-star-full"></i> <i class="icon-star-full"></i>
																<i class="icon-star-half"></i> <i
																class="icon-star-empty"></i>
															</span> <span class="text-right"><a href="#"
																class="reply"><i class="icon-reply"></i></a></span>
														</p>
														<p>When she reached the first hills of the Italic
															Mountains, she had a last view back on the skyline of her
															hometown Bookmarksgrov</p>
													</div>
												</div>
												<div class="review">
													<div class="user-img"
														style="background-image: url(images/person3.jpg)"></div>
													<div class="desc">
														<h4>
															<span class="text-left">Jacob Webb</span> <span
																class="text-right">14 March 2018</span>
														</h4>
														<p class="star">
															<span> <i class="icon-star-full"></i> <i
																class="icon-star-full"></i> <i class="icon-star-full"></i>
																<i class="icon-star-half"></i> <i
																class="icon-star-empty"></i>
															</span> <span class="text-right"><a href="#"
																class="reply"><i class="icon-reply"></i></a></span>
														</p>
														<p>When she reached the first hills of the Italic
															Mountains, she had a last view back on the skyline of her
															hometown Bookmarksgrov</p>
													</div>
												</div>
											</div>
											<div class="col-md-4">
												<div class="rating-wrap">
													<h3 class="head">Give a Review</h3>
													<div class="wrap">
														<p class="star">
															<span> <i class="icon-star-full"></i> <i
																class="icon-star-full"></i> <i class="icon-star-full"></i>
																<i class="icon-star-full"></i> <i class="icon-star-full"></i>
																(98%)
															</span> <span>20 Reviews</span>
														</p>
														<p class="star">
															<span> <i class="icon-star-full"></i> <i
																class="icon-star-full"></i> <i class="icon-star-full"></i>
																<i class="icon-star-full"></i> <i
																class="icon-star-empty"></i> (85%)
															</span> <span>10 Reviews</span>
														</p>
														<p class="star">
															<span> <i class="icon-star-full"></i> <i
																class="icon-star-full"></i> <i class="icon-star-full"></i>
																<i class="icon-star-empty"></i> <i
																class="icon-star-empty"></i> (70%)
															</span> <span>5 Reviews</span>
														</p>
														<p class="star">
															<span> <i class="icon-star-full"></i> <i
																class="icon-star-full"></i> <i class="icon-star-empty"></i>
																<i class="icon-star-empty"></i> <i
																class="icon-star-empty"></i> (10%)
															</span> <span>0 Reviews</span>
														</p>
														<p class="star">
															<span> <i class="icon-star-full"></i> <i
																class="icon-star-empty"></i> <i class="icon-star-empty"></i>
																<i class="icon-star-empty"></i> <i
																class="icon-star-empty"></i> (0%)
															</span> <span>0 Reviews</span>
														</p>
													</div>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

	<footer id="colorlib-footer" role="contentinfo">
		<div class="container">
			<div class="row row-pb-md">
				<div class="col footer-col colorlib-widget">
					<h4>About Footwear</h4>
					<p>Even the all-powerful Pointing has no control about the
						blind texts it is an almost unorthographic life</p>
					<p>
					<ul class="colorlib-social-icons">
						<li><a href="#"><i class="icon-twitter"></i></a></li>
						<li><a href="#"><i class="icon-facebook"></i></a></li>
						<li><a href="#"><i class="icon-linkedin"></i></a></li>
						<li><a href="#"><i class="icon-dribbble"></i></a></li>
					</ul>
					</p>
				</div>
				<div class="col footer-col colorlib-widget">
					<h4>Customer Care</h4>
					<p>
					<ul class="colorlib-footer-links">
						<li><a href="#">Contact</a></li>
						<li><a href="#">Returns/Exchange</a></li>
						<li><a href="#">Gift Voucher</a></li>
						<li><a href="#">Wishlist</a></li>
						<li><a href="#">Special</a></li>
						<li><a href="#">Customer Services</a></li>
						<li><a href="#">Site maps</a></li>
					</ul>
					</p>
				</div>
				<div class="col footer-col colorlib-widget">
					<h4>Information</h4>
					<p>
					<ul class="colorlib-footer-links">
						<li><a href="#">About us</a></li>
						<li><a href="#">Delivery Information</a></li>
						<li><a href="#">Privacy Policy</a></li>
						<li><a href="#">Support</a></li>
						<li><a href="#">Order Tracking</a></li>
					</ul>
					</p>
				</div>

				<div class="col footer-col">
					<h4>News</h4>
					<ul class="colorlib-footer-links">
						<li><a href="blog.jsp">Blog</a></li>
						<li><a href="#">Press</a></li>
						<li><a href="#">Exhibitions</a></li>
					</ul>
				</div>

				<div class="col footer-col">
					<h4>Contact Information</h4>
					<ul class="colorlib-footer-links">
						<li>291 South 21th Street, <br> Suite 721 New York NY
							10016
						</li>
						<li><a href="tel://1234567920">+ 1235 2355 98</a></li>
						<li><a href="mailto:info@yoursite.com">info@yoursite.com</a></li>
						<li><a href="#">yoursite.com</a></li>
					</ul>
				</div>
			</div>
		</div>
		<div class="copy">
			<div class="row">
				<div class="col-sm-12 text-center">
					<p>
						<span>
							<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
							Copyright &copy;<script>
								document.write(new Date().getFullYear());
							</script>
							All rights reserved | This template is made with <i
							class="icon-heart" aria-hidden="true"></i> by <a
							href="https://colorlib.com" target="_blank">Colorlib</a> <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
						</span> <span class="block">Demo Images: <a
							href="http://unsplash.co/" target="_blank">Unsplash</a> , <a
							href="http://pexels.com/" target="_blank">Pexels.com</a></span>
					</p>
				</div>
			</div>
		</div>
	</footer>
	</div>

	<div class="gototop js-top">
		<a href="#" class="js-gotop"><i class="ion-ios-arrow-up"></i></a>
	</div>

	<!-- jQuery -->
	<script src="js/jquery.min.js"></script>
	<!-- popper -->
	<script src="js/popper.min.js"></script>
	<!-- bootstrap 4.1 -->
	<script src="js/bootstrap.min.js"></script>
	<!-- jQuery easing -->
	<script src="js/jquery.easing.1.3.js"></script>
	<!-- Waypoints -->
	<script src="js/jquery.waypoints.min.js"></script>
	<!-- Flexslider -->
	<script src="js/jquery.flexslider-min.js"></script>
	<!-- Owl carousel -->
	<script src="js/owl.carousel.min.js"></script>
	<!-- Magnific Popup -->
	<script src="js/jquery.magnific-popup.min.js"></script>
	<script src="js/magnific-popup-options.js"></script>
	<!-- Date Picker -->
	<script src="js/bootstrap-datepicker.js"></script>
	<!-- Stellar Parallax -->
	<script src="js/jquery.stellar.min.js"></script>
	<!-- Main -->
	<script src="js/main.js"></script>

	<script>
		$(document).ready(function() {

			var quantitiy = 0;
			$('.quantity-right-plus').click(function(e) {

				// Stop acting like a button
				e.preventDefault();
				// Get the field name
				var quantity = parseInt($('#quantity').val());

				// If is not undefined

				$('#quantity').val(quantity + 1);

				// Increment

			});

			$('.quantity-left-minus').click(function(e) {
				// Stop acting like a button
				e.preventDefault();
				// Get the field name
				var quantity = parseInt($('#quantity').val());

				// If is not undefined

				// Increment
				if (quantity > 0) {
					$('#quantity').val(quantity - 1);
				}
			});

		});
	</script>


</body>
</html>

