<%@ page pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
					<hr>
					<div class="small-12 column row">
						<div class="small-12 columns">
						
							<div class="expanded button-group">
								<a class="hollow button" href="<c:out value="${urlback}"/>">
									<spring:message code="buttons.back" />
								</a>
								<button type="reset" class="hollow button">
									<spring:message code="buttons.reset" />
								</button>
								<button type="submit" class="hollow button">
									<spring:message code="buttons.submit"/>
								</button>
							</div>
						</div>
					</div>
			