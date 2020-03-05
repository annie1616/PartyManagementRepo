package com.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.model.FeedBack;
import com.model.VenueBean;
@Repository
public interface AdminDao extends JpaRepository<VenueBean, Integer>{
	
	
	public List<VenueBean> findAll();
	
	
//	@Query("select * from FeedBack f;")
//	public List<FeedBack> getFeedBack();
//	
//	public String[] findByUserId(String UserId);
//	
	
	
//	
//	@Query
//	public List<FeedBack> getFeedBack

}
