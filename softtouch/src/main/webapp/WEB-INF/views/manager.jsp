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
			
				<div class="off-canvas position-left reveal-for-large" id="my-info" data-off-canvas="" data-position="left" aria-hidden="true" data-offcanvas="3rv0tb-offcanvas">	
					<div class="row column">
						<%@include file="../jsp/menu-left-manager.jsp" %>
					</div>
				</div>
				
				<div class="off-canvas-content" data-off-canvas-content="">
					
					<div class="title-bar hide-for-large">
						<div class="title-bar-left">
							<button class="menu-icon" type="button" data-open="my-info" aria-expanded="false" aria-controls="my-info"></button>
							<span class="title-bar-title">Mike Mikerson</span>
						</div>
					</div>
					
					<%@include file="../jsp/title-manager.jsp" %>
					
					<div class="row small-up-2 medium-up-3 large-up-4">
						
					</div>
					<hr>
					<div class="row">
						
					</div>
					<div class="js-off-canvas-exit">
					</div>
				</div>
			</div>
		</div>
		<%@include file="../jsp/map-js.jsp" %>

		<script>
			$(document).foundation();
		</script>
	</body>
</html>