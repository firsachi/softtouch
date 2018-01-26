<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<spring:message code="form.user.titleedit" var="title"/>
		<title>${title}</title>
		<%@include file="../jsp/link-css.jsp" %>
	</head>
	
	<body>
		<br>
		<div class="row">
			<div class="text-center">
				<h4>${title}</h4>
			</div>
			<hr>
		</div>
		<div class="row">
			<c:url var="urlback" value="/manager/users/"/>
			<ul class="accordion" data-accordion data-deep-link="true" data-update-history="true" data-deep-link-smudge="true" data-deep-link-smudge-delay="500" id="deeplinked-accordion">
  				<li class="accordion-item is-active" data-accordion-item>
    				<a class="accordion-title"><h5><spring:message code="form.user.edit"/></h5></a>
    				<div class="accordion-content" data-tab-content id="deeplink1">
      					<form:form method="post" action="/softtouch/manager/users/update/" modelAttribute="user">
							<%@include file="../jsp/form-user.jsp" %>
							<%@include file="../jsp/form-buttons.jsp" %>	
						</form:form>
    				</div>
  				</li>
  				
  				<li class="accordion-item" data-accordion-item>
  					<a class="accordion-title"><h5><spring:message code="form.user.editpassword"/></h5></a>
  					<div class="accordion-content" data-tab-content id="deeplink2">
  						<form:form method="post" action="/softtouch/manager/users/updatepass/" modelAttribute="user">
							<%@include file="../jsp/form-pass.jsp" %>
							<%@include file="../jsp/form-buttons.jsp"%>
						</form:form>
  					</div>
  				</li>
  			</ul>
		</div>

		<%@include file="../jsp/map-js.jsp" %>

		<script>
			$(document).foundation();
		</script>
		<script async="" src="https://www.google-analytics.com/analytics.js"></script>
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