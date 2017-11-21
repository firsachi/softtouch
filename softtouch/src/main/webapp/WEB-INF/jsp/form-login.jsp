<%@ page pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
			<form:form modelAttribute="user" method="post" action="login" >
				<div class="form-icons">
					
					<h4>Login</h4>
					
					<div class="input-group">
						<span class="input-group-label">
        					<i class="fa fa-envelope"></i>
      					</span>
      					<form:input type="email" path="username" class="input-group-field"/>
					</div>
					
					<div class="input-group">
      					<span class="input-group-label">
        					<i class="fa fa-key"></i>
      					</span>
      					<form:password path="password" class="input-group-field"  placeholder="Password"/>
    				</div>
					
				</div>
				<form:button class="button expanded color">Login</form:button>
			</form:form>