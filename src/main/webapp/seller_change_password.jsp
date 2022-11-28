<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="seller_header.jsp"%>
<html>
<head>
<title>Change Password</title>
</head>
<body bgcolor="Lightskyblue">
	<br>
	<br>

	<div style="border: solid">
		<div class="container">

			<h4>Change Password</h4>

			<%
			if (request.getAttribute("msg") != null) {
				out.print(request.getAttribute("msg"));
			}
			%>

			<form class="form-horizontal" method="post" action="UserController">


				<div class="control-group">
					<label class="control-label" for="input_password">Old Password
						<sup>*</sup>
					</label>
					<div class="controls">
						<input type="password" name="old_password" id="input_password"
							placeholder="Old Password">
					</div>
				</div>
				<br> 
				
				<div class="control-group">
					<label class="control-label" for="input_password">New Password
						<sup>*</sup>
					</label>
					<div class="controls">
						<input type="password" name="new_password" id="input_password"
							placeholder="New Password">
					</div>
				</div>
				<br>
				
								<div class="control-group">
					<label class="control-label" for="input_password">Confirm New Password
						<sup>*</sup>
					</label>
					<div class="controls">
						<input type="password" name="cnew_password" id="input_password"
							placeholder="Confirm New Password">
					</div>
				</div>
				<br>
				
				
				<input type="submit" value="change password" name="action"
					class="btn btn-large btn-success" />
			</form>
		</div>
	</div>
</body>
</html>
