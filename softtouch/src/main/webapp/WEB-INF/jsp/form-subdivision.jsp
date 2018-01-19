<%@ page pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

					<form:hidden path="id"/>

					<div class="row">
						<div class="small-4 columns">
							<form:label path="name" class="text-right middle">
								<spring:message code="inputs.subdivision"/>
							</form:label>
						</div>
						<div  class="small-8 columns">
							<spring:message   code="form.subdivision.messagename" var="messagename"/>
							<form:errors path="name" cssClass="twelve columns label alert" element="span"/>
							<form:input path="name" placeholder="${messagename}"/>
						</div>
					</div>
					