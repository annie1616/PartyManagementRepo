package com.model;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="invitationdetails")
public class InvitationBean {

	@Id
	private Integer invitationId;
	
	
	private String invitationName;
	
	
	private String invitationVenue;
	
	
	private String invitationSchedule;
	
	
	private String image;

	public Integer getInvitationId() {
		return invitationId;
	}

	public void setInvitationId(Integer invitationId) {
		this.invitationId = invitationId;
	}

	public String getInvitationName() {
		return invitationName;
	}

	public void setInvitationName(String invitationName) {
		this.invitationName = invitationName;
	}

	public String getInvitationVenue() {
		return invitationVenue;
	}

	public void setInvitationVenue(String invitationVenue) {
		this.invitationVenue = invitationVenue;
	}

	public String getInvitationSchedule() {
		return invitationSchedule;
	}

	public void setInvitationSchedule(String invitationSchedule) {
		this.invitationSchedule = invitationSchedule;
	}

	public String getImage() {
		return image;
	}

	public void setImage(String image) {
		this.image = image;
	}
	
}
