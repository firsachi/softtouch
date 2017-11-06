package ua.kiev.softtouch.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping(value = "/cabinet")
public class CabinetController {
	
	@RequestMapping
	private String pageCabinet(Model model) {
		return "cabinet";
	}

}
