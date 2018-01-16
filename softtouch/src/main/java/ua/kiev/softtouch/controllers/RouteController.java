package ua.kiev.softtouch.controllers;

import org.springframework.security.core.Authentication;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping(value = "navigator")
public class RouteController {
	
	//@PreAuthorize("hasAuthority('COSTYMER')")
	@RequestMapping
	public String cabinet(Authentication authentication) {
		;
		for(GrantedAuthority grantedAuthority: authentication.getAuthorities()) {
			if(grantedAuthority.getAuthority().equals("COSTYMER")) {
				return "redirect:cabinet";
			}
			else if (grantedAuthority.getAuthority().equals("MANAGER")) {
				return "redirect:manager";
			}
		}
		return "redirect:/";
		
	}

}
