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
					
					<div class="title-bar hide-for-large">
						<div class="title-bar-left">
							<button class="menu-icon" type="button" data-open="my-info" aria-expanded="false" aria-controls="my-info"></button>
							<span class="title-bar-title">Mike Mikerson</span>
						</div>
					</div>
					
					<%@include file="../jsp/title-manager.jsp" %>
					
					<div class="row small-up-2 medium-up-3 large-up-4 large-12">
						<table>
							<tr>
								<th><spring:message code="table.number"/></th>
								<th><spring:message code="table.namecompany"/></th>
								<th><spring:message code="table.namesubdivision"/></th>
								<th>
									<ul class="menu float-right">
										<li><a class="hollow button tiny fi-plus" href="add"></a></li>
									</ul>
								</th>
							</tr>
							<c:forEach var="company" items="${companies}" varStatus="counter">
								<tr>
									<td>${counter.index + 1}</td>
									<td>${company.comapanyName}</td>
									<td>${company.subdivision.name}</td>
									<td>
										<ul  class="menu small float-right">
											<li><a href="/softtouch/manager/company/edit/${company.id}" class="hollow button tiny fi-pencil"></a></li>
											<li style="margin-left: 2px;"><a href="/softtouch/manager/company/disable/${company.id}" class="alert hollow button tiny fi-x"></a></li>
										</ul>
									</td>
								</tr>
							</c:forEach>
						</table>
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