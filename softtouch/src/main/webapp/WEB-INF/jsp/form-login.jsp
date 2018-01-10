<%@ page pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
			<form:form modelAttribute="user" method="post" action="login" >
				<div class="form-icons">
					
					<div class="text-center">
						<h4><spring:message code="title.login"/></h4>
					</div>
					
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
        					<i class="fi-mail"></i>
      					</span>
      					<spring:message code="inputs.email" var="email"/>
      					<form:input type="email" path="username" class="input-group-field " placeholder="${ email }"/>
					</div>
					
					<div class="input-group">
      					<span class="input-group-label">
        					<i class="fi-key"></i>
      					</span>
      					<spring:message code="inputs.password" var="pass"/>
      					<form:password path="password" class="input-group-field"  placeholder="${ pass }"/>
    				</div>
					
				</div>
				<form:button class="button expanded color">
					<spring:message code="buttons.submit"/>
				</form:button>
			</form:form>