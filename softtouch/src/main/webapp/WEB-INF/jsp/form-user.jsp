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
					
					<!-- login -->
					<div class="row">
						<div class="small-4 columns">
							<form:label path="username" class="text-right middle">
								<spring:message code="inputs.login"/>
							</form:label>
						</div>
						<div  class="small-8 columns">
							<spring:message   code="message.login" var="messagename"/>
							<form:errors path="username" cssClass="twelve columns label alert" element="span"/>
							<form:input path="username" placeholder="${messagename}"/>
						</div>
					</div>
					
					<!-- company -->
					<div class="row">
						<div class="small-4 columns">
							<form:label path="idCompany" class="text-right middle">
								<spring:message code="inputs.subdivision"/>
							</form:label>
						</div>
						<div  class="small-8 columns">
							<spring:message   code="form.subdivision.messagename" var="messagename"/>
							<form:errors path="idCompany" cssClass="twelve columns label alert" element="span"/>
							<form:select path="idCompany" items="${companies}" itemValue="id" itemLabel="comapanyName"/>
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
							<form:select path="idRole" items="${roles}" itemValue="id" itemLabel="nameRole">	
							</form:select>
						</div>
					</div>
					