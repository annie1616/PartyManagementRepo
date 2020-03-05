package com.controller;

import com.model.*;
import com.repository.UserDao;

import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.propertyeditors.CustomDateEditor;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class RegistrationController {

	
	@Autowired
	UserDao dao;

	@RequestMapping(value = "/register", method = RequestMethod.GET)

	public String registerPage(@ModelAttribute("register") RegistrationBean registrationBean, BindingResult result) {

		return "registrationpage";

	}

	@RequestMapping(value = "/register", method = RequestMethod.POST)

	public String performRegistration(@Valid @ModelAttribute("register") RegistrationBean registrationBean,
			BindingResult result) {
		
		if (result.hasErrors()) {

			return "registrationpage";
		}
		dao.save(registrationBean);
		return "thankyou";

	}

	

	@RequestMapping(value = "/homepage", method = RequestMethod.GET)

	public String homePage(@ModelAttribute("register") RegistrationBean registrationBean, BindingResult result) {

		return "homepage";

	}

	@RequestMapping(value = "/forgotpassword", method = RequestMethod.GET)

	public String forgotPasswordPage(@ModelAttribute("forgotpassword") ForgotPassword forgotPassword) {
		return "forgotpassword";
	}

	
	@PostMapping("/successForgotPasswordPage")
	public ModelAndView newPasswordSet(@Valid @ModelAttribute("forgotpassword")ForgotPassword forgotPassword,BindingResult br,HttpSession session) {
		
		ModelAndView mv=new ModelAndView("forgotpassword", "flag", 1);

		if(br.hasErrors()) {
			
			mv=new ModelAndView("forgotpassword");
		}
			if(forgotPassword.getSecurityQuestion1()=="" &&forgotPassword.getSecurityQuestion2()=="" && forgotPassword.getSecurityQuestion3()=="") {
			
			mv=new ModelAndView("redirect:/newpasswordset");
			}
			
		return mv;}


	@RequestMapping(value = "/newpasswordset", method = RequestMethod.GET)

	public String newPasswordSetPage( @ModelAttribute("newpasswordset") NewPasswordSet newPasswordSet ) {
		

		return "newpasswordset";
	}

	/*@RequestMapping(value = "/successNewPassword", method = RequestMethod.GET)

	public String successNewPasswordSet(@ModelAttribute("newpasswordset") NewPasswordSet newPasswordSet, BindingResult result) {

		
		  if (result.hasErrors()) {
		  
		  return "newpasswordset"; }
		 
		return "redirect:/login";

	}*/
	@PostMapping("/successNewPassword")
	public ModelAndView newPasswordSet(@Valid @ModelAttribute("newpasswordset")NewPasswordSet newpassword,BindingResult br,HttpSession session) {
		
		ModelAndView mv=new ModelAndView("newpasswordset", "flag", 1);

		if(br.hasErrors()) {
			
			mv=new ModelAndView("newpasswordset");
		}
			if(newpassword.getNewPassword().equals(newpassword.getConfirmPassword())) {
			
			mv=new ModelAndView("redirect:/login");
			}
			
		return mv;}

	@InitBinder
	public void datebind(WebDataBinder web) {
		SimpleDateFormat sdf = new SimpleDateFormat("dd-MM-yy");
		CustomDateEditor cde = new CustomDateEditor(sdf, true);
		web.registerCustomEditor(Date.class, "dob", cde);
	}

}
