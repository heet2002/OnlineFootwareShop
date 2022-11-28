<%@page import="com.dao.ProductDao"%>
<%@page import="com.bean.Product"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="seller_header.jsp" %>
<html>  
<head>   
<title>  
Edit Product
</title>  
</head>      
<body> 

<%
	Product p=ProductDao.getProductPid(Integer.parseInt(request.getParameter("pid")));
%>

<br>  
<br>  

<div>
<div class="container">

<%

if(request.getAttribute("msg")!=null)
{
	out.print(request.getAttribute("msg"));	
}

%>
<form class="form-horizontal" method="post" action="ProductController" enctype="multipart/form-data"> 
<h4>Edit Product</h4> 
<input type="hidden" name="pid" value="<%=p.getId()%>">

<div class="control-group">
<label class="control-label" for="inputFname1">Product Category Type <sup>*</sup></label>
<div class="controls">
<select name="product_category">
<%
if(p.getPcid()==9)
{
%>
		<option>---Select Product Category---</option>
		<option value="9" selected="selected">Sneakers</option>
		<option value="10">Formal shoes</option>
		<option value="11">Sports shoes</option>
<%
}

else if(p.getPcid()==10)
{
	%>
		<option>---Select Product Category---</option>
		<option value="9">Sneakers</option>
		<option value="10" selected="selected">Formal shoes</option>
		<option value="11">Sports shoes</option>
	<%
}

else if(p.getPcid()==11)
{
	%>
		<option>---Select Product Category---</option>
		<option value="9">Sneakers</option>
		<option value="10">Formal shoes</option>
		<option value="11" selected="selected">Sports shoes</option>
	<%
}

else
{
	%>
		<option>---Select Product Category---</option>
		<option value="9">Sneakers</option>
		<option value="10">Formal shoes</option>
		<option value="11">Sports shoes</option>
	<%
}
%>

</select>

</div>
</div>
<br>
  

<div class="control-group">
<label class="control-label" for="inputFname1">Product name <sup>*</sup></label>
<div class="controls">
<input type="text" id="inputFname1"  name="product_name" placeholder="Product Name" value="<%=p.getProduct_name()%>">
</div>
</div>
<br>
  
<div class="control-group">
<label class="control-label" for="inputLname">Product price<sup>*</sup></label>
<div class="controls">
<input type="text" id="inputLname" name="product_price" placeholder="Product price" value="<%=p.getProduct_price()%>">
</div>
</div>
<br>

<div class="control-group">
<label class="control-label" for="inputMobile">Product Description<sup>*</sup></label>
<div class="controls">
<textarea rows="5" cols="21" id="address" name="product_desc" placeholder="product description"><%=p.getProduct_desc() %></textarea>
</div>
</div>
<br>

<!-- <div class="control-group">
<label class="control-label" for="inputLname">Product Image<sup>*</sup></label>
<div class="controls">
<input type="file" id="inputLname" name="product_image">
</div>
</div>
<br>
 -->


 
<input class="btn btn-success" type="submit" value="Update Product"  name="action"/>  
</form> 
</div> 
</div>
</body>  
</html>  
