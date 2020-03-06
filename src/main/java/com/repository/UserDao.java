package com.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;


import com.model.Login;
import com.model.RegistrationBean;

@Repository
public interface UserDao extends JpaRepository<RegistrationBean,String>{
	
	@Query("select l from RegistrationBean  l where l.userId=:userId  and l.password=:password")
	public RegistrationBean getUserIdAndPassword(String userId,String password);      

//	@Query("update login set ")
//	public List<>
}
