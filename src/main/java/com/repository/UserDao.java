<<<<<<< HEAD
package com.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.model.RegistrationBean;

@Repository
public interface UserDao extends JpaRepository<RegistrationBean,String>{

}
=======
package com.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;


import com.model.RegistrationBean;

@Repository
public interface UserDao extends JpaRepository<RegistrationBean,String>{
	
	@Query("select s from RegistrationBean s where s.userId=:userId AND s.password=:password")
	public RegistrationBean validateUser(String userId,String password);
}
>>>>>>> branch 'rajkumar' of https://github.com/annie1616/PartyManagementRepo.git
