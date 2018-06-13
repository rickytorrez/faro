package com.ericardo.faro.controllers;

import java.util.Date;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.ericardo.faro.models.Booking;
import com.ericardo.faro.services.BookingService;

@Controller
@RequestMapping("/booking")
public class BookingController {

	@Autowired
	private BookingService _bS;
	
	@RequestMapping("/new")
	public String createBooking(
			@RequestParam("firstName") String firstName,
			@RequestParam("lastName") String lastName,
			@RequestParam("email") String email,
			@RequestParam("sizeOfParty") Integer sizeOfParty,
			@RequestParam("phone") Long phone,
			@RequestParam("date") Date date,
			@RequestParam("time") String time,
			@RequestParam("message") String message
			) {
		
		
		return "null";
	}
	
}
