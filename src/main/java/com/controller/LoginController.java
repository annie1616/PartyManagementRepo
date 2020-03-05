package com.controller;

import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.model.Login;
import com.model.RegistrationBean;
import com.repository.UserDao;


@Controller
public class LoginController {

	@Autowired
	UserDao dao;
	
	
	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public String loginPage(@ModelAttribute("login") Login login) {
		return "login";
	}

	

	
	@PostMapping("/successlogin")
	public ModelAndView signIn(@Valid @ModelAttribute("login")Login login,BindingResult br,HttpSession session) {
		
		ModelAndView mv=new ModelAndView("login", "flag", 1);

		if(br.hasErrors()) {
			
			mv=new ModelAndView("login");
		}
			if(login.getUserName().equals("Admin")
				&& login.getUserPassword().equals("Admin")) {
			
			mv=new ModelAndView("adminhome");
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