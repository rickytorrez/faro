package com.ericardo.faro.models;

import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.PrePersist;
import javax.persistence.PreUpdate;
import javax.validation.constraints.Size;

import org.springframework.format.annotation.DateTimeFormat;

@Entity
public class Reservation {

	/*************************************** ATTRIBUTES **************************************/
	@Id
	@GeneratedValue
	private Long id;
	
	private Date day;

	@Size(min=1, max=25, message="Please provide a valid time.")
	private String time;
	
	private boolean available;
	 	
	@DateTimeFormat(pattern="MM:dd:yyyy HH:mm:ss")
	private Date createdAt;
	 	
	@DateTimeFormat(pattern="MM:dd:yyyy HH:mm:ss")
	private Date updatedAt;

	/************************************* RELATIONSHIPS *************************************/
	 	
	/************************************ with restaurant ************************************/
	@ManyToOne(fetch=FetchType.LAZY)
	@JoinColumn(name="admin_id")
	private Admin admin;
	
	public Admin getAdmin() {
		return admin;
	}

	public void setAdmin(Admin admin) {
		this.admin = admin;
	}
	
	/*************************************** with user ***************************************/
	
	
	 	
	

	/********************************* PERSIST AND UPDATE  **********************************/
	 	
	@PrePersist
	public void onCreate() {
	 	this.createdAt = new Date();
	}
	 	
	@PreUpdate
	public void onUpdate() {
	 	this.updatedAt = new Date();
	}
	/******************************** SETTERS AND GETTERS  **********************************/

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public Date getDay() {
		return day;
	}

	public void setDay(Date day) {
		this.day = day;
	}	
	
	public String getTime() {
		return time;
	}

	public void setTime(String time) {
		this.time = time;
	}

	public boolean isAvailable() {
		return available;
	}

	public void setAvailable(boolean available) {
		this.available = available;
	}

	public Date getCreatedAt() {
		return createdAt;
	}

	public void setCreatedAt(Date createdAt) {
		this.createdAt = createdAt;
	}

	public Date getUpdatedAt() {
		return updatedAt;
	}

	public void setUpdatedAt(Date updatedAt) {
		this.updatedAt = updatedAt;
	}

	/********************************** EMPTY CONSTRUCTOR  **********************************/
	 	
	public Reservation() {
	 	this.createdAt = new Date();
	 	this.updatedAt = new Date();
	}
}