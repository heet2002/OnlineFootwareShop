<%@page import="com.dao.ProductDao"%>
<%@page import="com.bean.Product"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<%

	ProductDao.deleteProduct(Integer.parseInt(request.getParameter("pid")));
	request.setAttribute("msg","Product deleted successfully");
	request.getRequestDispatcher("seller_view_product.jsp").forward(request,response);
%>

</body>
</html>