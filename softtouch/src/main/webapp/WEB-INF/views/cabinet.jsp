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

		<div class="row" id="content">
			<div class="large-8 columns">
			
			<div class="blog-post">
					<h3>Антивірус</h3>
					<table>
						<tr>
							<th>Найменування програмного забезпечення</th>
							<th>Кількість ліцензій</th>
							<th>Дата отримання</th>
							<th>Дата активації</th>
						<tr>
							<td>ESET Antivirus</td>
							<td>10</td>
							<td>10.10.2010</td>
						</tr>
						<tr>
							<td>ESET Antivirus</td>
							<td>21</td>
							<td>10.10.2014</td>
						</tr>
						
					</table>
					<div class="callout">
						<ul class="menu simple">
							<li>Всього: </li>
							<li>31</li>
						</ul>
					</div>
				</div>
				
				<hr>
				
				<div class="blog-post">
					<h3>Операційні системи</h3>
					<table>
						<tr>
							<th>Найменування програмного забезпечення</th>
							<th>Кількість ліцензій</th>
							<th>Дата отримання</th>
						<tr>
							<td>ОС Windows 7 pro</td>
							<td>10</td>
							<td>10.10.2010</td>
						</tr>
						<tr>
							<td>ОС Windows 8.1 pro</td>
							<td>21</td>
							<td>10.10.2014</td>
						</tr>
						<tr>
							<td>ОС Windows 8.1 pro</td>
							<td>20</td>
							<td>10.10.2016</td>
						</tr>

					</table>
					<div class="callout">
						<ul class="menu simple">
							<li>Всього: </li>
							<li>51</li>
						</ul>
					</div>
				</div>

			</div>
	
	
			<div class="large-4 columns sticky-container" data-sticky-container="" style="height: 322.8px;">
				<div class="sticky" data-sticky="wkslj9-sticky" data-anchor="content" data-resize="qhb8kc-sticky" style="max-width: 285px;" data-events="resize">
					<h4>Програмне забезпечення</h4>
					<ul>
						<li><a href="#">Антивірус</a></li>
						<li><a href="#">Операційні системи</a></li>
					</ul>
					<hr>
					<h4>Обладнання</h4>
					<ul>
						<li><a href="#">Сервери</a></li>
						<li><a href="#">PC</a></li>
						<li><a href="#">Принтери та БФП</a></li>
					</ul>
					<hr>
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