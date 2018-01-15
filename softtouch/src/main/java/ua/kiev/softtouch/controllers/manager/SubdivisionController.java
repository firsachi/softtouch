package ua.kiev.softtouch.controllers.manager;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import ua.kiev.softtouch.models.SubdivisionModel;
import ua.kiev.softtouch.services.SubdivisionService;

@Controller
@RequestMapping(value = "manager/subdivision/")
public class SubdivisionController {
	
	@Autowired
	private SubdivisionService subdivisionService;
	
	@RequestMapping
	public String pageSubdivision(Model model) {
		model.addAttribute("subdivisions", subdivisionService.getDao().getAll());
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
	
	@GetMapping(value = "edit/{id}")
	public ModelAndView edit(@PathVariable int id) {
		ModelAndView model = new ModelAndView("form-subdivision-edit");
		model.addObject("subdivision", subdivisionService.biId(id));
		return model;
	}
	
	@RequestMapping(value = "update", method = RequestMethod.POST)
	public String update(@ModelAttribute("subdivision") @Valid SubdivisionModel subdivisionModel,
			BindingResult bindingResult
			) {
		if(bindingResult.hasErrors()) {
			return "form-subdivision-edit";
		}
		subdivisionService.update(subdivisionModel);
		return "redirect:/manager/subdivision/";
	}

}
