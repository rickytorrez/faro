package com.ericardo.faro.services;

import javax.servlet.http.HttpSession;

import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;

import com.ericardo.faro.models.Admin;
import com.ericardo.faro.repositories.AdminRepository;

@Service
public class AdminService {

	private AdminRepository _aR;
	private BCryptPasswordEncoder _bcrypt;
	
	public AdminService(AdminRepository _aR) {
		this._aR = _aR;
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
	
	public Admin create(Admin admin) {
		admin.setPassword(_bcrypt.encode(admin.getPassword()));
		return _aR.save(admin);
	}
	
	public Admin find(Long id) {
		return (Admin) _aR.findOne(id);
	}
	
	public void update(Admin admin) {
		_aR.save(admin);
	}
	
	public void destroy(Long id) {
		_aR.delete(id);
	}
	
	public Admin findByEmail(String email) {
		return _aR.findByEmail(email);
	}
	
}
