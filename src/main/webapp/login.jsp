<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ include file="header.jsp" %>
<html>  
<head>   
<title>  
Login details
</title>  
</head>      
<body bgcolor="Lightskyblue">  
<br>  
<br>  

<div style="border:solid">
<div class="container">

<%
if(request.getAttribute("msg")!=null)
{
	out.print(request.getAttribute("msg"));	
}
%>

<form class="form-horizontal" method="post" action="UserController">
  
<div class="control-group">
<label class="control-label" for="input_email">Email <sup>*</sup></label>
<div class="controls">
<input type="text" name="email" id="input_email" placeholder="Email">
</div>
</div>
<br>

<div class="control-group">
<label class="control-label" for="input_password">Password <sup>*</sup></label>
<div class="controls">
<input type="password" name="password" id="input_password" placeholder="Password">
</div>
</div>
<br>

 
<input type="submit" value="Login" name="action" class="btn btn-success"/>  
<a href="forgot_password.jsp"><input type="button" value="Forgot password " name="action" class="btn btn-primary"/></a>
</form> 
</div> 
</div>
</body>  
</html>  
