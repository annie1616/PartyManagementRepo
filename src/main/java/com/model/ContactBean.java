package com.model;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.validation.constraints.NotBlank;

import org.springframework.stereotype.Component;

@Entity
@Table(name="contact")
@Component
public class ContactBean 
			{	
				@NotBlank(message= "{error.contact.name}")
				private String name;
				@Id
				@NotBlank(message= "{error.contact.email}")
				private String email;
				@NotBlank(message= "{error.contact.phone}")
				private String phone;
				@NotBlank(message= "{error.contact.review}")
				private String review;
				public String getName() {
					return name;
				}
				public void setName(String name) {
					this.name = name;
				}
				public String getEmail() {
					return email;
				}
				public void setEmail(String email) {
					this.email = email;
				}
				public String getPhone() {
					return phone;
				}
				public void setPhone(String phone) {
					this.phone = phone;
				}
				public String getReview() {
					return review;
				}
				public void setReview(String review) {
					this.review = review;
				}
}
