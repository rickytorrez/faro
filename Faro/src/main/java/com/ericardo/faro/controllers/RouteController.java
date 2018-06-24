package com.ericardo.faro.controllers;


import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class RouteController {

	/************ ROUTE THAT TAKES YOU HOME OR DASHBOARD IF ADMIN IS IN SESSION **************/

	@RequestMapping("/*")
	public String landingPage() {
		System.out.print("");
		return "index";

	}
	
}
