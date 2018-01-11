package ua.kiev.softtouch.controllers;

import java.text.DateFormat;
import java.util.Date;
import java.util.List;
import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import ua.kiev.model.dao.DaoFactory;
import ua.kiev.model.dao.RoleDao;
import ua.kiev.model.dao.SubdivisionDao;
import ua.kiev.model.entities.Role;
import ua.kiev.model.entities.RoleEnum;
import ua.kiev.model.entities.Subdivision;
import ua.kiev.softtouch.models.UserAutentificationModel;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	@Autowired
	private DaoFactory daoFactory;
	
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/", method = RequestMethod.GET)
	@Transactional
	public String home(Locale locale, Model model) { 
		logger.info("Welcome home! The client locale is {}.", locale);
		
		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
		RoleDao roleDao = daoFactory.createRolesDaoImpl();
		
		if (0 == roleDao.all().size()) {
			for (RoleEnum value : RoleEnum.values()) {
				roleDao.create(new Role(value));
			}
		}
		
		String formattedDate = dateFormat.format(date);
		
		model.addAttribute("users", null);
		model.addAttribute("serverTime", formattedDate );
		model.addAttribute("user", new UserAutentificationModel());
		SubdivisionDao subdivisionDao = daoFactory.createSubdivisionDao();
		model.addAttribute("subdivisions", subdivisionDao.getAll());
		return "home";
	}
	
}
