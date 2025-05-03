package com.skilldistillery.fitnessclubs.Controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.skilldistillery.fitnessclubs.data.FitnessclubsDAO;

@Controller
public class FitnessClubController {
	
	@Autowired
	private FitnessclubsDAO gymdao;
	
	@RequestMapping(path= {"/", "home.do"})
	public String index(Model model) {
		model.addAttribute("gyms", gymdao.findAll());
		return "home";
	}
	

	

}
