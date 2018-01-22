package ua.kiev.softtouch.controllers.manager;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import ua.kiev.model.dao.DaoFactory;
import ua.kiev.softtouch.models.UserModel;
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
		model.addAttribute("user", new UserModel());
		initSubdivision(model, false);
		initRole(model);
		return "form-user-add";
	}
	
	@GetMapping(value = "edit/{id}")
	public String sedit(@PathVariable int id, Model model) {
		model.addAttribute("user", userService.byId(id));
		initRole(model);
		initSubdivision(model, false);
		return "form-user-edit";
	}
	
	private void initSubdivision(Model model, boolean disable) {
		model.addAttribute("companies", daoFactory.createCompanyDao().getResultList(disable));
	}
	
	private void initRole(Model model) {
		model.addAttribute("roles", daoFactory.createRolesDaoImpl().all());
	}
}

