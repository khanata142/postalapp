package com.postalapp.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.postalapp.service.PostalAppService;

@Controller
public class PostalAppController {

	@Autowired
	PostalAppService postalAppService;

	@RequestMapping("/")
	public String showHome() {
		return "index";
	}

	@RequestMapping(value = "/getdetails", method = RequestMethod.POST)
	public ModelAndView getPostalDetails(@RequestParam("pincode") int pincode) {
		return postalAppService.getPostalDetails(pincode);
	}

	@ExceptionHandler(Exception.class)
	public ModelAndView exceptionHandler(Exception e) {
		ModelAndView mv = new ModelAndView();
		mv.addObject("message", e.getMessage());
		mv.setViewName("exceptionPage");
		return mv;
	}

}
