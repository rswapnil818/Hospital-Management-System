package com.Model;

import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
public class Contact {
	
	@Id
	private String name;
	private long phone; 
	private String email;
	private String massage;
	public Contact() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Contact(String name, long phone, String email, String massage) {
		super();
		this.name = name;
		this.phone = phone;
		this.email = email;
		this.massage = massage;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public long getPhone() {
		return phone;
	}
	public void setPhone(long phone) {
		this.phone = phone;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getMassage() {
		return massage;
	}
	public void setMassage(String massage) {
		this.massage = massage;
	}
	@Override
	public String toString() {
		return "Contact [Name=" + name + ", Phone=" + phone + ", Email=" + email + ", Massage=" + massage + "]";
	}
	
	
	
}
