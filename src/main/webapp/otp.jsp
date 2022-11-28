<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="header.jsp"%>
<html>
<head>
<title>Enter OTP</title>
</head>
<body bgcolor="Lightskyblue">
	<br>
	<br>

	<div style="border: solid">
		<div class="container">

			<%
			if (request.getAttribute("msg") != null) {
				out.print(request.getAttribute("msg"));
			}
			%>

			
			<form class="form-horizontal" method="post" action="UserController">
			<h4>OTP Information</h4>
			
			<input type="hidden" name="email" value="<%=request.getAttribute("email")%>">
			<input type="hidden" name="otp" value="<%=request.getAttribute("otp")%>">

				<div class="control-group">
					<label class="control-label" for="input_email">Email <sup>*</sup></label>
					<div class="controls">
						<input type="text" name="uotp" id="input_email"
							placeholder="Enter OTP">
					</div>
				</div>
				<br>
				
				<input type="submit" value="Verify OTP" name="action" class="btn btn-success" />
			</form>
		</div>
	</div>
</body>
</html>
