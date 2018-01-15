<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ page session="false" %>
<html class="" lang="en">
	<head>
		<meta charset="utf-8">
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<title><spring:message code="title.index"/></title>
		<%@include file="../jsp/link-css.jsp" %>
		<style type="text/css">
			nav, .top-bar, .top-bar ul{	background-color: #2C3840; }
			.menu .menu-text{ color: white; }
		</style>
	</head>
	<body>
		
		<nav>
			<div class="row">
				<div class="top-bar" id="responsive-menu">
					<div class="top-bar-left">
						<ul class="menu" data-dropdown-menu>
							<li class="menu-text"><spring:message code="title.index"/></li>
						</ul>
					</div>
				</div>
			</div>
		</nav>
		<br>
		<div class="row">
			<div class="smail-12 large-8 columns">
				<h4><spring:message code="home.customerslist"/></h4>
				<ul class="accordion" data-accordion data-allow-all-closed="true">
					
					<c:forEach var="subdivision" items="${subdivisions}">
					<li class="accordion-item" data-accordion-item>
						<a class="accordion-title">${subdivision.name}</a>
						
						<div class="accordion-content" data-tab-content>
							
							<c:forEach var="company" items="${subdivision.getCompany()}">
								<c:if test="${company.disable == false}">
									<a href="login" >${company.comapanyName}</a><br>
								</c:if>
							</c:forEach>
							
						</div>
					</li>
					</c:forEach>
													
				</ul>
			</div>
			<div class="smail-12 large-4 columns">
				<%@include file="../jsp/form-login.jsp" %>
			</div>
		</div>

		<script async="" src="https://www.google-analytics.com/analytics.js"></script>
		<%@include file="../jsp/map-js.jsp" %>

		<script>
			$(document).foundation();
		</script>

    	
	</body>
	
</html>
