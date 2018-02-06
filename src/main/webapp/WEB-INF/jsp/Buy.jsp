<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <title>Thông tin người dùng</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>

<div class="container">
<div style="width=50px;">
	<h2>Bạn đã chọn mua sản phẩm <span style="color:Red">${product.getName()} </span > với giá <span style="color:Red">${product.getPriceConvert()}đ</span></h2>
	
	<h2> Bạn vui lòng nhập thông tin  để xác nhận mua hàng</h2>
   
   <form action="buySuccess" method="post" style="margin-top: 5%;">
      <div class="form-group">
         <label for="name">Họ và tên:</label>
         <input type="text" class="form-control"placeholder="Nhập họ tên" name="name" required >
         <p style="color: red;font-weight: bold;font-style: italic;"></p>
      </div>
      <div class="form-group">
         <label for="email">Email:</label>
         <input type="email" class="form-control" placeholder="Nhập  email" name="email" required>
          <p style="color: red;font-weight: bold;font-style: italic;"></p>
      </div>
      <div class="form-group">
         <label for="phone">Điện thoại:</label>
         <input type="number" class="form-control" placeholder="Nhập số điện thoại" name="phone" value="0" required>
         <p style="color: red;font-weight: bold;font-style: italic;"></p>
      </div>
      <input type="hidden" name="idproduct" value="${product.getIdProduct()}">
      <input type="submit" class="btn btn-default" style="background-color: #FF3366;" value="Hoàn tất đăng kí mua">
   </form>
</div>
</div>

</body>
</html>