package ua.kiev.softtouch.controllers.manager;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import ua.kiev.model.dao.DaoFactory;
import ua.kiev.softtouch.models.CompanyModel;
import ua.kiev.softtouch.services.CompanyService;
import ua.kiev.softtouch.validations.CpmpanyValidator;

@Controller
@RequestMapping(value = "manager/company/")
public class CompanyController {
	
	@Autowired
	private CompanyService companyService;
	
	@Autowired
	private CpmpanyValidator cpmpanyValidator;
	
	@Autowired
	private DaoFactory daoFactory;
	
	@RequestMapping
	@Transactional
	public String pageCompany(Model model) {
		model.addAttribute("companies", companyService.getDao().getResultList(false));
		return "company";
	}
	
	@RequestMapping(value = "add", method = RequestMethod.GET)
	public String add(Model model) {
		model.addAttribute("company", new CompanyModel());
		initSubdivision(model);
		return "form-company-add";
	}
	
	@RequestMapping(value = "save", method = RequestMethod.POST)
	public String submit(@ModelAttribute("company") @Valid CompanyModel companyModel,
						BindingResult errors, Model model) {
		cpmpanyValidator.validate(companyModel, errors);
		if (errors.hasErrors()) {
			initSubdivision(model);
			return "form-company-add";
		}
		companyService.create(companyModel);
		return "redirect:/manager/company/";
	}
	
	@GetMapping(value = "edit/{id}")
	public String edit(@PathVariable int id, Model model) {
		model.addAttribute("company", companyService.byId(id));
		initSubdivision(model);
		return "form-company-edit";
	}
	
	@RequestMapping(value = "update", method = RequestMethod.POST)
	public String update(@ModelAttribute("company") @Valid CompanyModel companyModel,
						BindingResult errors, Model model) {
		cpmpanyValidator.validate(companyModel, errors);
		if (errors.hasErrors()) {
			initSubdivision(model);
			return "form-company-edit";
		}
		companyService.update(companyModel);
		return "redirect:/manager/company/";
	}
	
	@GetMapping(value = "disable/{id}")
	public String disable(@PathVariable int id) {
		CompanyModel model = companyService.byId(id);
		companyService.disable(model);
		return "redirect:/manager/company/";
	}

	private void initSubdivision(Model model) {
		model.addAttribute("subdivisions", daoFactory.createSubdivisionDao().getAll());
	}
}
