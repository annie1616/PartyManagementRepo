package com.controller;
import com.model.*;
import com.repository.ContactDAO;
import com.validate.CustomValidator;

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
                private CustomValidator custValidator;

                @RequestMapping(value = "/register", method = RequestMethod.POST)

                public String performRegistration(@ModelAttribute("register") RegistrationBean registrationBean,BindingResult result) {

                custValidator.validate(registrationBean,result);

                if (result.hasErrors()) {

                return "registrationpage";
                }

                return "thankyou";

                }
                
                @RequestMapping(value="/register",method=RequestMethod.GET)

                public String registerPage(@ModelAttribute("register")RegistrationBean registrationBean,BindingResult result) {
                
                return "registrationpage";

                }
                
                @RequestMapping(value="/feedback",method=RequestMethod.GET)

                public String feedBack(@ModelAttribute("register")RegistrationBean registrationBean,BindingResult result) {
                
                return "feedbackpage";

                }
                
                @Autowired
                ContactDAO ctdao;
                
                @RequestMapping(value="/contact",method=RequestMethod.GET)

                public String feedBack(@ModelAttribute("contact")ContactBean contactbean,BindingResult result) {
                
                return "contactpage";

                }
                
                @RequestMapping(value="/home",method=RequestMethod.POST)
                public String datasave(@ModelAttribute("contact")ContactBean contactbean,BindingResult result) {
                	
                	ctdao.save(contactbean);
                	return "added";

                }
                        
                


                @RequestMapping(value="/homepage",method=RequestMethod.GET)

                public String homePage(@ModelAttribute("register")RegistrationBean registrationBean,BindingResult result) {
                
                return "homepage";

                }
                
                @InitBinder
                public void datebind(WebDataBinder web)
                {
                	SimpleDateFormat sdf=new SimpleDateFormat("dd-MM-yy");
                	CustomDateEditor cde=new CustomDateEditor(sdf, true);
                	web.registerCustomEditor(Date.class,"dob", cde);
                }
                
                }   
