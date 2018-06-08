package com.ericardo.faro.services;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ericardo.faro.models.Guest;
import com.ericardo.faro.repositories.GuestRepository;

@Service
public class GuestService {

	@Autowired
	private GuestRepository _gR;
	
	/************************************ STANDARD CRUD **************************************/
	
	public void create(Guest guest) {
		_gR.save(guest);
	}
	
	public Guest find(Long id) {
		return (Guest) _gR.findOne(id);
	}
	
	public void update(Guest guest) {
		_gR.save(guest);
	}
	
	public void destroy(Long id) {
		_gR.delete(id);
	}
	
	public ArrayList<Guest> all(){
		return (ArrayList<Guest>) _gR.findAll();
	}
}
