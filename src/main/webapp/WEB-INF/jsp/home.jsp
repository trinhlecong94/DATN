<!DOCTYPE HTML>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://www.springframework.org/security/tags" prefix="sec" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<html>
   <head>
      <title>Movies Unlimited</title>
      <meta charset="utf-8">
      <meta http-equiv="X-UA-Compatible" content="IE=edge">
      <meta name="description" content="Movies Unlimited template">
      <meta name="viewport" content="width=device-width, initial-scale=1">
      <link rel="stylesheet" type="text/css" href="styles/bootstrap-4.1.2/bootstrap.min.css">
      <link href="plugins/font-awesome-4.7.0/css/font-awesome.min.css" rel="stylesheet" type="text/css">
      <link rel="stylesheet" type="text/css" href="plugins/OwlCarousel2-2.2.1/owl.carousel.css">
      <link rel="stylesheet" type="text/css" href="plugins/OwlCarousel2-2.2.1/owl.theme.default.css">
      <link rel="stylesheet" type="text/css" href="plugins/OwlCarousel2-2.2.1/animate.css">
      <link rel="stylesheet" type="text/css" href="styles/main_styles.css">
      <link rel="stylesheet" type="text/css" href="styles/responsive.css">
   </head>
   <body>
<!-- Menu -->
<jsp:include page="./include/mobile-menu.jsp"/>
<div class="super_container">
	<!-- Header -->
    <jsp:include page="./include/header.jsp"/>
	<div class="super_container_inner">
		<div class="super_overlay"></div>
		<!-- Home -->
		<div class="home">
			<!-- Home Slider -->
			<div class="home_slider_container">
				<div class="owl-carousel owl-theme home_slider">

					<!-- Slide -->
					<div class="owl-item">
						<div class="background_image" style="background-image:url(images/home.jpg)"></div>
						<div class="container fill_height">
							<div class="row fill_height">
								<div class="col fill_height">
									<div class="home_container d-flex flex-column align-items-center justify-content-start">
										<div class="home_content">
											<div class="home_title">New Arrivals</div>
											<div class="home_subtitle">Summer Movies</div>
											<div class="home_items">
												<div class="row">
													<div class="col-sm-3 offset-lg-1">
														<div class="home_item_side"><a href="product.html"><img src="images/home_1.jpg" alt=""></a></div>
													</div>
													<div class="col-lg-4 col-md-6 col-sm-8 offset-sm-2 offset-md-0">
														<div class="product home_item_large">
															<div class="product_tag d-flex flex-column align-items-center justify-content-center">
																<div>
																	<div>from</div>
																	<div>$3<span>.99</span></div>
																</div>
															</div>
															<div class="product_image"><img src="images/home_2.jpg" alt=""></div>
															<div class="product_content">
																<div class="product_info d-flex flex-row align-items-start justify-content-start">
																	<div>
																		<div>
																			<div class="product_name"><a href="product.html">Cool Clothing with Brown Stripes</a></div>
																			<div class="product_category">In <a href="category.html">Category</a></div>
																		</div>
																	</div>
																	<div class="ml-auto text-right">
																		<div class="rating_r rating_r_4 home_item_rating"><i></i><i></i><i></i><i></i><i></i></div>
																		<div class="product_price text-right">$3<span>.99</span></div>
																	</div>
																</div>
																<div class="product_buttons">
																	<div class="text-right d-flex flex-row align-items-start justify-content-start">
																		<div class="product_button product_fav text-center d-flex flex-column align-items-center justify-content-center">
																			<div><div><img src="images/heart.svg" alt=""><div>+</div></div></div>
																		</div>
																		<div class="product_button product_cart text-center d-flex flex-column align-items-center justify-content-center">
																			<div><div><img src="images/cart_2.svg" alt=""><div>+</div></div></div>
																		</div>
																	</div>
																</div>
															</div>
														</div>
													</div>
													<div class="col-sm-3">
														<div class="home_item_side"><a href="product.html"><img src="images/home_3.jpg" alt=""></a></div>
													</div>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>

					<!-- Slide -->
					<div class="owl-item">
						<div class="background_image" style="background-image:url(images/home.jpg)"></div>
						<div class="container fill_height">
							<div class="row fill_height">
								<div class="col fill_height">
									<div class="home_container d-flex flex-column align-items-center justify-content-start">
										<div class="home_content">
											<div class="home_title">Popular</div>
											<div class="home_subtitle">Summer Movies</div>
											<div class="home_items">
												<div class="row">
													<div class="col-sm-3 offset-lg-1">
														<div class="home_item_side"><a href="product.html"><img src="images/home_1.jpg" alt=""></a></div>
													</div>
													<div class="col-lg-4 col-md-6 col-sm-8 offset-sm-2 offset-md-0">
														<div class="product home_item_large">
															<div class="product_tag d-flex flex-column align-items-center justify-content-center">
																<div>
																	<div>from</div>
																	<div>$3<span>.99</span></div>
																</div>
															</div>
															<div class="product_image"><img src="images/product_1.jpg" alt=""></div>
															<div class="product_content">
																<div class="product_info d-flex flex-row align-items-start justify-content-start">
																	<div>
																		<div>
																			<div class="product_name"><a href="product.html">Cool Clothing with Brown Stripes</a></div>
																			<div class="product_category">In <a href="category.html">Category</a></div>
																		</div>
																	</div>
																	<div class="ml-auto text-right">
																		<div class="rating_r rating_r_4 home_item_rating"><i></i><i></i><i></i><i></i><i></i></div>
																		<div class="product_price text-right">$3<span>.99</span></div>
																	</div>
																</div>
																<div class="product_buttons">
																	<div class="text-right d-flex flex-row align-items-start justify-content-start">
																		<div class="product_button product_fav text-center d-flex flex-column align-items-center justify-content-center">
																			<div><div><img src="images/heart.svg" alt=""><div>+</div></div></div>
																		</div>
																		<div class="product_button product_cart text-center d-flex flex-column align-items-center justify-content-center">
																			<div><div><img src="images/cart_2.svg" alt=""><div>+</div></div></div>
																		</div>
																	</div>
																</div>
															</div>
														</div>
													</div>
													<div class="col-sm-3">
														<div class="home_item_side"><a href="product.html"><img src="images/home_3.jpg" alt=""></a></div>
													</div>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>

					<!-- Slide -->
					<div class="owl-item">
						<div class="background_image" style="background-image:url(images/home.jpg)"></div>
						<div class="container fill_height">
							<div class="row fill_height">
								<div class="col fill_height">
									<div class="home_container d-flex flex-column align-items-center justify-content-start">
										<div class="home_content">
											<div class="home_title">Trendsetters</div>
											<div class="home_subtitle">Summer Movies</div>
											<div class="home_items">
												<div class="row">
													<div class="col-sm-3 offset-lg-1">
														<div class="home_item_side"><a href="product.html"><img src="images/home_1.jpg" alt=""></a></div>
													</div>
													<div class="col-lg-4 col-md-6 col-sm-8 offset-sm-2 offset-md-0">
														<div class="product home_item_large">
															<div class="product_tag d-flex flex-column align-items-center justify-content-center">
																<div>
																	<div>from</div>
																	<div>$3<span>.99</span></div>
																</div>
															</div>
															<div class="product_image"><img src="images/product_2.jpg" alt=""></div>
															<div class="product_content">
																<div class="product_info d-flex flex-row align-items-start justify-content-start">
																	<div>
																		<div>
																			<div class="product_name"><a href="product.html">Cool Clothing with Brown Stripes</a></div>
																			<div class="product_category">In <a href="category.html">Category</a></div>
																		</div>
																	</div>
																	<div class="ml-auto text-right">
																		<div class="rating_r rating_r_4 home_item_rating"><i></i><i></i><i></i><i></i><i></i></div>
																		<div class="product_price text-right">$3<span>.99</span></div>
																	</div>
																</div>
																<div class="product_buttons">
																	<div class="text-right d-flex flex-row align-items-start justify-content-start">
																		<div class="product_button product_fav text-center d-flex flex-column align-items-center justify-content-center">
																			<div><div><img src="images/heart.svg" alt=""><div>+</div></div></div>
																		</div>
																		<div class="product_button product_cart text-center d-flex flex-column align-items-center justify-content-center">
																			<div><div><img src="images/cart_2.svg" alt=""><div>+</div></div></div>
																		</div>
																	</div>
																</div>
															</div>
														</div>
													</div>
													<div class="col-sm-3">
														<div class="home_item_side"><a href="product.html"><img src="images/home_3.jpg" alt=""></a></div>
													</div>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>

					<!-- Slide -->
					<div class="owl-item">
						<div class="background_image" style="background-image:url(images/home.jpg)"></div>
						<div class="container fill_height">
							<div class="row fill_height">
								<div class="col fill_height">
									<div class="home_container d-flex flex-column align-items-center justify-content-start">
										<div class="home_content">
											<div class="home_title">Premium Items</div>
											<div class="home_subtitle">Summer Movies</div>
											<div class="home_items">
												<div class="row">
													<div class="col-sm-3 offset-lg-1">
														<div class="home_item_side"><a href="product.html"><img src="images/home_1.jpg" alt=""></a></div>
													</div>
													<div class="col-lg-4 col-md-6 col-sm-8 offset-sm-2 offset-md-0">
														<div class="product home_item_large">
															<div class="product_tag d-flex flex-column align-items-center justify-content-center">
																<div>
																	<div>from</div>
																	<div>$3<span>.99</span></div>
																</div>
															</div>
															<div class="product_image"><img src="images/product_3.jpg" alt=""></div>
															<div class="product_content">
																<div class="product_info d-flex flex-row align-items-start justify-content-start">
																	<div>
																		<div>
																			<div class="product_name"><a href="product.html">Cool Clothing with Brown Stripes</a></div>
																			<div class="product_category">In <a href="category.html">Category</a></div>
																		</div>
																	</div>
																	<div class="ml-auto text-right">
																		<div class="rating_r rating_r_4 home_item_rating"><i></i><i></i><i></i><i></i><i></i></div>
																		<div class="product_price text-right">$3<span>.99</span></div>
																	</div>
																</div>
																<div class="product_buttons">
																	<div class="text-right d-flex flex-row align-items-start justify-content-start">
																		<div class="product_button product_fav text-center d-flex flex-column align-items-center justify-content-center">
																			<div><div><img src="images/heart.svg" alt=""><div>+</div></div></div>
																		</div>
																		<div class="product_button product_cart text-center d-flex flex-column align-items-center justify-content-center">
																			<div><div><img src="images/cart_2.svg" alt=""><div>+</div></div></div>
																		</div>
																	</div>
																</div>
															</div>
														</div>
													</div>
													<div class="col-sm-3">
														<div class="home_item_side"><a href="product.html"><img src="images/home_3.jpg" alt=""></a></div>
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
				<div class="home_slider_nav home_slider_nav_prev">
					<i class="fa fa-chevron-left" aria-hidden="true"></i>
				</div>
				<div class="home_slider_nav home_slider_nav_next">
					<i class="fa fa-chevron-right" aria-hidden="true"></i>
				</div>

				<!-- Home Slider Dots -->

				<div class="home_slider_dots_container">
					<div class="container">
						<div class="row">
							<div class="col">
								<div class="home_slider_dots">
									<ul id="home_slider_custom_dots" class="home_slider_custom_dots d-flex flex-row align-items-center justify-content-center">
										<li class="home_slider_custom_dot active">01</li>
										<li class="home_slider_custom_dot">02</li>
										<li class="home_slider_custom_dot">03</li>
										<li class="home_slider_custom_dot">04</li>
									</ul>
								</div>
							</div>
						</div>
					</div>
				</div>

			</div>
		</div>
		<!-- Products -->
		<div class="products">
			<div class="container">
				<div class="row">
					<div class="col-lg-6 offset-lg-3">
						<div class="section_title text-center">Popular on Movies Unlimited</div>
					</div>
				</div>
				<div class="row page_nav_row">
					<div class="col">
						<div class="page_nav">
							<ul class="d-flex flex-row align-items-start justify-content-center">
								 <li class="active"><a href="<c:url value="/category?id=2&page=1"></c:url>">Action</a></li>
                                 <li><a href="<c:url value="/category?id=3&page=1"></c:url>">Adventure</a></li>
                                 <li><a href="<c:url value="/category?id=4&page=1"></c:url>">Animation</a></li>
							</ul>
						</div>
					</div>
				</div>
				<div class="row products_row">
					<!-- Product -->
					<c:if test="${products.size()==0}">
						<div class="col-md-12" style="text-align: center">
							<h3>We couldn't find any matches!</h3>
						</div>
					</c:if>
					<c:forEach var="product" items="${products}">
						<div class="col-xl-4 col-md-6">
							<div class="product">
								<div class="product_image"><img src="https://picsum.photos/530/591" alt=""></div>
								<div class="product_content">
									<div class="product_info d-flex flex-row align-items-start justify-content-start">
										<div>
											<div>
												<div class="product_name"><a href="<c:url value="/product?id=${product.id}"></c:url>">${product.name}</a></div>
												<div class="product_category">In <a href="<c:url value="/category?id=${product.categories[0].id}&page=1"></c:url>">${product.categories[0].name}</a></div>
											</div>
										</div>
										<div class="ml-auto text-right">
											<div>
												<i class="fa fa-heart fa-1x" style="color: #ff66a3" aria-hidden="true"></i>
												${product.totalFavorite}
											</div>
											<div class="product_price text-right">
												$${product.price}
											</div>
										</div>
									</div>

								</div>
							</div>
						</div>
					</c:forEach>
				</div>

				<div class="row page_nav_row">
					<div class="col">
						<div class="page_nav">
							<ul class="d-flex flex-row align-items-start justify-content-center">
								<c:forEach begin="${param.page > 5 ? param.page - 5 : 1}" end="${param.page - page + 5 <= 0 ? param.page + 5 : page}" varStatus="status">
									<c:if test="${param.action == null}">
										<c:choose>
											<c:when test="${param.page==null && status.index==1}">
												<li class="active"><a href="<c:url value="/home?page=${status.index}"/>">${status.index}</a></li>
											</c:when>
											<c:when test="${param.page==null && status.index!=1}">
												<li><a href="<c:url value="/home?page=${status.index}"/>">${status.index}</a></li>
											</c:when>
											<c:when test="${param.page!=null && param.page==status.index}">
												<li class="active"><a href="<c:url value="/home?page=${status.index}"/>">${status.index}</a></li>
											</c:when>
											<c:otherwise>
												<li><a href="<c:url value="/home?page=${status.index}"/>">${status.index}</a></li>
											</c:otherwise>
										</c:choose>
									</c:if>
								</c:forEach>
							</ul>
						</div>
					</div>
				</div>
				<c:if test="${products_recommend!=null}">
				<div class="row">
					<div class="col-lg-6 offset-lg-3">
							<div class="section_title text-center">Recommend for you</div>
					</div>
				</div>
				</c:if>
				<div class="row products_row">
					<!-- Product -->
					<c:if test="${products_recommend.size()==0}">
						<div class="col-md-12" style="text-align: center">
							<h3>We couldn't find any matches!</h3>
						</div>
					</c:if>
					<c:forEach var="product" items="${products_recommend}">
						<div class="col-xl-4 col-md-6">
							<div class="product">
								<div class="product_image"><img src="https://picsum.photos/530/591" alt=""></div>
								<div class="product_content">
									<div class="product_info d-flex flex-row align-items-start justify-content-start">
										<div>
											<div>
												<div class="product_name"><a href="<c:url value="/product?id=${product.id}"></c:url>">${product.name}</a></div>
												<div class="product_category">In <a href="<c:url value="/category?id=${product.categories[0].id}&page=1"></c:url>">${product.categories[0].name}</a></div>
											</div>
										</div>
										<div class="ml-auto text-right">
											<div>
												<i class="fa fa-heart fa-1x" style="color: #ff66a3" aria-hidden="true"></i>
												${product.totalFavorite}
											</div>
											<div class="product_price text-right">
												$${product.price}
											</div>
										</div>
									</div>

								</div>
							</div>
						</div>
					</c:forEach>
				</div>
			</div>
		</div>

		<!-- Footer -->
		<jsp:include page="./include/footer.jsp"/>
	 </div>
</div>
        <script src="<c:url value="/js/jquery-3.2.1.min.js"></c:url>"></script>
        <script src="<c:url value="/styles/bootstrap-4.1.2/popper.js"></c:url>"></script>
        <script src="<c:url value="/styles/bootstrap-4.1.2/bootstrap.min.js"></c:url>"></script>
        <script src="<c:url value="/plugins/greensock/TweenMax.min.js"></c:url>"></script>
        <script src="<c:url value="/plugins/greensock/TimelineMax.min.js"></c:url>"></script>
        <script src="<c:url value="/plugins/scrollmagic/ScrollMagic.min.js"></c:url>"></script>
        <script src="<c:url value="/plugins/greensock/animation.gsap.min.js"></c:url>"></script>
        <script src="<c:url value="/plugins/greensock/ScrollToPlugin.min.js"></c:url>"></script>
        <script src="<c:url value="/plugins/OwlCarousel2-2.2.1/owl.carousel.js"></c:url>"></script>
        <script src="<c:url value="/plugins/easing/easing.js"></c:url>"></script>
        <script src="<c:url value="/plugins/progressbar/progressbar.min.js"></c:url>"></script>
        <script src="<c:url value="/plugins/parallax-js-master/parallax.min.js"></c:url>"></script>
        <script src="<c:url value="/js/custom.js"></c:url>"></script>
        <script src="<c:url value="/js/product-script-custom.js"></c:url>"></script>
</body>
</html>