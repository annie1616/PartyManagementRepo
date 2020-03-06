package com.controller;

import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.model.ContactBean;
import com.model.Login;
import com.model.RegistrationBean;
import com.model.SuperAdminBean;
import com.repository.ContactDAO;
import com.repository.UserDao;


@Controller
public class LoginController {

	@Autowired
	UserDao dao;
	
	
	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public String loginPage(@ModelAttribute("login") Login login) {
		return "login";
	}

	@Autowired
    ContactDAO ctdao;
    
    @RequestMapping(value="/contact",method=RequestMethod.GET)

    public String feedBack(@ModelAttribute("contact")ContactBean contactbean,BindingResult result) {
    
    return "contactpage";

    }
    
    @PostMapping("/home")
    public String datasave(@Valid @ModelAttribute("contact")ContactBean contactbean,BindingResult result) {
    	if(result.hasErrors()) {
    		return "contactpage";
    	}
    	ctdao.save(contactbean);
    	return "added";

    }

	
	@PostMapping("/successlogin")
	public ModelAndView signIn(@Valid @ModelAttribute("login")Login login,BindingResult br,HttpSession session,Model m) {
		
		ModelAndView mv=new ModelAndView("login", "flag", 1);

		if(br.hasErrors()) {
			
			mv=new ModelAndView("login");
		}
		
		
			if(login.getUserName().equals("SuperAdmin")
				&& login.getUserPassword().equals("SuperAdmin")) {
			
				SuperAdminBean sb=new SuperAdminBean();
				
			mv=new ModelAndView("admindetails","sadmin",sb);
			}
		
			
			RegistrationBean register=dao.validateUser(login.getUserName(), login.getUserPassword());

			if( register!= null)
			{
			mv=new ModelAndView("successlogin");
			session.setAttribute("register",register);
			}
			
			
		return mv;
	}
}