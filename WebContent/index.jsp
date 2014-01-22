<%@ page contentType="text/html; charset=utf-8" language="java" import="java.util.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ taglib prefix="s" uri="/struts-tags" %>
<html lang="en" xmlns="http://www.w3.org/1999/xhtml">
	<!-- include header file -->
	<%@ include file = "template-page/tempHeader.jsp" %>
	<body>
		<% if (session.getAttribute("username") != null) response.sendRedirect("index.jsp"); %>
		
		<%@ include file = "template-page/tempNavNonLogin.jsp" %>
		
		<div class="container">
			<div class="row">
				<h2 style="text-align:center">Sign Up</h2><br />
				<s:form method="post" class="form-signin" action="Register">
					<table class="table" align="center" style="width:50%">
						<tr>
							<td align="left" style="width:51%">Username</td>
							<td align="right" style="width:100%"><s:textfield cssClass="form-control" name="userlogin.user"></s:textfield></td>
						</tr>
						<tr>
							<td align="left" style="width:51%">Full Name</td>
							<td align="right" style="width:100%"><s:textfield cssClass="form-control" name="userlogin.name"></s:textfield></td>
						</tr>
						<tr>
							<td align="left" style="width:51%">Password</td>
							<td align="right" style="width:100%"><s:password cssClass="form-control" name="userlogin.pass"></s:password></td>
						</tr>
						<tr>
							<td align="left" style="width:51%">Confirm Password</td>
							<td align="right" style="width:100%"><s:password cssClass="form-control" name="userlogin.confpass"></s:password></td>
						</tr>
					</table>
					<br />
					<%
						String errReg = (String)request.getAttribute("errReg");
						if (errReg != null) {
					%>
							<div style="text-align:center">
								<%= errReg %>
							</div>
					<% } %>
					<br />
					<p align="center">
						<s:submit cssClass="btn btn-success" value="Register" style="text-align:center"></s:submit>
					</p>
				</s:form>
			</div>
		</div>
	</body>
</html>