<%@ page contentType="text/html; charset=utf-8" language="java" import="java.util.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ taglib prefix="s" uri="/struts-tags" %>
<html lang="en" xmlns="http://www.w3.org/1999/xhtml">
	<!-- include header file -->
	<%@ include file = "template-page/tempHeader.jsp" %>
	<body>
		<link href="css/main.css" rel="stylesheet">
		<script>
			var draggAble = null;
			$(document).ready(function(){
				$("#photoContainer").css("height","500px");
				$("#photoContainer").css("width","500px");
				$("#photoContainer").css("background-image","url('resources/image/a.jpg')");
				$("#taggingButton").click(function(){
					var divTag = $("<div class='tagDiv' id='tagDiv'><div></div><input type='text' /></div>");
					
					divTag.on("mousedown",function(){
						draggAble = this;
					})
					divTag.on("mouseup",function(){
						draggAble = null;
					})
					$("#photoContainer").on("mousemove",function(e){
						if(draggAble)
						{
							$(draggAble).offset({
				                top: e.pageY,
				                left: e.pageX
				            });
						}						
					})
					$("#photoContainer").append(divTag);
					$("#getLocationButton").css('display','');
					$("#taggingButton").css("display","none");
				})
				$("#getLocationButton").click(tagButtonIntoDiv);
				$("#getLocationButton").css("display","none");
			})
			
			function tagButtonIntoDiv(){
				var msg1 = "width:"+$("#tagDiv").width();
				alert(msg1);
				var msg2 = "height:"+$("#tagDiv").height();
				alert(msg2);
				var msg3 = "x:"+($("#tagDiv").offset().left - $("#photoContainer").offset().left);
				alert(msg3);
				var msg4 = "y:"+($("#tagDiv").offset().top- $("#photoContainer").offset().top);
				alert(msg4);
				
				$("#taggingButton").css('display','');
				$("#getLocationButton").css("display","none");
			}
		</script>
		<div class="bodyPhoto">
			<div class="photo">
				<div id="photoContainer">
				</div>
			</div>
			<div class="photoInfo">
				<div class="tagEvent" id="tagBtnContainer">
					<button class="btn btn-success" id="taggingButton">Tag</button>
					<button class='btn btn-success' id="getLocationButton">getLocation</button>
				</div>
				<div class="detailPhoto">
					<div> Name:</div>
					<div> Desc:</div>
					<div> Desc:</div>
					<div> Desc:</div>
					<div> Desc:</div>
					<div> Desc:</div>
					<div> Desc:</div>
					<div> Desc:</div>
					<div> Desc:</div>
					<div> Desc:</div>
					<div> Desc:</div>
					<div> Desc:</div>
					<div> Desc:</div>
					<div> Desc:</div>
					<div> Desc:</div>
					<div> Desc:</div>
					<div> Desc:</div>
					<div> Desc:</div>
					<div> Desc:</div>
					<div> Desc:</div>
					<div> Desc:</div>
					<div> Desc:</div>
					<div> Desc:</div>
					<div> Desc:</div>
					<div> Desc:</div>
					<div> Desc:</div>
					<div> Desc:</div>
					<div> Desc:</div>
					<div> Desc:</div>
					<div> Desc:</div>
					<div> Desc:</div>
					<div> Desc:</div>
					<div> Desc:</div>
					<div> Desc:</div>
					<div> Desc:</div>
					<div> Desc:</div>
					<div> Desc:</div>
					<div> Desc:</div>
					<div> Desc:</div>
					<div> Desc:</div>
					<div> Desc:</div>
					<div> Desc:</div>
					<div> Desc:</div>
					<div> Desc:</div>
					<div> Desc:</div>
					<div> Desc:</div>
					<div> Desc:</div>
				</div>
			</div>
		</div>
	</body>
</html>