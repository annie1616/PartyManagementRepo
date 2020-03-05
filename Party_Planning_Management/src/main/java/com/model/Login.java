package com.model;

import javax.validation.constraints.NotBlank;
import javax.validation.constraints.Size;

import org.springframework.stereotype.Component;

@Component
public class Login {
	
	@NotBlank(message= "{error.login.userName}")
	private String userName;
	
	@NotBlank(message= "{error.login.userPassword}")
	@Size(min=8,max=12,message="{error.login.userPassword.format}")
	private String userPassword;
	
	public String getUserPassword() {
		return userPassword;
	}
	public void setUserPassword(String userPassword) {
		this.userPassword = userPassword;
	}
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	
	
}



