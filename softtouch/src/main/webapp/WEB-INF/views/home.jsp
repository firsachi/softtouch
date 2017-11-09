<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page session="false" %>
<html class="" lang="en">
	<head>
		<meta charset="utf-8">
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<title>Welcome page</title>
		<link rel="stylesheet" href="https://dhbhdrzi4tiry.cloudfront.net/cdn/sites/foundation.min.css">
		<link href="https://cdnjs.cloudflare.com/ajax/libs/foundicons/3.0.0/foundation-icons.css" rel="stylesheet" type="text/css">
		<link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.css" rel="stylesheet">

		<meta class="foundation-mq">
		<style>
			form .form-icons {
  				text-align: center;
			}

			form .form-icons h4 {
  				margin-bottom: 1rem;
			}

		 	form .form-icons .input-group-label {
  				background-color: #1779ba;
  				border-color: #1779ba;
			}

			form .form-icons .input-group-field {
  				border-color: #1779ba;
			}
			
			.color{
				border-color: #1779ba;
				background-color: #1779ba;
			}
			
			form .form-icons .fa {
  				color: white;
  				width: 1rem;
			}


			.hover-underline-menu {
  				width: 100%;
			}

			.hover-underline-menu .menu {
  				background-color: #2C3840;
			}

			.hover-underline-menu .menu a {
  				color: #fefefe;
  				padding: 1.2rem 1.5rem;
			}

			.hover-underline-menu .menu .underline-from-center {
  				position: relative;
			}

			.hover-underline-menu .menu .underline-from-center::after {
  				content: "";
  				position: absolute;
  				top: calc(100% - 0.125rem);
  				border-bottom: 0.125rem solid #fefefe;
  				left: 50%;
  				right: 50%;
  				transition: all 0.5s ease;
			}

			.hover-underline-menu .menu .underline-from-center:hover::after {
  				left: 0;
  				right: 0;
  				transition: all 0.5s ease;
			}

		</style>
		
	</head>



	<body>
	
		<nav class="hover-underline-menu" data-menu-underline-from-center>
  			<ul class="menu align-center">
    			<li><a href="#">Комунальне підприємство "Інформатика"</a></li>
  			</ul>
		</nav>

		<br>
		<div class="row">
			<div class="medium-7 large-8 columns callout">
				<h1>Апарат виконавчого органу Київської міської ради "Київської міської державної адміністрації"</h1>
				<ul class="accordion" data-accordion data-allow-all-closed="true">
  				
  					<li class="accordion-item" data-accordion-item>
    					<a href="#" class="accordion-title">Апарат</a>
    					<div class="accordion-content" data-tab-content >
      						<ul>
      							<li><a href="cabinet">1. Відділ організаційного забезпечення діяльності Київського міського голови (патронатної служби).</a></li>
      							<li>2. Управління аналітичного забезпечення Київського міського голови.</li>
      							<li>3. Управління контрольно-аналітичного забезпечення першого заступника голови Київської міської державної</li>
      							<li>${ info }</li>
      						</ul>
    					</div>
  					</li>
  				
  					<li class="accordion-item" data-accordion-item>
    					<a href="#" class="accordion-title">Департаменти</a>
    					<div class="accordion-content" data-tab-content>
      						<ul>
      							<li>1. Департамент будівництва та житлового забезпечення </li>
      							<li>2. Департамент внутрішньго фінансового контролю та аудиту </li>
      						</ul>
    					</div>
  					</li>
  				
  					<li class="accordion-item" data-accordion-item>
    					<a href="#" class="accordion-title">Управління</a>
    					<div class="accordion-content" data-tab-content>
      						<ul>
      							<li>1. Управління з питань реклами </li>
      							<li>2. Управління (Інспекція) самоврядного контролю </li>
      						</ul>
    					</div>
  					</li>
				</ul>
			</div>

			<div class="medium-5 large-4 columns">
				<div class="callout secondary">
					<%@include file="../jsp/form-login.jsp" %>
				</div>
			</div>
		</div>

		<script async="" src="https://www.google-analytics.com/analytics.js"></script>
		<script type="text/javascript" src="<c:url value="/resources/js/vendor/jquery.js"/>"></script>
		<script type="text/javascript" src="<c:url value="/resources/js/vendor/foundation.js"/>"></script>
		<script type="text/javascript" src="<c:url value="/resources/js/vendor/what-input.js"/>"></script>
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
