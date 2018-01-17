<%@ page pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

					<form:hidden path="id"/>

					<div class="row">
						<div class="small-4 columns">
							<form:label path="firstname" class="text-right middle">
								<spring:message code="form.user.firstname"/>
							</form:label>
						</div>
						<div  class="small-8 columns">
							<spring:message   code="form.subdivision.messagename" var="messagename"/>
							<form:errors path="firstname" cssClass="twelve columns label alert" element="span"/>
							<form:input path="firstname" placeholder="${messagename}"/>
						</div>
					</div>
					
					<div class="row">
						<div class="small-4 columns">
							<form:label path="lastname" class="text-right middle">
								<spring:message code="form.user.lastname"/>
							</form:label>
						</div>
						<div  class="small-8 columns">
							<spring:message   code="form.subdivision.messagename" var="messagename"/>
							<form:errors path="lastname" cssClass="twelve columns label alert" element="span"/>
							<form:input path="lastname" placeholder="${messagename}"/>
						</div>
					</div>
					
					<div class="row">
						<div class="small-4 columns">
							<form:label path="username" class="text-right middle">
								<spring:message code="form.user.lastname"/>
							</form:label>
						</div>
						<div  class="small-8 columns">
							<spring:message   code="form.subdivision.messagename" var="messagename"/>
							<form:errors path="username" cssClass="twelve columns label alert" element="span"/>
							<form:input path="username" placeholder="${messagename}"/>
						</div>
					</div>