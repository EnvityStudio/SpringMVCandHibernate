<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <title>Buyer Information</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>

<div class="container">
   <h2>Form đăng kí thông tin người mua</h2>
   <form action="/" method="post" style="margin-top: 5%;">
      <div class="form-group">
         <label for="name">Họ và tên:</label>
         <input type="text" class="form-control"placeholder="Enter name" name="name" >
         <p style="color: red;font-weight: bold;font-style: italic;"></p>
      </div>
      <div class="form-group">
         <label for="email">Email:</label>
         <input type="email" class="form-control" placeholder="Enter email" name="email">
          <p style="color: red;font-weight: bold;font-style: italic;"></p>
      </div>
      <div class="form-group">
         <label for="phone">Điện thoại:</label>
         <input type="text" class="form-control" placeholder="Enter phone" name="phone" value="+84">
         <p style="color: red;font-weight: bold;font-style: italic;"></p>
      </div>
      <button type="submit" class="btn btn-default" style="background-color: #FF3366;width: 100%;" value="Hoàn tất đăng kí mua">
   </form>
</div>


</body>
</html>