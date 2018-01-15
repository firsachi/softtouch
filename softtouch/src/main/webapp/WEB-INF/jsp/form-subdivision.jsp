<%@ page pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

					<div class="small-12 large-12 column row">
						<div class="small-4 cell columns">
							<form:label path="name" class="text-right middle">
								<spring:message code="form.subdivision.name"/>
							</form:label>
						</div>
						<div  class="small-8 cell columns">
							<spring:message   code="form.subdivision.messagename" var="messagename"/>
							<form:errors path="name" cssClass="twelve columns label alert" element="span"/>
							<form:input path="name" placeholder="${messagename}"/>
						</div>
					</div>
			