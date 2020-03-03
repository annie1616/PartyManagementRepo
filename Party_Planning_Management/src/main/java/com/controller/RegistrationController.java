package com.controller;
import com.model.*;
import com.repository.UserDao;

import java.text.SimpleDateFormat;
import java.util.Date;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.propertyeditors.CustomDateEditor;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class RegistrationController {

	 @Autowired 
     UserDao dao;
	 


                @RequestMapping(value = "/register", method = RequestMethod.POST)

                public String performRegistration(@Valid@ModelAttribute("register") RegistrationBean registrationBean,BindingResult result) {
                	dao.save(registrationBean);
                if (result.hasErrors()) {

                return "registrationpage";
                }

                return "thankyou";

                }
                @RequestMapping(value="/login",method=RequestMethod.GET)
                public String loginPage( @ModelAttribute("login")Login login) {
                	return "login";
                }
                
                
                
                @RequestMapping(value="/successlogin",method=RequestMethod.GET)

                public String successloginPage(@Valid @ModelAttribute("login")Login login,BindingResult result) {
                System.out.println("login");
                	 
                
                if (result.hasErrors()) {

                         return "login";
                         }
					return "successlogin";
                }
                
                
                @RequestMapping(value="/register",method=RequestMethod.GET)

                public String registerPage(@ModelAttribute("register")RegistrationBean registrationBean,BindingResult result) {
                
                return "registrationpage";

                }


                @RequestMapping(value="/homepage",method=RequestMethod.GET)

                public String homePage(@ModelAttribute("register")RegistrationBean registrationBean,BindingResult result) {
                
                return "homepage";

                }
                
                @PostMapping("/database")
                public String registerdetails(@ModelAttribute("register")RegistrationBean registrationBean)
                {
                	dao.save(registrationBean);
					return "final";
                }
                
                @InitBinder
                public void datebind(WebDataBinder web)
                {
                	SimpleDateFormat sdf=new SimpleDateFormat("dd-MM-yy");
                	CustomDateEditor cde=new CustomDateEditor(sdf, true);
                	web.registerCustomEditor(Date.class,"dob", cde);
                }
                
                }   
