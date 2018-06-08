package com.ericardo.faro.controllers;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.ericardo.faro.models.Admin;
import com.ericardo.faro.models.Reservation;
import com.ericardo.faro.services.AdminService;
import com.ericardo.faro.services.ReservationService;

@Controller
@RequestMapping("/restaurant/")
public class AdminController {
	
	@Autowired
	private AdminService _aS;
	
	@Autowired
	private ReservationService _rS;
	
	/******************************** LOG IN ROUTE FOR ADMIN *********************************/

	@RequestMapping("/login")
	public String logAdmin(@ModelAttribute("admin") Admin admin, HttpSession _session) {
		_aS.logout(_session);
		return "adminLogin";
	}

	/****************************** POSTING A NEW ADMIN TO DB ********************************/
	@PostMapping("/newAdmin")
	public String createAdmin(@Valid @ModelAttribute("admin") Admin admin, BindingResult _result, RedirectAttributes _flash, HttpSession _session) {
		if(_result.hasErrors()) {
			_flash.addFlashAttribute("error", _result.getAllErrors());
			return "adminLogin";
		} else {
			Admin _exists = _aS.findByEmail(admin.getEmail());
			
			if(_exists == null) {
				Admin _admin = _aS.create(admin);
				_aS.login(_session, _admin.getId());
				return "redirect:/restaurant/dashboard";
			} else {
				_flash.addFlashAttribute("error", "An admin with this e-mail already exists.");
				return "redirect:/restaurant/login";
			}
		}
	}
	
	/******************************* LOGIN IN AN ADMIN TO APP ********************************/
	@PostMapping("/loginAdmin")
	public String loginAdmin(@RequestParam("email") String email, @RequestParam("password") String password, HttpSession _session, RedirectAttributes _flash) {
		if(email.length() <1) {
			_flash.addFlashAttribute("error", "Email cannot be blank.");
			return "redirect:/restaurant/login";
		} 
		
		Admin admin = _aS.findByEmail(email);
		
		if(admin == null) {
			_flash.addFlashAttribute("error", "No admin with this email was found.");
			return "redirect:/restaurant/login";
		} else {
			if(_aS.isMatch(password, admin.getPassword())) {
				_aS.login(_session, admin.getId());
				return "redirect:/restaurant/dashboard";
			} else {
				_flash.addFlashAttribute("error", "Invalid Credentials");
				
				return "redirect:/restaurant/login";
			}
		}
	}

	/********************************** LOGOUT AN ADMIN **************************************/
	
	@RequestMapping("/logout")
	public String logoutAdmin(HttpSession _session) {
		_session.setAttribute("id", null);
		return "redirect:/restaurant/login";
	}
	
	/********************************** ADMIN DASHBOARD **************************************/
	
	@RequestMapping("/dashboard")
	public String adminDashboard(HttpSession _session, Model _model) {
		if(_session.getAttribute("id") == null) {
			return "redirect:/";
		} 
		
		Admin admin = _aS.find( (Long) _session.getAttribute("id"));
		_model.addAttribute("admin", admin);
		_model.addAttribute("reservations", _rS.all());
		return "adminDashboard";
		
	}
	
	/********************* METHOD TO CREATE A NEW AVAILABLE RESERVATION  **********************/
	
	@PostMapping("/newReservation")
	public String createReservation(HttpSession _session, RedirectAttributes _flash,
			@RequestParam("day") String day, 
			@RequestParam("time") String time) throws ParseException{
		if(_session.getAttribute("id") == null) {
			return "redirect:/";
		}
		
		Admin admin = _aS.find( (Long) _session.getAttribute("id"));
		Reservation reservation = new Reservation();
		
			// Gets the date
			SimpleDateFormat parser = new SimpleDateFormat("yyyy-mm-dd");
			
			Date date = parser.parse(day);
			// Formats it to the app needs
			SimpleDateFormat formatter = new SimpleDateFormat("EEEE MMMM dd, yyyy");
			String newDate = formatter.format(date);
			
			reservation.setAdmin(admin);
			reservation.setDay(newDate);
			reservation.setTime(time);
			_rS.create(reservation);
			return "redirect:/restaurant/dashboard";
		}
}