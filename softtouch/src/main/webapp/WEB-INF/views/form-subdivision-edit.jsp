<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<spring:message code="form.subdivision.titleadd" var="title"/>
		<title>${title}</title>
		<%@include file="../jsp/link-css.jsp" %>
	</head>
	
	<body><br>
		<div class="row">
			<div class="small-12 medium-12 large-6 large-centered columns">
				<form:form modelAttribute="subdivision" method="post" action="/softtouch/manager/subdivision/update">
					<div class="column row text-center">
						<h4>${title}</h4>
					</div>
					<hr>
					<%@include file="../jsp/form-subdivision.jsp" %>
					
					<hr>
					<div class="small-12 column row">
						<div class="small-12 columns">
							<div class="expanded button-group">
								<a class="hollow button" href="/softtouch/manager/subdivision/">
									<spring:message code="buttons.back" />
								</a>
								<button type="reset" class="hollow button">
									<spring:message code="buttons.reset" />
								</button>
								<button type="submit" class="hollow button">
									<spring:message code="buttons.submit"/>
								</button>
							</div>
						</div>
					</div>	
				</form:form>
			</div>
		</div>

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