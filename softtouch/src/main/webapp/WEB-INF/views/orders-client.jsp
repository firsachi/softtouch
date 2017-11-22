<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html class="" lang="uk">
	
	<head>
		<meta charset="utf-8">
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<title>Foundation | Welcome</title>
		
		<%@include file="../jsp/link-css.jsp" %>
		
		<meta class="foundation-mq">
	</head>
	
	<body>
		<%@include file="../jsp/nav-cabinet.jsp" %>
		<br>
		<div class="row" id="content">
			
			<div class="row small-up-2 large-up-4">
				<div class="column">
					<img class="thumbnail" src="https://placehold.it/300x400">
					<h5>Антивірус</h5>
					<a href="#" class="button expanded">Замовити</a>
				</div>
				<div class="column">
					<img class="thumbnail" src="https://placehold.it/300x400">
					<h5>Операційні системи</h5>
					<a href="#" class="button expanded">Замовити</a>
				</div>
				<div class="column">
					<img class="thumbnail" src="https://placehold.it/300x400">
					<h5>SQL Сервери</h5>
					<a href="#" class="button expanded">Замовити</a>
				</div>
				<div class="column">
					<img class="thumbnail" src="https://placehold.it/300x400">
					<h5>Майкрософт офіс</h5>
					<a href="#" class="button expanded">Замовити</a>
				</div>
			</div>
		</div>

		<script src="https://code.jquery.com/jquery-2.1.4.min.js"></script>
		<script src="https://dhbhdrzi4tiry.cloudfront.net/cdn/sites/foundation.js"></script>
		<script>
      		$(document).foundation();
    	</script>
	</body>
</html>