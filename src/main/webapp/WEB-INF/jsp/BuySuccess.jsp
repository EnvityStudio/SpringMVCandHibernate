<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Buy Success</title>
</head>
<body>
	<h2>Bạn đã mua hàng thành công! ${notify}</h2>
	<h2>Chúng tôi sẽ giao hàng cho bạn trong 2 ngày sắp tới!</h2>
	<a href="/FinalExercises/product/allproduct">Tiếp tục mua</a>
</body>
</html>