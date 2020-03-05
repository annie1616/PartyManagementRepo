package com.repository;

import java.util.List;


import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;
import com.model.SuperAdminBean;

@Repository
public interface SuperAdminDao  extends JpaRepository<SuperAdminBean,Integer>
{
 
	//@Query("select s from SuperAdminBean s where s.courseName=:cname")
	//public SuperAdminBean DeleteById(Integer adminid);
	

}
