package com.skilldistillery.fitnessclubs.Controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.skilldistillery.fitnessclubs.data.FitnessclubsDAO;
import com.skilldistillery.fitnessclubs.entities.AuroraGym;

@Controller
public class FitnessClubController {

	@Autowired
	private FitnessclubsDAO gymdao;

	@RequestMapping(path = { "/", "home.do" })
	public String index(Model model) {
		model.addAttribute("gyms", gymdao.findAll());
		System.out.println(gymdao.findAll());
		return "home";

	}

	@RequestMapping(path = "getGym.do", method = RequestMethod.GET)
	public ModelAndView getGym(@RequestParam("gymId") int gymId) {
		ModelAndView mv = new ModelAndView();
		System.out.println(gymId);
		AuroraGym gym = gymdao.findById(gymId);

		mv.addObject("gym", gym);
		mv.setViewName("gym/showgym");
		return mv;
	}
	
	@RequestMapping(path = "showGyms.do", method = RequestMethod.GET)
	public ModelAndView showGyms() {
		ModelAndView mv = new ModelAndView();
		List<AuroraGym> gyms = gymdao.findAll();

		mv.addObject("gyms", gyms);
		mv.setViewName("gym/showallgyms");
		return mv;
	}
	
	@RequestMapping(path = "selectAddGym.do", method = RequestMethod.GET)
	public ModelAndView selectAddGym() {
		
		return new ModelAndView("gym/addgym");
	}
	
	@RequestMapping(path = "addGym.do", method = RequestMethod.POST)
	public ModelAndView addGym(Model model,  AuroraGym gym) {
		AuroraGym addGym = gymdao.addGym(gym);
		
		return showGyms();
	}
	
	@RequestMapping(path = "deleteGym.do", method = RequestMethod.GET)
	public ModelAndView deleteGym(@RequestParam("gymId") int gymId) {
		ModelAndView mv = new ModelAndView();
		System.out.println(gymId);
		 gymdao.deleteById(gymId);

		 return showGyms();
	}
	
	@RequestMapping(path = "selectUpdateGym.do", method = RequestMethod.GET)
	public ModelAndView selectUpdateGym(@RequestParam("gymId") int gymId) {
		ModelAndView mv = new ModelAndView();
		AuroraGym gym = gymdao.findById(gymId);

		mv.addObject("gym", gym);
		mv.setViewName("gym/updategym");
		return mv;
	}
	
	@RequestMapping(path = "updateGym.do", method = RequestMethod.POST)
	public ModelAndView updateGym(Model model,  AuroraGym gym) {
		System.out.println("gymid to update" + gym.getId() );
		AuroraGym addGym = gymdao.updateGym(gym);
		
		return showGyms();
	}
}	

