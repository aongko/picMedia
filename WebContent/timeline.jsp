<%@ page contentType="text/html; charset=utf-8" language="java" import="java.util.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ taglib prefix="s" uri="/struts-tags" %>
<html lang="en" xmlns="http://www.w3.org/1999/xhtml">
	<!-- include header file -->
	<%@ include file = "template-page/tempHeader.jsp" %>
	<body>
		<%@ include file = "template-page/tempNavLogin.jsp" %>
		
		<div>
			<s:iterator value="photoList" var="photo">
			    <div id="<s:property value="PhotoID"/>" style="margin-bottom: 25px; background-color: #CCCCCC; border-bottom: 1px solid #666666; padding: 25px;">
			    	<!-- User: <s:property value="UserID" /> -->
			    	<div style="text-align: center">
		        		<img id="photo_<s:property value="PhotoID" />" src="resources/image/<s:property value="src"/>" title="<s:property value="name"/>" style="height: 250px; max-width: 500px; margin-left: 50px;" />
	        		</div>
	        		<div class="description" style="width: 500px; margin-left: auto; margin-right: auto;">
	        			Description: <br />
	        			<s:property value="description"/>
	        		</div>
			    </div>
			</s:iterator>
		</div>
	</body>
</html>