package com.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.model.ForgotPassword;
import com.model.RegistrationBean;

@Repository
public interface QuestionDao  extends JpaRepository<ForgotPassword,Integer> {

	@Query("select q from RegistrationBean q where q.userId=:userId AND q.securityQuestion1=:securityQuestion1 AND q.securityQuestion2=:securityQuestion2 AND q.securityQuestion3=:securityQuestion3")
	public RegistrationBean validateAnswers(String userId,String securityQuestion1,String securityQuestion2,String securityQuestion3);
	
}
