<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>Product Detail</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link href="../resources/css/bootstrap.min.css" rel="stylesheet">
<link href="../resources/css/font-awesome.min.css" rel="stylesheet">
<!--  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script> -->
<style type="text/css">
html, body {
	height: 100%;
	width: 100%;
}

a {
	color: black;
}

a:hover {
	cursor: pointer;
	color: #333333;
	text-decoration: none;
}

/* The Modal (background) */
.modal {
	display: none; /* Hidden by default */
	position: fixed; /* Stay in place */
	z-index: 1; /* Sit on top */
	padding-top: 5%; /* Location of the box */
	left: 0;
	top: 0;
	width: 100%; /* Full width */
	height: 100%; /* Full height */
	overflow: auto; /* Enable scroll if needed */
	background-color: rgb(0, 0, 0); /* Fallback color */
	background-color: rgba(0, 0, 0, 0.4); /* Black w/ opacity */
}

/* Modal Content */
.modal-content {
	position: relative;
	background-color: #fefefe;
	margin: auto;
	padding: 0;
	border: 1px solid #888;
	width: auto;
	height: 80%;
	box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0
		rgba(0, 0, 0, 0.19);
	-webkit-animation-name: animatetop;
	-webkit-animation-duration: 0.4s;
	animation-name: animatetop;
	animation-duration: 0.4s
}

/* Add Animation */
@
-webkit-keyframes animatetop {
	from {top: -300px;
	opacity: 0
}

to {
	top: 0;
	opacity: 1
}

}
@
keyframes animatetop {
	from {top: -300px;
	opacity: 0
}

to {
	top: 0;
	opacity: 1
}

}
.modal-body {
	padding: 0px 0px 0px 0px;
}

.zoom-text{
    margin-top: 20px;
}
a.view-detail{
    color: #23527c;
}

</style>
</head>
<body>

	<!-- The Modal -->
	<div id="myModal" class="modal">

		<!-- Modal content -->
		<div class="modal-content">
			<div class="modal-body">
				<img src="${product.getImage()}">
			</div>
		</div>

	</div>

	<img id="imagehidden" src="../resources/images/${product.getImage()}"
		style="display: none;">

	<div class="container-fluid" style="min-height: 100%; overflow: auto;">
		<div class="row">
			<div class="col-sm-5" style="height: 100%;">
				<div class="col-sm-8" style="padding-top: 9%; margin-left: 15%;">
					<div class="img-rounded" id="hoverimage">
						<img src="../resources/images/${product.getImage()}" alt="Lights"
							style="width: 320px; height: 280px;">
					</div>
					<div class="text-center zoom-text">
						<span class="glyphicon glyphicon-zoom-in"></span> 
						Rê chuột lên hình để phóng to
					</div>
				</div>
			</div>

			<div class="col-md-6" style="border-left: 1px solid #eee">
				<div
					style="width: 100%; border-bottom: 1px solid #eee; padding-bottom: 7%;">
					<h3>${product.getName() }</h3>
				</div>

				<div style=" border-bottom: 1px solid #eee;">
					<div style="padding-top: 5%;">
						<a href="#" class="btn btn-info btn-sm"
							style="background-color: red; border: 1px solid red;"> <span
							class="glyphicon glyphicon-fire"></span> DEAL HOT
						</a> <span style="opacity: 0.6;">Giá </span><span
							style="font-size: 22px; color: red;">${product.getPrice()}
						</span> <span
							style="font-size: 22px; color: red; text-decoration: underline;">đ</span>
						<span style="opacity: 0.6;">đã có VAT</span>
					</div>

					<div style="width: 100%; margin-top: 2%;">
						<font color="white"><span
							style="background-color: #3366CC;">Tiết kiệm: 41%
								(10.210.000đ)</span></font>
					</div>
				</div>

				<div style="width: 100%; border-bottom: 1px solid #eee;padding-top: 80px;">
					<div
						style="width: 100%; padding-top: 2%; padding-bottom: 2%; margin-left: -3%;">
						<ul style="list-style-position: outside;">
							<li>Tivi 4K, 55 inch</li>
							<li>Độ phân giải: 4K UHD</li>
							<li>Hệ điều hành: WebOS 3.5</li>
							<li>Tần số quét: 50Hz</li>
							<li>Kết nối: Wifi, LAN, HDMI, BlueTooth</li>
							<li>Công nghệ âm thanh vòm</li>
						</ul>
					</div>
				</div>

				<div style="width: 100%; border-bottom: 1px solid #BBBBBB;">
					<div style="width: 100%; padding-bottom: 3%; padding-top: 2%;">
						<table>
							<tr>
								<td style="display: table-row;">
									<div
										style="height: 31px; width: 41px; margin-top: 0px; padding: 0px;">
										<img src="http://www.freeiconspng.com/uploads/repair-12.png"
											style="height: 40px; width: 40px;">
									</div>
								</td>
								<td>
									<div style="width: 50%; margin-left: 2%; padding-bottom: 2%;">
										<span> 
										<font color="green">Miễn phí lắp đặt: </font>
											Lắp đặt trong 24h làm việc kể từ khi bạn nhận hàng. Chỉ áp
											dụng tại TPHCM & HN - <a href="" class="view-detail">Xem chi tiết</a>
										</span>
										<br>

									</div>
								</td>
							</tr>
						</table>
					</div>

				</div>

				<div style="width: 100%; padding-top: 4%;" onclick="Buyproduct()">
					<button type="button" class="btn btn-danger"
						style="margin-left: 65%; width: 25%;">Mua Ngay</button>
				</div>
			</div>
		</div>
	</div>
	<script type="text/javascript">
		
	</script>
</body>
</html>
