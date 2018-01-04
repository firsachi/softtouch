<%@ page pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
			<form:form modelAttribute="user" method="post" action="login" >
				<div class="form-icons">
					
					<h4>Login</h4>
					
					<c:if test = "${ error != null}">
					<div class="alert callout" data-closable>
						<spring:message code="error.login"></spring:message>
						<button class="close-button" aria-label="Dismiss alert" type="button" data-close>
							<span aria-hidden="true">&times;</span>
						</button>
					</div>
					</c:if>
					
					<div class="input-group">
						<span class="input-group-label">
        					<i class="fa fa-envelope"></i>
      					</span>
      					<form:input type="email" path="username" class="input-group-field"/>
      					<form:errors path="username"/>
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