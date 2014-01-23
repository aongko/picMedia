<%@ page contentType="text/html; charset=utf-8" language="java" import="java.util.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html lang="en" xmlns="http://www.w3.org/1999/xhtml">
	<!-- include header file -->
	<%@ include file = "template-page/tempHeader.jsp" %>
	<body>
		<%@ include file = "template-page/tempNavNonLogin.jsp" %>
		
		<div class="container">
			<div class="row" style="margin-top:30px">
				<h2 style="text-align:center">Sign Up</h2><br />
				<s:form method="post" cssClass="form-signin" action="add">
					<s:textfield cssClass="form-control" name="username" label="Username"></s:textfield>
					<s:password cssClass="form-control" name="password" label="Password"></s:password>
					<s:textfield cssClass="form-control" name="fullname" label="Full Name"></s:textfield>
					<s:textfield cssClass="form-control" name="email" label="Email"></s:textfield>
					<s:submit cssClass="btn btn-success" value="Register" cssStyle="text-align:center"></s:submit>
				</s:form>
			</div>
		</div>
	</body>
</html>