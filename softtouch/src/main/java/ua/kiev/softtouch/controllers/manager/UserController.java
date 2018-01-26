package ua.kiev.softtouch.controllers.manager;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.authentication.encoding.Md5PasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.Validator;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import ua.kiev.model.dao.DaoFactory;
import ua.kiev.softtouch.models.UserModel;
import ua.kiev.softtouch.services.UserService;

@Controller
@RequestMapping(value = "manager/users/")
public class UserController {
	
	@Autowired
	private Validator userValidation;
	
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
	public String add(Model model) {
		model.addAttribute("user", new UserModel());
		fillModel(model, false);
		return "form-user-add";
	}
	
	@RequestMapping(value = "save", method = RequestMethod.POST)
	public String saveUser(
			@ModelAttribute("user") @Valid UserModel userModel,
			BindingResult bindingResult, Model model) {
		userModel.setId(0);
		userValidation.validate(userModel, bindingResult);
		if(bindingResult.hasErrors()) {
			fillModel(model, false);
			return "form-user-add";
		}
		userService.save(userModel);
		return "redirect:/manager/users/";
	}
	
	@GetMapping(value = "edit/{id}")
	public String sedit(@PathVariable int id, Model model) {
		model.addAttribute("user", userService.byId(id));
		fillModel(model, false);
		return "form-user-edit";
	}
	
	@RequestMapping(value = "update", method = RequestMethod.POST)
	private String update(@ModelAttribute("user") @Valid UserModel userModel, 
			BindingResult bindingResult, Model model) {
		UserModel tmp = userService.byId(userModel.getId());
		userModel.setPassword(tmp.getPassword());
		userModel.setRepeatPassword(tmp.getPassword());
		userModel.setDisable(tmp.isDisable());
		userValidation.validate(userModel, bindingResult);
		if(bindingResult.hasErrors()) {
			fillModel(model, false);
			return "form-user-edit";
		}
		userService.update(userModel);
		return "redirect:/manager/users/";
	}
	
	@RequestMapping(value = "updatepass", method = RequestMethod.POST)
	private String updatePassword(@ModelAttribute("user") @Valid UserModel userModel, 
			BindingResult bindingResult, Model model) {
		UserModel tmp = userService.byId(userModel.getId());
		userModel.setLastname(tmp.getLastname());
		userModel.setFirstname(tmp.getFirstname());
		userModel.setUsername(tmp.getUsername());
		userModel.setIdCompany(tmp.getIdCompany());
		userModel.setIdRole(tmp.getIdRole());
		userModel.setDisable(tmp.isDisable());
		userValidation.validate(userModel, bindingResult);
		if(bindingResult.hasErrors()) {
			fillModel(model, false);
			return "form-user-edit";
		}
		Md5PasswordEncoder md = new Md5PasswordEncoder();
		userModel.setPassword(md.encodePassword(userModel.getPassword(), null));
		userService.update(userModel);
		return "redirect:/manager/users/";
	}
	
	@GetMapping(value = "disable/{id}")
	public String disable(@PathVariable int id) {
		UserModel model = userService.byId(id);
		model.setDisable(true);
		userService.update(model);
		return "redirect:/manager/users/";
	}
	
	@GetMapping(value = "enable/{id}")
	public String enamble(@PathVariable int id) {
		UserModel model = userService.byId(id);
		model.setDisable(false);
		userService.update(model);
		return "redirect:/manager/users/";
	}
	
	private void fillModel(Model model, boolean disable) {
		model.addAttribute("companies", daoFactory.createCompanyDao().getResultList(disable));
		model.addAttribute("roles", daoFactory.createRolesDaoImpl().all());
	}
}

