<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html class="" lang="en">
	
	<head>
		<meta charset="utf-8">
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		
		<title><spring:message code="form.user.title"/></title>
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
					
				
						<table>
							<tr>
								<th><spring:message code="table.number"/></th>
								<th><spring:message code="table.username"/></th>
								<th><spring:message code="table.namecompany"/></th>
								<th>
									<ul class="menu float-right">
										<li><a class="hollow button tiny fi-plus" href="add"></a></li>
									</ul>
								</th>
							</tr>
							<c:forEach var="user" items="${users}" varStatus="counter">
								<tr>
									<td>${counter.index + 1}</td>
									<td>${user.username}</td>
									<td>${user.companyname}</td>
									<td>
										<ul  class="menu small float-right">
											<li><a href="/softtouch/manager/subdivision/edit/${subdivision.id}" class="hollow button tiny fi-pencil"></a></li>
											<li style="margin-left: 2px;"><a href="/softtouch/manager/subdivision/disable/${subdivision.id}" class="alert hollow button tiny fi-x"></a></li>
										</ul>
									</td>
								</tr>
							</c:forEach>
						</table>

			</div>
		</div>
		<%@include file="../jsp/map-js.jsp" %>

		<script>
			$(document).foundation();
		</script>
	</body>
</html>