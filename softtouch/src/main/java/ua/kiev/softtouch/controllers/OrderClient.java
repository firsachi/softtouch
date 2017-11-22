package ua.kiev.softtouch.controllers;

import org.springframework.security.core.Authentication;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import ua.kiev.softtouch.models.UserAutentificationModel;

@Controller
@RequestMapping(value = "orders-client")
public class OrderClient {
	
	@RequestMapping
	private String pageCabinet(Model model, Authentication authentication) {
		UserAutentificationModel user =  (UserAutentificationModel) authentication.getPrincipal();
		model.addAttribute("costumer", user.getCompanyName());
		return "orders-client";
	}

}
