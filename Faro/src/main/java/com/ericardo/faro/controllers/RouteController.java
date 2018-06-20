package com.ericardo.faro.controllers;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.ericardo.faro.services.AdminService;

@Controller
@RequestMapping("/**")
public class RouteController {

	@Autowired
	private AdminService _aS;
	
	/************ ROUTE THAT TAKES YOU HOME OR DASHBOARD IF ADMIN IS IN SESSION **************/

	@RequestMapping("")
	public String index(HttpServletRequest _request, HttpSession _session, Model _model) {
		if(_session.getAttribute("id") == null) {
			
			System.out.println("landing page on _rC1 ");
			return "index";
		} else {
			return "redirect:/restaurant/dashboard";
		}
	}
	
}
