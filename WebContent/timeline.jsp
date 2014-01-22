<%@ page contentType="text/html; charset=utf-8" language="java" import="java.util.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ taglib prefix="s" uri="/struts-tags" %>
<html lang="en" xmlns="http://www.w3.org/1999/xhtml">
	<!-- include header file -->
	<%@ include file = "template-page/tempHeader.jsp" %>
	<body>
		<%@ include file = "template-page/tempNavLogin.jsp" %>
		<table border="1">
		<tr>
		    <th>photo</th>
		    <th>src</th>
		    <th>description</th>
		</tr>
		<s:iterator value="photoList" var="photo">
		    <tr>
		        <td><s:property value="photoId"/></td>
		        <td><s:property value="src"/> </td>
        		<td><s:property value="description"/></td>
		    </tr> 
		</s:iterator>
		</table>
	</body>
</html>