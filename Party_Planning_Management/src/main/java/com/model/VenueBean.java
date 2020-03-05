package com.model;



import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;


import org.springframework.stereotype.Component;

@Entity
@Table(name="venuedetails")

public class VenueBean {
	
	@Id
	private Integer venueId;
	
	private String venueName;
	private String venueAddress;
	private String venuePhoneNumber;
	private int venueRentalCost;
	private String venueContactName;
	private String venueWebsite;
	private String schedule;

	public String getVenueName() {
		return venueName;
	}

	public void setVenueName(String venueName) {
		this.venueName = venueName;
	}

	public String getVenueAddress() {
		return venueAddress;
	}

	public void setVenueAddress(String venueAddress) {
		this.venueAddress = venueAddress;
	}

	public String getVenuePhoneNumber() {
		return venuePhoneNumber;
	}

	public void setVenuePhoneNumber(String venuePhoneNumber) {
		this.venuePhoneNumber = venuePhoneNumber;
	}

	public int getVenueRentalCost() {
		return venueRentalCost;
	}

	public void setVenueRentalCost(int venueRentalCost) {
		this.venueRentalCost = venueRentalCost;
	}

	public String getVenueContactName() {
		return venueContactName;
	}

	public void setVenueContactName(String venueContactName) {
		this.venueContactName = venueContactName;
	}

	public String getVenueWebsite() {
		return venueWebsite;
	}

	public void setVenueWebsite(String venueWebsite) {
		this.venueWebsite = venueWebsite;
	}

	public Integer getVenueId() {
		return venueId;
	}

	public void setVenueId(Integer venueId) {
		this.venueId = venueId;
	}

	public String getSchedule() {
		return schedule;
	}

	public void setSchedule(String schedule) {
		this.schedule = schedule;
	}

}
