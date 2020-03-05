package com.model;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

import org.springframework.stereotype.Component;

@Entity
@Table(name="contact")
@Component
public class ContactBean 
			{				
				private String name;
				@Id
				private String email;
				private String phone;
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
