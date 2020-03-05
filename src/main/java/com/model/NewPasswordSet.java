package com.model;

import javax.validation.constraints.NotBlank;

import org.springframework.stereotype.Component;

@Component
public class NewPasswordSet {

	@NotBlank(message= "{error.NewPasswordSet.newPassword}")
	private String newPassword;
	
	@NotBlank(message= "{error.NewPasswordSet.confirmPassword}")
	private String confirmPassword;
	
	public String getNewPassword() {
		return newPassword;
	}
	public void setNewPassword(String newPassword) {
		this.newPassword = newPassword;
	}
	public String getConfirmPassword() {
		return confirmPassword;
	}
	public void setConfirmPassword(String confirmPassword) {
		this.confirmPassword = confirmPassword;
	}
	
	
}
