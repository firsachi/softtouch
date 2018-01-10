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
			</div>
			<div class="smail-12 large-4 columns">
				<%@include file="../jsp/form-login.jsp" %>
			</div>
		</div>

		<script async="" src="https://www.google-analytics.com/analytics.js"></script>
		<script type="text/javascript" src="<c:url value="/resources/js/vendor/jquery.js"/>"></script>
		<script type="text/javascript" src="<c:url value="/resources/js/vendor/foundation.js"/>"></script>
		<script type="text/javascript" src="<c:url value="/resources/js/vendor/what-input.js"/>"></script>
		<script>
      		$(document).foundation();
    	</script>
		<script>
			(function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
      		(i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
      		m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
      		})(window,document,'script','https://www.google-analytics.com/analytics.js','ga');
      		ga('create', 'UA-2195009-2', 'auto');
      		ga('send', 'pageview');
      		ga('create', 'UA-2195009-27', 'auto', {name: "foundation"});
      		ga('foundation.send', 'pageview');
			$(document).foundation();
    	</script>
    	
	</body>
	
</html>
