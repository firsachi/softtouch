<%@ page pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

					<form:hidden path="id"/>

					<!-- firstname -->
					<div class="row">
						<div class="small-4 columns">
							<form:label path="firstname" class="text-right middle">
								<spring:message code="inputs.firstname"/>
							</form:label>
						</div>
						<div  class="small-8 columns">
							<spring:message   code="message.firstname" var="messagename"/>
							<form:errors path="firstname" cssClass="twelve columns label alert" element="span"/>
							<form:input path="firstname" placeholder="${messagename}"/>
						</div>
					</div>
					<!-- lastname -->
					<div class="row">
						<div class="small-4 columns">
							<form:label path="lastname" class="text-right middle">
								<spring:message code="inputs.lastname"/>
							</form:label>
						</div>
						<div  class="small-8 columns">
							<spring:message   code="message.lastname" var="messagename"/>
							<form:errors path="lastname" cssClass="twelve columns label alert" element="span"/>
							<form:input path="lastname" placeholder="${messagename}"/>
						</div>
					</div>
					
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
							<form:input path="password" placeholder="${messagename}"/>
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
							<spring:message   code="form.subdivision.messagename" var="messagename"/>
							<form:errors path="repeatPassword" cssClass="twelve columns label alert" element="span"/>
							<form:input path="repeatPassword" placeholder="${messagename}"/>
						</div>
					</div>
					
					<!-- subdivision -->
					<div class="row">
						<div class="small-4 columns">
							<form:label path="idSubdivision" class="text-right middle">
								<spring:message code="inputs.subdivision"/>
							</form:label>
						</div>
						<div  class="small-8 columns">
							<spring:message   code="form.subdivision.messagename" var="messagename"/>
							<form:errors path="idSubdivision" cssClass="twelve columns label alert" element="span"/>
							<form:select path="idSubdivision" items="${companies}" itemValue="id" itemLabel="comapanyName"/>
						</div>
					</div>
					
					<!-- role -->
					<div class="row">
						<div class="small-4 columns">
							<form:label path="idRole" class="text-right middle">
								<spring:message code="inputs.role"/>
							</form:label>
						</div>
						<div  class="small-8 columns">
							<spring:message   code="form.subdivision.messagename" var="messagename"/>
							<form:errors path="idRole" cssClass="twelve columns label alert" element="span"/>
							<form:select path="idRole" items="${subdivisions}" itemValue="id" itemLabel="name"/>
						</div>
					</div>
					