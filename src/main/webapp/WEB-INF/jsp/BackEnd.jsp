<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>Back End</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<style type="text/css">
html, body {
	height: 100%;
	width: 100%;
}

.table1 {
	width: auto;
	height: auto;
}

.table2 {
	width: auto;
	height: auto;
}

tr {
	width: auto;
}

.table1 td {
	width: auto;
	padding: 1%;
	word-break: keep-all;
}

.table2 td {
	width: auto;
	padding: 1%;
	word-break: keep-all;
	vertical-align: middle;
	text-align: center;
}

a {
	color: black;
}

a:hover {
	cursor: pointer;
	color: blue;
	text-decoration: none;
}
</style>
<body>

	<div class="container">
		<div style="width: 100%; height: 100%;">
			<h3 >Thêm Tivi/Sửa thông tin</h3>
			<h3 style="color:red;">${notify}</h3>
			<form action="updateProduct" method=Post>
				<table class="table1">
						
					<tr>
						<td><label>Tên tivi </label></td>
						<td><div class="form-group">
								
					<input type="hidden" name="idproduct"value="${product.getIdProduct()}">
								<input type="text" name="nameproduct" class="form-control"
									value="${product.getName()}">
								<p style="color: red; font-weight: bold; font-style: italic;"></p>
							</div></td>
					</tr>
					<tr>
						<td><label>Link ảnh </label></td>
						<td><div class="form-group">
								<input type="text" name="image" class="form-control"
									value="${product.getImage()}">
								<p style="color: red; font-weight: bold; font-style: italic;"></p>
							</div></td>
					</tr>
					<tr>
						<td><label>Hãng </label></td>
						<td><select style="height: 32px; border: 2px solid black;"
							name="category">
								<option value="1" selected="selected">Sony</option>
								<option value="2">Dalton</option>
								<option value="3">Philips</option>
								<option value="4">DARLING</option>
								<option value="5">Sumico</option>
								<option value="6">Panasonic</option>
								<option value="7">Vinabox</option>
								<option value="8">Techmate</option>
								<option value="9">Jamo</option>
						</select></td>
					</tr>
					<tr>
						<td><label>Giá</label></td>
						<td><div class="form-group" style="width: 400px;">
								<input type="text" name="price" class="form-control" value="${product.getPrice() }">
								<p style="color: red; font-weight: bold; font-style: italic;"></p>
							</div></td>
					</tr>
					<tr>
						<td><label>Giảm giá </label></td>
						<td><div class="form-group">
								<input type="text" name="discount" class="form-control" value="${product.getDiscount()}">
								<p style="color: red; font-weight: bold; font-style: italic;"></p>
							</div></td>
					</tr>
					<tr>
						<td><label>Mô tả </label></td>
						<td><div class="form-group">
								<textarea name="description" class="form-control" value="${product.getDescription() }"
									style="max-width: 400px; min-width: 400px; min-height: 70px;"></textarea>
								<p style="color: red; font-weight: bold; font-style: italic;"></p>
							</div></td>
					</tr>
					<tr>
						<td><input type="submit" class="btn btn-default"
							style="min-width: 170%;" value="Submit"></td>
					</tr>

				</table>
			</form>
		</div>

		<div style="height: 100%; margin-top: 5%;">

			<form action="searchProduct" method="Post">
				<h3>Danh sách Tivi</h3>
				<table class="table2">
					<tr>
						<td><label>Tên tivi</label></td>
						<td><div class="form-group">
								<input type="text" name="name" class="form-control" required>
								<p style="color: red; font-weight: bold; font-style: italic;"></p>
							</div></td>
					</tr>
					<tr>
						<td><label>Hãng </label></td>
						<td><select style="height: 32px; border: 2px solid black;"
							name="categories">
								<option value="1" selected="selected">Sony</option>
								<option value="2">Dalton</option>
								<option value="3">Philips</option>
								<option value="4">DARLING</option>
								<option value="5">Sumico</option>
								<option value="6">Panasonic</option>
								<option value="7">Vinabox</option>
								<option value="8">Techmate</option>
								<option value="9">Jamo</option>
						</select></td>
					</tr>


					<tr>
						<td><label>Giá</label></td>
						<td style="min-width: 280px;"><input type="number"
							name="minprice" class="form-control" required>
							<p style="color: red; font-weight: bold; font-style: italic;"></p>
						</td>
						<td style="text-align: center; min-width: 80px;">
							<div style="text-align: center; height: auto;">
								<span style="font-size: 17px;"> ~ </span>
							</div>
						</td>
						<td style="min-width: 280px;"><input type="number"
							name="maxprice" class="form-control" required>
							<p style="color: red; font-weight: bold; font-style: italic;"></p>
						</td>
					</tr>

					<tr>
						<td><label>Đã bán </label></td>
						<td><input type="checkbox" name="sold"
							style="min-width: 60px; min-height: 30px;"></td>
					</tr>
					<tr>

						<td><input type="submit" class="btn btn-default"
							style="min-width: 170%;" value="Tim kiem"></td>
						<td><a type="button" class="btn btn-default"
							style="margin-left: 20%; min-width: 45%;"
							href="/FinalExercises/backend/addproduct">Thêm mới </a></td>
					</tr>
				</table>
			</form>
		</div>

		<div style="width: 100%; height: 100%; margin-top: 5%;">
			<table class="table table-bordered">
				<thead>
					<tr>
						<th style="background-color: #CC99FF;">Ti vi</th>
						<th style="background-color: #CC99FF;">Hãng</th>
						<th style="background-color: #CC99FF;">Giá</th>
						<th style="background-color: #CC99FF;">Người mua</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach items="${listProduct}" var="list">
						<tr>
							<td><a
								href="/FinalExercises/backend/updateproduct?idproduct=${list.getIdProduct()}">${list.getName()}</a></td>
							<td>LG</td>
							<td>${list.getPriceConvert()}</td>
							<td>${list.getUserName() }</td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
		</div>
	</div>


</body>
</html>
