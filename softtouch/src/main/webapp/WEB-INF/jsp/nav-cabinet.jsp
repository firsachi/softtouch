<%@ page pageEncoding="UTF-8"%>

			<div class="title-bar" data-responsive-toggle="responsive-menu" data-hide-for="medium">
  				<button class="menu-icon" type="button" data-toggle="responsive-menu"></button>
  				<div class="title-bar-title">Menu</div>
			</div>
	
			<nav class="top-bar topbar-responsive" id="responsive-menu">
				<div class="top-bar-left">
					<ul class="menu">
						<li style="color: #fefefe;" class="menu-text">${ costumer }</li>
					</ul>
				</div>
				<div class="top-bar-right">	
					<ul class="menu">
						<li><a href="cabinet">Програмне забезпечення</a></li>
						<li><a href="orders-client">Замовити</a></li>
						<li><a href="#">Профіль</a></li>
						<li><a class="hollow button warning" href="<c:url value="/logout" />">Вихід</a></li>
					</ul>
				</div>
			</nav>