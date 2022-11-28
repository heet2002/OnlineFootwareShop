<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="seller_header.jsp" %>
<html>  
<head>   
<title>  
Add Product
</title>  
</head>      
<body> 
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
<h4>Add Product</h4> 
<input type="hidden" name="uid" value="<%=u.getId()%>">

<div class="control-group">
<label class="control-label" for="inputFname1">Product Category Type <sup>*</sup></label>
<div class="controls">
<select name="product_category">
<option>---Select Product Category---</option>
<option value="9">Sneakers</option>
<option value="10">Formal shoes</option>
<option value="11">Sports shoes</option>
</select>

</div>
</div>
<br>
  

<div class="control-group">
<label class="control-label" for="inputFname1">Product name <sup>*</sup></label>
<div class="controls">
<input type="text" id="inputFname1"  name="product_name" placeholder="Product Name">
</div>
</div>
<br>
  
<div class="control-group">
<label class="control-label" for="inputLname">Product price<sup>*</sup></label>
<div class="controls">
<input type="text" id="inputLname" name="product_price" placeholder="Product price">
</div>
</div>
<br>

<div class="control-group">
<label class="control-label" for="inputMobile">Product Description<sup>*</sup></label>
<div class="controls">
<input type="text" id="inputMobile" name="product_desc" placeholder="product description">
</div>
</div>
<br>

<div class="control-group">
<label class="control-label" for="inputLname">Product Image<sup>*</sup></label>
<div class="controls">
<input type="file" id="inputLname" name="product_image">
</div>
</div>
<br>


 
<input class="btn btn-success" type="submit" value="Add Product"  name="action"/>  
</form> 
</div> 
</div>
</body>  
</html>  
