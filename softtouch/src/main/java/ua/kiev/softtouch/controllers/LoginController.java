package ua.kiev.softtouch.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class LoginController {

	@RequestMapping(value = "login")
	private String pageLogin(Model model) {
		return "login";
	}
}
