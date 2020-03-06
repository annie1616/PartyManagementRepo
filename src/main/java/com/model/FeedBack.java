package com.model;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;



@Entity
@Table(name="feedback")
public class FeedBack {
	
	@Id
	private String userId;
	private String Question1;
	private String Question2;
	private String Question3;
	private String Question4;
	private String Question5;

	public String getQuestion1() {
		return Question1;
	}

	public void setQuestion1(String question1) {
		Question1 = question1;
	}

	public String getQuestion2() {
		return Question2;
	}

	public void setQuestion2(String question2) {
		Question2 = question2;
	}

	public String getQuestion3() {
		return Question3;
	}

	public void setQuestion3(String question3) {
		Question3 = question3;
	}

	public String getQuestion4() {
		return Question4;
	}

	public void setQuestion4(String question4) {
		Question4 = question4;
	}

	public String getQuestion5() {
		return Question5;
	}

	public void setQuestion5(String question5) {
		Question5 = question5;
	}

	public String getUserId() {
		return userId;
	}

	public void setUserId(String userId) {
		this.userId = userId;
	}
}
