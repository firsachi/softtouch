package ua.kiev.softtouch.controllers.manager;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import ua.kiev.model.dao.DaoFactory;
import ua.kiev.softtouch.models.FullUserModel;
import ua.kiev.softtouch.services.UserService;

@Controller
@RequestMapping(value = "manager/users/")
public class UserController {
	
	@Autowired
	private UserService userService;
	
	@Autowired
	private DaoFactory daoFactory;

	@RequestMapping
	public String usersPage(Model model) {
		model.addAttribute("users", userService.getAll());
		return "users";
	}
	
	@RequestMapping(value = "add")
	public String submit(Model model) {
		model.addAttribute("user", new FullUserModel());
		initSubdivision(model, false);
		return "form-user-add";
	}
	
	private void initSubdivision(Model model, boolean disable) {
		model.addAttribute("companies", daoFactory.createCompanyDao().getResultList(disable));
	}
}

