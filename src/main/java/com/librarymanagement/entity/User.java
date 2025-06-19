package com.librarymanagement.entity;

import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
public class User {
	
	@Id
	private String email;
	private String fullName;
	private String password;
	private String confirmPassword;
	
	
	public User() {
		super();
		// TODO Auto-generated constructor stub
	}


	public User(String email, String fullName, String password, String confirmPassword) {
		super();
		this.email = email;
		this.fullName = fullName;
		this.password = password;
		this.confirmPassword = confirmPassword;
	}


	public String getEmail() {
		return email;
	}


	public void setEmail(String email) {
		this.email = email;
	}


	public String getFullName() {
		return fullName;
	}


	public void setFullName(String fullName) {
		this.fullName = fullName;
	}


	public String getPassword() {
		return password;
	}


	public void setPassword(String password) {
		this.password = password;
	}


	public String getConfirmPassword() {
		return confirmPassword;
	}


	public void setConfirmPassword(String confirmPassword) {
		this.confirmPassword = confirmPassword;
	}
	
	
	
	
}
