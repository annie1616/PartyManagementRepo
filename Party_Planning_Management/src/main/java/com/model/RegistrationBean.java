package com.model;

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
	
	//spring.jpa.database-platform = org.hibernate.dialect.MySQL5Dialect
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
	public RegistrationBean() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	
	
	
}
