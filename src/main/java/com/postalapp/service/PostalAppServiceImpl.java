package com.postalapp.service;

import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Service;
import org.springframework.web.client.RestTemplate;
import org.springframework.web.servlet.ModelAndView;
import com.postalapp.entities.PostalDetails;

@Service
public class PostalAppServiceImpl implements PostalAppService {

	@Override
	public ModelAndView getPostalDetails(int pincode) {
		String url = "https://api.postalpincode.in/pincode/" + pincode;
		RestTemplate restTemplate = new RestTemplate();
		ResponseEntity<PostalDetails[]> responseEntity = restTemplate.getForEntity(url, PostalDetails[].class);
		PostalDetails[] postalDetailsArray = responseEntity.getBody();
		PostalDetails postalDetails = postalDetailsArray[0];// Array which contains only one object of type Postal
															// Details
		ModelAndView mv = new ModelAndView();
		mv.addObject("postalDetails", postalDetails);
		if (!postalDetails.getStatus().equals("Error")) {
			mv.setViewName("postOfficeDetail");
		} else {
			mv.setViewName("postOfficeNotFound");
		}
		return mv;
	}

}
