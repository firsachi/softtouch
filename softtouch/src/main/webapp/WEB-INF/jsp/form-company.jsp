<%@ page pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

					<form:hidden path="id"/>

					<div class="row">
						<div class="small-4 columns">
							<form:label path="comanyname" class="text-right middle">
								<spring:message code="form.company.name"/>
							</form:label>
						</div>
						<div  class="small-8 columns">
							<spring:message   code="form.subdivision.messagename" var="messagename"/>
							<form:errors path="comanyname" cssClass="twelve columns label alert" element="span"/>
							<form:input path="comanyname" placeholder="${messagename}"/>
						</div>
					</div>
					
					<div class="row">
						<div class="small-4 columns">
							<form:label path="idSubdivision" class="text-right middle">
								<spring:message code="form.subdivision.name"/>
							</form:label>
						</div>
						<div  class="small-8 columns">
							<form:select path="idSubdivision" items="${subdivisions}" itemValue="id" itemLabel="name"/>
						</div>
					</div>
					