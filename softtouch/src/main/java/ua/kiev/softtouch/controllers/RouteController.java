package ua.kiev.softtouch.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping(value = "navigator")
public class RouteController {
	
	@RequestMapping
	public String redirect() {
	    return "redirect:cabinet";
	}

}
