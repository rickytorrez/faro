package com.ericardo.faro.controllers;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.ericardo.faro.models.Guest;
import com.ericardo.faro.models.Reservation;
import com.ericardo.faro.services.AdminService;
import com.ericardo.faro.services.ReservationService;

@Controller
@RequestMapping("/**")
public class RouteController {

	@Autowired
	private AdminService _aS;
	
	@Autowired
	private ReservationService _rS;
	
	/************ ROUTE THAT TAKES YOU HOME OR DASHBOARD IF ADMIN IS IN SESSION **************/

	@RequestMapping("")
	public String index(HttpServletRequest _request, HttpSession _session, Model _model, @ModelAttribute("guest") Guest guest, @ModelAttribute("reservation") Reservation reservation) {
		if(!_aS.isValid(_session)) {
			_model.addAttribute("reservations", _rS.all());
			System.out.println("landing page on _rC; ");
			return "index";
		} else {
			return "redirect:/restaurant/dashboard";
		}
	}
	
}
