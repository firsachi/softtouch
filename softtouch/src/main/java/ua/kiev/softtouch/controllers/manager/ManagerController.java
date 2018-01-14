package ua.kiev.softtouch.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import ua.kiev.model.dao.DaoFactory;
import ua.kiev.model.dao.SubdivisionDao;

@Controller
@RequestMapping(value = "/manager")
public class ManagerController {
	
	@Autowired
	private DaoFactory daoFactory;
	
	@RequestMapping
	private String page(Model model) {
		SubdivisionDao subdivisionDao = daoFactory.createSubdivisionDao();
		model.addAttribute("subdivisions", subdivisionDao.getAll());
		return "manager";
	}

}
