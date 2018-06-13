package com.ericardo.faro.services;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ericardo.faro.models.Booking;
import com.ericardo.faro.repositories.BookingRepository;

@Service
public class BookingService {

	@Autowired
	private BookingRepository _bR;

	public void create(Booking booking) {
		_bR.save(booking);
	}
	
	public Booking find(Long id) {
		return (Booking) _bR.findOne(id);
	}

	public void update(Booking booking) {
		_bR.save(booking);
	}
	
	public void destroy(Long id) {
		_bR.delete(id);
	}
	
	public ArrayList<Booking> all(){
		return (ArrayList<Booking>) _bR.findAll();
	}
}
