package com.model;

import javax.validation.constraints.NotBlank;

import org.springframework.stereotype.Component;

@Component
public class ForgotPassword {
	
	@NotBlank(message= "{error.forgot.q1}")
	private String securityQuestion1;
	
	@NotBlank(message= "{error.forgot.q2}")
	private String securityQuestion2;
	
	@NotBlank(message= "{error.forgot.q3}")
	private String securityQuestion3;
	
	
	public String getSecurityQuestion1() {
		return securityQuestion1;
	}
	public void setSecurityQuestion1(String securityQuestion1) {
		this.securityQuestion1 = securityQuestion1;
	}
	public String getSecurityQuestion2() {
		return securityQuestion2;
	}
	public void setSecurityQuestion2(String securityQuestion2) {
		this.securityQuestion2 = securityQuestion2;
	}
	public String getSecurityQuestion3() {
		return securityQuestion3;
	}
	public void setSecurityQuestion3(String securityQuestion3) {
		this.securityQuestion3 = securityQuestion3;
	}
	
}
