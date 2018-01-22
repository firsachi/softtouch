<%@ page pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
					<div class="title-bar hide-for-large" data-responsive-toggle="responsive-menu">
						<div class="title-bar-left">
							<button class="menu-icon" type="button" data-open="my-info" aria-expanded="false" aria-controls="my-info"></button>
							<span class="title-bar-title">Mike Mikerson</span>
						</div>
						
						
							<ul class="menu align-right">
								<li>
									<a class="button" href="<c:url value="/logout" />">Вихід</a>
								</li>
							</ul>
											
					</div>

					<div class="title-manager top-bar" id="responsive-menu">
						<div class="top-bar-left">
						</div>
						<div class="top-bar-right">
							<ul class="menu align-right">
								<li>
									<a class="button" href="<c:url value="/logout" />">Вихід</a>
								</li>
							</ul>
						</div>
					</div>
										