package com.model;

<<<<<<< HEAD
import java.util.Date;

public class RegistrationBean {

	
	private String question;
	private String firstName;
	private String lastName;
	private Date dob;
	private String gender;
	private String contactNumber;
	private String userId;
	private String password;
	public String getFirstName() {
		return firstName;
	}
	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}
	public String getLastName() {
		return lastName;
	}
	public void setLastName(String lastName) {
		this.lastName = lastName;
	}
	public Date getDob() {
		return dob;
	}
	public void setDob(Date dob) {
		this.dob = dob;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public String getContactNumber() {
		return contactNumber;
	}
	public void setContactNumber(String contactNumber) {
		this.contactNumber = contactNumber;
	}
	public String getQuestion() {
		return question;
	}
	public void setQuestion(String question) {
		this.question = question;
=======
import java.io.Serializable;
import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

import org.springframework.format.annotation.NumberFormat;
import org.springframework.stereotype.Component;

@Entity
@Table(name="user")
@Component
public class RegistrationBean implements Serializable{


	@NotBlank(message= "{error.firstName}")
	private String firstName;
	
	@NotBlank(message= "{error.lastName}")
	private String lastName;
	
	
	private Date dob;
	
	@NotBlank(message= "{error.gender}")
	private String gender;
	
	@NotBlank(message= "{error.number}")
	@Size(min=1,max=10,message="{error.number.format}")
	private String contactNumber;
	
	@Id
	@NotBlank(message= "{error.userId}")
	private String userId;
	
	@NotBlank(message= "{error.password}")
	@Size(min=8,max=12,message="{error.password.format}")
	private String password;
	
	@NotBlank(message= "{error.q1}")
	private String securityQuestion1;
	
	@NotBlank(message= "{error.q2}")
	private String securityQuestion2;
	
	@NotBlank(message= "{error.q3}")
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
	
	public String getFirstName() {
		return firstName;
	}
	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}
	public String getLastName() {
		return lastName;
	}
	public void setLastName(String lastName) {
		this.lastName = lastName;
	}
	public Date getDob() {
		return dob;
	}
	public void setDob(Date dob) {
		this.dob = dob;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public String getContactNumber() {
		return contactNumber;
	}
	public void setContactNumber(String contactNumber) {
		this.contactNumber = contactNumber;
>>>>>>> branch 'rajkumar' of https://github.com/annie1616/PartyManagementRepo.git
	}
	public String getUserId() {
		return userId;
	}
	public void setUserId(String userId) {
		this.userId = userId;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	
	
}
