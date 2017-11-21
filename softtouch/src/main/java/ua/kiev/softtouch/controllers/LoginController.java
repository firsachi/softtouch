package ua.kiev.softtouch.controllers;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.web.authentication.logout.SecurityContextLogoutHandler;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import ua.kiev.softtouch.models.UserAutentificationModel;

@Controller
public class LoginController {

	@RequestMapping(value = "login")
	private String pageLogin(Model model) {
		model.addAttribute("user", new UserAutentificationModel());
		return "login";
	}
	
	@RequestMapping(value = "/logout", method = RequestMethod.GET)
    public String logoutPage(HttpServletRequest request, HttpServletResponse response){
    	Authentication auth = SecurityContextHolder.getContext().getAuthentication();
    	if (auth != null){    
            new SecurityContextLogoutHandler().logout(request, response, auth);
        }
    	return "redirect:/softtouch";
    }
}
