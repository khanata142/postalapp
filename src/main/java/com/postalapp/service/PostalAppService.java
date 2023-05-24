package com.postalapp.service;

import org.springframework.web.servlet.ModelAndView;

public interface PostalAppService {

	public ModelAndView getPostalDetails(int pincode);

}
