package com.ericardo.faro.controllers;

import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.ericardo.faro.models.Admin;
import com.ericardo.faro.models.Reservation;
import com.ericardo.faro.services.AdminService;
import com.ericardo.faro.services.ReservationService;

@Controller
@RequestMapping("/reservation")
public class ReservationController {

	@Autowired
	private ReservationService _rS;
	
	@Autowired
	private AdminService _aS;

	/********************* METHOD TO CREATE A NEW AVAILABLE RESERVATION **********************/
	
	@PostMapping("/new")
	public String createReservation(@Valid @ModelAttribute("reservation") Reservation reservation, BindingResult _result, HttpSession _session, RedirectAttributes _flash ) {
		if(_session.getAttribute("id") == null) {
			return "redirect:/";
		}
		Admin admin = _aS.find( (Long) _session.getAttribute("id"));
		if(_result.hasErrors()) {
			_flash.addAttribute("error", _result.getAllErrors());
			return "/restaurant/dashboard";
		} else {
			System.out.println("Creating Reservation on _rC");
			reservation.setAdmin(admin);
			System.out.println("Admin ID: ");
			System.out.println(admin);
			_rS.create(reservation);
			return "redirect:/restaurant";
		} 
	}
	
}
