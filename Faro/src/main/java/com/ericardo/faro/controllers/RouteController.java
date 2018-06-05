package com.ericardo.faro.controllers;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.ericardo.faro.services.RestaurantService;

@Controller
@RequestMapping("/**")
public class RouteController {

	@Autowired
	private RestaurantService _rR;
	
	/************ ROUTE THAT TAKES YOU HOME OR DASHBOARD IF ADMIN IS IN SESSION **************/

	@RequestMapping("")
	public String index(HttpServletRequest _request, HttpSession _session) {
		if(!_rR.isValid(_session)) {
			return "home";
		} else {
			return "redirect:/restaurant/dashboard";
		}
	}
	
}
