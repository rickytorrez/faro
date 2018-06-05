package com.ericardo.faro.services;

import javax.servlet.http.HttpSession;

import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;

import com.ericardo.faro.models.Restaurant;
import com.ericardo.faro.repositories.RestaurantRepository;

@Service
public class RestaurantService {

	private RestaurantRepository _rR;
	private BCryptPasswordEncoder _bcrypt;
	
	public RestaurantService(RestaurantRepository _rR) {
		this._rR = _rR;
		this._bcrypt = encoder();
	}
	
	/********************************** INSTANCE OF BCRYPT ***********************************/

	public BCryptPasswordEncoder encoder() {
		return new BCryptPasswordEncoder();
	}
	
	/************************ TAKES PW FROM AND MATCHES IT TO DB_PW **************************/
	
	public boolean isMatch(String password, String dbPassword) {
		if(_bcrypt.matches(password, dbPassword)) {
			return true;
		} else {
			return false;
		}
	}
	
	/**************** USE SESSION TO STORE ADMIN_ID OF THE PERSON LOGGED IN ******************/
	
	public void login(HttpSession _session, Long id) {
		_session.setAttribute("id", id);
	}
	
	/****************************** KICKS ADMIN OUT OF SESSION *******************************/
	
	public void logout(HttpSession _session) {
		_session.setAttribute("id", null);
	}

	/****************************** ROUTES ADMIN TO LOG IN PAGE ******************************/
	
	public String redirect() {
		return "redirect:/admin/login";
	}
	
	/************************* COMPARES TO SEE IF ADMIN IS IN SESSION ************************/
	
	public boolean isValid(HttpSession _session) {
		if(_session.getAttribute("id") == null) {
			return false;
		} else {
			return true;
		}
	}

	/************************************ STANDARD CRUD **************************************/
	
	public Restaurant create(Restaurant restaurant) {
		restaurant.setPassword(_bcrypt.encode(restaurant.getPassword()));
		return _rR.save(restaurant);
	}
	
	public Restaurant find(Long id) {
		return (Restaurant) _rR.findOne(id);
	}
	
	public void update(Restaurant restaurant) {
		_rR.save(restaurant);
	}
	
	public void destroy(Long id) {
		_rR.delete(id);
	}
	
}
