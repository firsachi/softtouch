<%@ page pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

				<div class="off-canvas left-panel position-left reveal-for-large" id="my-info" data-off-canvas="" data-position="left" aria-hidden="true" data-offcanvas="3rv0tb-offcanvas">	
					<div class="row column">
					<br>
					<ul class="vertical menu">
						<li>
							<a href="/softtouch/manager/"><spring:message code="menu.manager"/></a>
						</li>
						<li>
							<a href="/softtouch/manager/users/">
								<spring:message code="menu.manager.user"/>
							</a>
						</li>
						<li>
							<a href="/softtouch/manager/company/">
								<spring:message code="menu.manager.company"/>
							</a>
						</li>
						<li>
							<a href="/softtouch/manager/subdivision/">
								<spring:message code="menu.manager.subdivision"/>
							</a>
						</li>
					</ul>
					</div>
				</div>
					
			