<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ taglib prefix="s" uri="/struts-tags" %>
<html lang="en" xmlns="http://www.w3.org/1999/xhtml">
	<!-- include header file -->
	<%@ include file = "template-page/tempHeader.jsp" %>
	<body>
		
		<%@ include file = "template-page/tempNavLogin.jsp" %>
		
		<div class="container">
			<div class="row" style="margin-top:30px">
				<div class="headerContent">
					<img src="resources/image/starlight.jpg">
					<div class="subHeaderContent">
						<div id="upload">
							<s:form action="upload">
								<s:file classCss="form-control"></s:file>
								<s:submit classCss="btn btn-success"></s:submit>
							</s:form>
						</div>
						<a href="/<s:property value="userid" />" >
							<div id="followers">
								<span id="txtFollowers">Followers</span>
								<spand id="numFollowers">112</spand>
							</div>
						</a>
						<a href="/<s:property value="userid" />">
							<div id="following">
								<span id="txtFollowing">Following</span>
								<spand id="numFollowing">313</spand>
							</div>
						</a>
					</div>
				</div>
				<div class="content">
					<s:iterator value="photoList" var="photo">
					    <div class="image">
					    	<img src="resources/image/<s:property value="src" />" />
					    </div> 
					</s:iterator>
				</div>
			</div>
		</div>
	</body>
</html>