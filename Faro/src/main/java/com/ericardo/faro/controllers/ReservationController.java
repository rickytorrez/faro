package com.ericardo.faro.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
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
	public String reservationList(Model _model) {
		
		_model.addAttribute("reservations", _rS.all());
		return "reservation";
	}

	@PostMapping("/new")
	public String newReservation(@PathVariable("id") Long id, @ModelAttribute("guest") Guest guest ) {
		return "/null";
	}
	
}
