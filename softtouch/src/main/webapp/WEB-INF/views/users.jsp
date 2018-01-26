<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="uk">
	
	<head>
		<meta charset="utf-8">
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		
		<title><spring:message code="form.user.title"/></title>
		<%@include file="../jsp/link-css.jsp" %>
	</head>
	
	<body>
		<div class="off-canvas-wrapper">
			<div class="off-canvas-wrapper-inner" data-off-canvas-wrapper="canvas-content">
			
				<%@include file="../jsp/menu-left-manager.jsp" %>
				
				
				<div class="off-canvas-content" data-off-canvas-content="canvas-content">
					
					<%@include file="../jsp/title-manager.jsp" %>
					
					<ul class="tabs" data-tabs id="example-tabs">
  						<li class="tabs-title is-active">
  							<a href="#panel1" aria-selected="true">
  								<spring:message code="tabs.disableusers"/>
  							</a>
  						</li>
  						<li class="tabs-title">
  							<a data-tabs-target="panel2" href="#panel2">
  								<spring:message code="tabs.disableusers"/>
  							</a>
  						</li>
					</ul>
					
					<div class="tabs-content" data-tabs-content="example-tabs">
  						<div class="tabs-panel is-active" id="panel1">
    						<table>
								<%@include file="../jsp/th-users.jsp" %>
							<c:forEach var="user" items="${users}" varStatus="counter">
								<c:if test="${user.disable == false}">
								<tr>
									<td>${counter.index + 1}</td>
									<td>${user.firstname} ${user.lastname}</td>
									<td>${user.getCompany().comapanyName}</td>
									<td>
										<c:forEach var="role" items="${user.getRoles()}">
											${role.nameRole}
										</c:forEach>
									</td>
									<td>
										<ul  class="menu small float-right">
											<li><a href="/softtouch/manager/users/edit/${user.id}" class="hollow button tiny fi-pencil"></a></li>
											<li style="margin-left: 2px;"><a href="/softtouch/manager/users/disable/${user.id}" class="alert hollow button tiny fi-x"></a></li>
										</ul>
									</td>
								</tr>
								</c:if>
							</c:forEach>
						</table>
  						</div>
  						<div class="tabs-panel" id="panel2">
    						<table>
    						
							<%@include file="../jsp/th-users.jsp" %>
							
							<c:forEach var="user" items="${users}" varStatus="counter">
								
								<c:if test="${user.disable}">
								<tr>
									<td>${counter.index + 1}</td>
									<td>${user.firstname} ${user.lastname}</td>
									<td>${user.getCompany().comapanyName}</td>
									<td>
										<c:forEach var="role" items="${user.getRoles()}">
											${role.nameRole}
										</c:forEach>
									</td>
									<td>
										<ul  class="menu small float-right">
											<li><a href="/softtouch/manager/users/edit/${user.id}" class="hollow button tiny fi-pencil"></a></li>
											<li style="margin-left: 2px;"><a href="/softtouch/manager/users/enable/${user.id}" class="success hollow button tiny fi-check"></a></li>
										</ul>
									</td>
								</tr>
								</c:if>
								
							</c:forEach>
						</table>
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