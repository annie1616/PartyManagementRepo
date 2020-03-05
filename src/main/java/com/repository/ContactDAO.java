package com.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.model.ContactBean;

@Repository
public interface ContactDAO extends JpaRepository<ContactBean,String> {
	

}
