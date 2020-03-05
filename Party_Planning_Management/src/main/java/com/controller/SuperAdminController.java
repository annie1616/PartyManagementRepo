package com.controller;

import java.text.SimpleDateFormat;

import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.propertyeditors.CustomDateEditor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.model.RegistrationBean;
import com.model.SuperAdminBean;
import com.repository.SuperAdminDao;



@Controller
public class SuperAdminController 
{
  @Autowired
  SuperAdminDao saddao;
	
 @RequestMapping(value="/addadmin",method=RequestMethod.GET)
 public String addNewVenue(@ModelAttribute("sadmin")SuperAdminBean vb,Model m,BindingResult result) {
			
	    saddao.save(vb);
		return "redirect:admindetails";
	    
	   
      }
 
 @RequestMapping(value="/viewadmin",method=RequestMethod.GET)
 public String viewAdmin(@ModelAttribute("sadmin")SuperAdminBean vb,Model m,BindingResult result) {
			
	    
	    List <SuperAdminBean> clist=saddao.findAll();
	    m.addAttribute("data",clist);
		return "addadmin";
	    
	   
      }
 
 @RequestMapping(value="/admindetails",method=RequestMethod.GET)

 public String Course(@ModelAttribute("sadmin")SuperAdminBean vb) 
 {
 
 return "admindetails";

 }
 
 @RequestMapping(value="/deletedetails",method=RequestMethod.GET)
 public String DeleteById(@ModelAttribute("sadmin")SuperAdminBean vb,Integer adminid)
 {
	 saddao.deleteById(adminid);;
	return "redirect:/viewadmin";
	 
 }


}
