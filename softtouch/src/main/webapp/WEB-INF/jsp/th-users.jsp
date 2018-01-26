<%@ page pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

							<tr>
								<th><spring:message code="table.number"/></th>
								<th><spring:message code="table.username"/></th>
								<th><spring:message code="table.namecompany"/></th>
								<th><spring:message code="table.role"/></th>
								<th>
									<ul class="menu float-right">
										<li><a class="hollow button tiny fi-plus" href="add"></a></li>
									</ul>
								</th>
							</tr>
					