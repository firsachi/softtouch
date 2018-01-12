package ua.kiev.softtouch.controllers;

import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping(value = "navigator")
public class RouteController {
	
	@PreAuthorize("hasAuthority('MANAGER')")
	@RequestMapping
	public String redirect() {
		return "redirect:manager";
	}

}
