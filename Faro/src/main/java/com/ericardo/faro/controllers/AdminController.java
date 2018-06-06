package com.ericardo.faro.controllers;

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

@Controller
@RequestMapping("/restaurant/")
public class AdminController {
	
	@Autowired
	private AdminService _aR;
	
	/******************************** LOG IN ROUTE FOR ADMIN *********************************/

	@RequestMapping("/login")
	public String logAdmin(@ModelAttribute("admin") Admin admin, HttpSession _session) {
		_aR.logout(_session);
		return "adminLogin";
	}

	/****************************** POSTING A NEW ADMIN TO DB ********************************/
	@PostMapping("/newAdmin")
	public String createAdmin(@Valid @ModelAttribute("admin") Admin admin, BindingResult _result, RedirectAttributes _flash, HttpSession _session) {
		if(_result.hasErrors()) {
			_flash.addFlashAttribute("error", _result.getAllErrors());
			return "adminLogin";
		} else {
			Admin _exists = _aR.findByEmail(admin.getEmail());
			
			if(_exists == null) {
				Admin _admin = _aR.create(admin);
				_aR.login(_session, _admin.getId());
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
		
		Admin admin = _aR.findByEmail(email);
		
		if(admin == null) {
			_flash.addFlashAttribute("error", "No admin with this email was found.");
			return "redirect:/restaurant/login";
		} else {
			if(_aR.isMatch(password, admin.getPassword())) {
				_aR.login(_session, admin.getId());
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
	public String adminDashboard(HttpSession _session, Model _model, @ModelAttribute("reservation") Reservation reservation ) {
		if(_session.getAttribute("id") == null) {
			return "redirect:/";
		} 
		
		Admin admin = _aR.find( (Long) _session.getAttribute("id"));
		_model.addAttribute("admin", admin);
		return "adminDashboard";
		
	}
	
}
