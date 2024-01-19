package com.kh.test01.controller.simyoonController;

import java.util.Locale;

import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

public class SimyoonController {

	@RequestMapping(value = "/", method = RequestMethod.GET, produces = "text/plain;charset=utf-8")
	public String home(Locale locale, Model model) {

        
        String myName = "김심윤"; 
        String engName = "KIMSIMYOON";

        
        model.addAttribute("myName", myName);
        model.addAttribute("engName", engName);

        
        return "register";
		   
	}

}
