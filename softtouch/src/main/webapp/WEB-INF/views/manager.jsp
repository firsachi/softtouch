<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html class="" lang="en">
	
	<head>
		<meta charset="utf-8">
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<title>Foundation | Welcome</title>
		<%@include file="../jsp/link-css.jsp" %>
	</head>
	
	<body>
		<div class="off-canvas-wrapper">
			<div class="off-canvas-wrapper-inner" data-off-canvas-wrapper="">
			
				<%@include file="../jsp/menu-left-manager.jsp" %>
				
				<div class="off-canvas-content" data-off-canvas-content="">
										
					<%@include file="../jsp/title-manager.jsp" %>
					
				</div>
			</div>
		</div>
		<%@include file="../jsp/map-js.jsp" %>

		<script>
			$(document).foundation();
		</script>
	</body>
</html>