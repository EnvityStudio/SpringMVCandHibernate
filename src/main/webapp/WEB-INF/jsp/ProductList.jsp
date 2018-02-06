<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html lang="en">
<head>
<title>Product List</title>
<!-- =============== Google fonts =============== -->
<link
	href='http://fonts.googleapis.com/css?family=Open+Sans:300,300italic,400,400italic,600,600italic,700,700italic,800'
	rel='stylesheet' type='text/css'>
<link href='http://fonts.googleapis.com/css?family=Oswald'
	rel='stylesheet' type='text/css'>
<link href='http://fonts.googleapis.com/css?family=Raleway:400,700'
	rel='stylesheet' type='text/css'>
<!-- Font Awesome CSS -->
<link href="../resources/css/font-awesome.min.css" rel="stylesheet">
<!-- Bootstrap CSS -->
<link href="../resources/css/bootstrap.min.css" rel="stylesheet">
<!-- Animate CSS -->
<link href="../resources/css/animate.css" rel="stylesheet">
<!-- Owl Carousel CSS -->
<link href="../resources/css/owl.carousel.css" rel="stylesheet">
<!-- Main Style CSS -->
<link href="../resources/css/style.css" rel="stylesheet">
<!-- Responsive CSS -->
<link href="../resources/css/responsive.css" rel="stylesheet">

</head>
<body>
<body>

	<div class="header">
		
	</div>
	<!-- /.header -->

	<div class="main">
		<div class="container">
			<div class="row">
				<div class="col-sm-3 col-left">
					<div class="block block-layered-nav">

						<div class="block-content">
							<p class="block-subtitle">Shopping Options</p>
							<div id="narrow-by-list">
								<div class="layered layered-Category">
									<h2>Thương hiệu</h2>
									<div class="content-shopby">
										<ol>
											<c:forEach items="${listCategories}" var="list">
												<li><a
													href="./productbycategory?idcategory=${list.getId()}">${list.getName()}</a></li>
											</c:forEach>

										</ol>
									</div>
								</div>

							</div>
						</div>
					</div>
					<!-- /sort -->
					<!-- /.compare -->


				</div>
				<!-- /.col-left -->
				<div class="col-sm-9 col-right">


					<div class="row products">
						<c:forEach items="${listProducts}" var="list">
							<div class="col-md-3 col-sm-6">
								<div class='productslider-item item'>
									<div class="item-inner">
										<div class="images-container">

											<a href="./productdetail?idproduct=${list.getIdProduct()}"
												title="${list.getName()}" class="product-image"> <img
												src="../resources/images/${list.getImage()}"
												alt="Nunc facilisis" />
											</a>

										</div>
										<div class="des-conbackground-position:-134px -178pxtainer">
											<span class=""
												style="display: inline-block; background-image: url(../resources/images/icon.png); background-position: -134px -178px; width: 24px; height: 24px;"></span>
											<h2 class="product-name">
												<a href="./productdetail?idproduct=${list.getIdProduct()}"
													title="Nunc facilisis">${list.getName()}</a>
											</h2>
											<div class="price-box">
												<p class="special-price">
													<span class="price-label">Special Price</span> <span
														class="price"
														style="color: #242424; font-weight: bold; font-size: 13px">${list.getPriceConvert()}&nbsp;₫</span>
												</p>
												<p class="old-price">
													<span class="price-label">Regular Price: </span> <span
														class="price" style="font-size: 11px">20.000.000đ</span>
												</p>
												<p class="special-price">
													<span class="price-label">Special Price</span> <span
														class="price">-${list.getDiscount()}%</span>
												</p>
											</div>

										</div>
									</div>
								</div>
							</div>
						</c:forEach>
					</div>
					<!-- /.product -->

				</div>
				<!-- /.col-right -->
			</div>
		</div>
	</div>
	<!-- /.main -->



	<div class="footer">
		<div class="footer-top">
			<div class="copy">Copyright &copy; 2018 Thuan Nguyen. All
				Rights Reserved</div>
		</div>
	</div>
</body>
</html>
