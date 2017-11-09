package ua.kiev.softtouch.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping(value = "/manager")
public class ManagerController {
	
	@RequestMapping
	private String page(Model model) {
		return "manager";
	}

}
