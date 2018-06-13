package com.ericardo.faro.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.ericardo.faro.models.Booking;
import com.ericardo.faro.services.BookingService;

@Controller
@RequestMapping("/booking")
public class BookingController {

	@Autowired
	private BookingService _bS;
	
	@RequestMapping("/new")
	public String create(@ModelAttribute("booking") Booking booking) {
		
		_bS.create(booking);
		
		return "null";
	}
	
}
