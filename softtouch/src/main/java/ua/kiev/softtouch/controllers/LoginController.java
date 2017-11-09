package ua.kiev.softtouch.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import ua.kiev.softtouch.models.UserAutentificationModel;

@Controller
public class LoginController {

	@RequestMapping(value = "login")
	private String pageLogin(Model model) {
		model.addAttribute("user", new UserAutentificationModel());
		return "login";
	}
}
