<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="header.jsp" %>
<html>  
<head>   
<title>  
Registration details
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
<form class="form-horizontal" method="post" action="UserController"> 
<h4>Your personal details</h4> 

<div class="control-group">
<label class="control-label" for="inputFname1">User Type <sup>*</sup></label>
<div class="controls">
<select name="usertype">
<option>---Select User Type---</option>
<option value="user">User</option>
<option value="seller">Seller</option>
</select>

</div>
</div>
<br>
  

<div class="control-group">
<label class="control-label" for="inputFname1">First name <sup>*</sup></label>
<div class="controls">
<input type="text" id="inputFname1"  name="fname" placeholder="First Name">
</div>
</div>
<br>
  
<div class="control-group">
<label class="control-label" for="inputLname">Last name <sup>*</sup></label>
<div class="controls">
<input type="text" id="inputLname" name="lname" placeholder="Last Name">
</div>
</div>
<br>

<div class="control-group">
<label class="control-label" for="inputMobile">Mobile<sup>*</sup></label>
<div class="controls">
<input type="text" id="inputMobile" name="mobile" placeholder="Mobile">
</div>
</div>
<br>


  
<div class="control-group">
<label class="control-label" for="input_email">Email <sup>*</sup></label>
<div class="controls">
<input type="text" id="input_email"  name="email" placeholder="Email">
</div>
</div>
<br>


<div class="control-group">
<label class="control-label" for="input_password">Password <sup>*</sup></label>
<div class="controls">
<input type="password" id="input_password" name="password" placeholder="Password">
</div>
</div>
<br>

<div class="control-group">
<label class="control-label" for="input_cpassword">Confirm Password<sup>*</sup></label>
<div class="controls">
<input type="password" id="input_cpassword"  name="cpassword" placeholder="Confirm Password">
</div>
</div>
<br>

<div class="control-group">
<label class="control-label" for="input_address">Address <sup>*</sup></label>
<div class="controls">
<textarea rows="5" cols="21" id="input_address" name="address" placeholder="Address"> </textarea>
</div>
</div>
<br>

 
<input class="btn btn-success" type="submit" value="register"  name="action"/>  
</form> 
</div> 
</div>
</body>  
</html>  
