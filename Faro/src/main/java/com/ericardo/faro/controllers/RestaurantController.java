package com.ericardo.faro.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.ericardo.faro.services.RestaurantService;

@Controller
@RequestMapping("/restaurant/")
public class RestaurantController {
	
	@Autowired
	private RestaurantService _rR;
	
	
	
	
}
