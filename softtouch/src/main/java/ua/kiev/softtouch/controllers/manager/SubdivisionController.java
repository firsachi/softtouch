package ua.kiev.softtouch.controllers.manager;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import ua.kiev.model.dao.DaoFactory;
import ua.kiev.model.dao.SubdivisionDao;
import ua.kiev.softtouch.models.SubdivisionModel;
import ua.kiev.softtouch.services.SubdivisionService;

@Controller
@RequestMapping(value = "manager/subdivision/")
public class SubdivisionController {
	
	@Autowired
	private DaoFactory daoFactory;
	
	@Autowired
	private SubdivisionService subdivisionService;
	
	@RequestMapping
	public String pageSubdivision(Model model) {
		SubdivisionDao subdivisionDao = daoFactory.createSubdivisionDao();
		model.addAttribute("subdivisions", subdivisionDao.getAll());
		return "subdivision";
	}
	
	@RequestMapping(value = "add")
	public ModelAndView addSubdivision() {
		ModelAndView model = new ModelAndView();
		model.setViewName("form-subdivision-add");
		model.addObject("subdivision", new SubdivisionModel());
		return model;
	}
	
	@RequestMapping(value = "save", method = RequestMethod.POST)
	public String submit(@ModelAttribute("subdivision") @Valid SubdivisionModel subdivisionModel,
			BindingResult bindingResult
			) {
		if(bindingResult.hasErrors()) {
			return "form-subdivision-add";
		}
		subdivisionService.save(subdivisionModel);
		return "redirect:/manager/subdivision/";
	}

}
