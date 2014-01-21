<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Struts2 Hibernate</title>
</head>
<body>
	<h1>Hello!</h1>
	
	<s:form action="register" method="post">
		<s:textfield name="userlogin.username" label="Username"></s:textfield>
		<s:password name="userlogin.password" label="Password"></s:password>
		<s:textfield name="userlogin.firstName" label="First Name"></s:textfield>
		<s:textfield name="userlogin.middleName" label="Middle Name"></s:textfield>
		<s:textfield name="userlogin.lastName" label="Last Name"></s:textfield>
		<s:textfield name="userlogin.Email" label="Email"></s:textfield>
		<s:file name="userlogin.photo" label="Photo"></s:file>
		<s:submit value="Register" align="center"></s:submit>
		<s:reset value="Reset" align="center"></s:reset>
	</s:form>
</body>
</html>