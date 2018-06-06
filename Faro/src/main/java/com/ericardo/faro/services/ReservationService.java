package com.ericardo.faro.services;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ericardo.faro.models.Reservation;
import com.ericardo.faro.repositories.ReservationRepository;

@Service
public class ReservationService {
	
	@Autowired
	private ReservationRepository _rR;
	
	/************************************ STANDARD CRUD **************************************/
	
	public void create(Reservation reservation) {
		_rR.save(reservation);
	}
	
	public Reservation find(Long id) {
		return (Reservation) _rR.findOne(id);
	}

	public void update(Reservation reservation) {
		_rR.save(reservation);
	}
	
	public void destroy(Long id) {
		_rR.delete(id);
	}
	
	public ArrayList<Reservation> all(){
		return (ArrayList<Reservation>) _rR.findAll();
	}
}
