<%@ page pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

					<form:hidden path="id"/>
					<form:hidden path="username"/>
					<!-- password -->
					<div class="row">
						<div class="small-4 columns">
							<form:label path="password" class="text-right middle">
								<spring:message code="inputs.password"/>
							</form:label>
						</div>
						<div  class="small-8 columns">
							<spring:message   code="message.password" var="messagename"/>
							<form:errors path="password" cssClass="twelve columns label alert" element="span"/>
							<form:password path="password" placeholder="${messagename}"/>
						</div>
					</div>
					
					<!-- repeatPassword -->
					<div class="row">
						<div class="small-4 columns">
							<form:label path="repeatPassword" class="text-right middle">
								<spring:message code="inputs.repeatPassword"/>
							</form:label>
						</div>
						<div  class="small-8 columns">
							<spring:message   code="message.repeatpassword" var="messagename"/>
							<form:errors path="repeatPassword" cssClass="twelve columns label alert" element="span"/>
							<form:password path="repeatPassword" placeholder="${messagename}"/>
						</div>
					</div>
					