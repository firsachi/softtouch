package ua.kiev.softtouch.controllers;

import java.util.Collection;

import org.springframework.security.core.Authentication;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import ua.kiev.softtouch.models.UserAutentificationModel;

@Controller
@RequestMapping(value = "navigator")
public class RouteController {
	
	@RequestMapping
	public String redirect(Authentication authentication) {
		UserAutentificationModel user =  (UserAutentificationModel) authentication.getPrincipal();
		Collection<?extends GrantedAuthority> granted = user.getAuthorities();
		GrantedAuthority role = (GrantedAuthority) granted.toArray()[0];
		if (role.getAuthority().equals("costumer") ) {
			return "redirect:cabinet";
		}else {
			return "redirect:/";
		}
		

	}

}
