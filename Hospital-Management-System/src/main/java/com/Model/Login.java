package com.Model;

import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
public class Login {
	@Id
	private String Username;
	private String Password;
	public Login() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Login(String Username, String Password) {
		super();
		this.Username = Username;
		this.Password = Password;
	}
	public String getUsername() {
		return Username;
	}
	public void setUsername(String Username) {
		this.Username = Username;
	}
	public String getPassword() {
		return Password;
	}
	public void setPassword(String Password) {
		this.Password = Password;
	}
	@Override
	public String toString() {
		return "Login [Username=" + Username + ", Password=" + Password + "]";
	}
	
	

}
