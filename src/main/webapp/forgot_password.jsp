<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="header.jsp"%>
<html>
<head>
<title>Forgot Password</title>
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

			<h4>Email Information</h4>
			<form class="form-horizontal" method="post" action="UserController">


				<div class="control-group">
					<label class="control-label" for="input_email">Email <sup>*</sup></label>
					<div class="controls">
						<input type="text" name="email" id="input_email"
							placeholder="Email">
					</div>
				</div>
				<br>
				
				<input type="submit" value="Send OTP" name="action" class="btn btn-primary" />
			</form>
		</div>
	</div>
</body>
</html>
