<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>login page</title>
		<link rel="stylesheet" href="https://dhbhdrzi4tiry.cloudfront.net/cdn/sites/foundation.min.css">
		<link href="https://cdnjs.cloudflare.com/ajax/libs/foundicons/3.0.0/foundation-icons.css" rel="stylesheet" type="text/css">
		<link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.css" rel="stylesheet">
		<style>
			body { background: url(resources/computer-code.jpg); }

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

			form .form-icons .fa {
  				color: white;
  				width: 1rem;
			}
			
			.color{
				border-color: #1779ba;
				background-color: #1779ba;
			}
		</style>
	</head>
	
	<body>
		<div  class="row">
			<div style=" margin-top: 10%" class="large-6 columns large-centered callout ">
				<%@include file="../jsp/form-login.jsp" %>
			</div>
		</div>
		

	</body>

</html>