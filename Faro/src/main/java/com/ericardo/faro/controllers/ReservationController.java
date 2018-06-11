package com.ericardo.faro.controllers;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.ericardo.faro.models.Guest;
import com.ericardo.faro.services.GuestService;
import com.ericardo.faro.services.ReservationService;

@Controller
@RequestMapping("/reservation")
public class ReservationController {

	@Autowired
	private ReservationService _rS;
	
	@Autowired
	private GuestService _gS;
	
	@RequestMapping("/list")
	public String list(Model _model) {
		
		_model.addAttribute("reservations", _rS.all());
		return "reservation";
	}
	
	@PostMapping("/guest")
	public String createGuest(@ModelAttribute("guest") Guest guest) {
		System.out.print("createGuest at _rC");
		
		_gS.create(guest);
		
		
		return "redirect:/reservation/list";
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
}
