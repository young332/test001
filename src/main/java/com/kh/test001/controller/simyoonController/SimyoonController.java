package com.kh.test001.controller.simyoonController;

import java.util.Locale;


import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import lombok.extern.log4j.Log4j;

@Controller
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
