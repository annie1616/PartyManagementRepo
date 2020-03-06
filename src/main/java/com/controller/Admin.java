package com.controller;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import com.model.InvitationBean;
import com.model.VenueBean;
import com.repository.AdminDao;
import com.repository.InvitationDao;

@Controller
public class Admin {
	
	
	@Autowired
	private AdminDao dao;
	
	@Autowired
	private InvitationDao idao;
	
	
	@GetMapping("/adminhome")
	public String launchAdmin(@ModelAttribute("admin")VenueBean venue) { 
		
		return "adminhome";
		
	}
   
	
	
	
	@GetMapping("/editVenue")
	public String updateVenuePage(Integer venueId,Model m) {
		
		Optional<VenueBean> opt= dao.findById(venueId);
		
		 VenueBean venuedata=opt.get();
		
		m.addAttribute("venue", venuedata);
		
		return "editVenue";
		
	}
	
	
	@PostMapping("/updateVenue")

	public String updateVenue(@ModelAttribute("venue") VenueBean venueobj,Integer venueId ,BindingResult br) {
		
		dao.save(venueobj);
		Optional<VenueBean> opt= dao.findById((venueId));
		
			if(opt!=null) {
				 VenueBean venuedata=opt.get();
						
			dao.save(venuedata);
			return "redirect:veiwVenue";
		}
		else {
				
			
		
			return "venueUpdateFailure";
		
		}
	}
	
	@GetMapping("/addVenueDetailsForm")
	public String addVenueDetails(@ModelAttribute("venue") VenueBean venueobj,BindingResult br) 
	{
		return "addVenueDetailsForm";
	}
	
	
	@PostMapping("/addVenueDetailsSubmit")
	public String addVenueDetailsSubmit(@ModelAttribute("venue") VenueBean venueobj,BindingResult br,Model m) {
		
		dao.save(venueobj);
		List<VenueBean> venueDetails =dao.findAll();
		
		m.addAttribute("venuedetails",venueDetails);
		
		return "venueAddSucess";
		
	}
	
	
	
	@GetMapping("/veiwVenue")
	public String veiwVenue( VenueBean venue,Model model)
	{
		
		
		List<VenueBean> venueDetails =dao.findAll();
		
		model.addAttribute("venue",venueDetails);
		
		return "veiwVenue";
		
	}
	@GetMapping("/venueAddSucess")
	public String venueAddSucess( VenueBean venue,Model model)
	{
		
		
		List<VenueBean> venueDetails =dao.findAll();
	
		
		model.addAttribute("venuedetails",venueDetails);
		
		return "venueAddSucess";
		
	}
	
	@GetMapping("/deleteVenue")
	public String deleteVenue(@ModelAttribute("venue") VenueBean venueobj,Integer venueId,BindingResult br) {
		
		dao.deleteById(venueId);
		
      
		
		return "redirect:veiwVenue";
	
		
	}
	
	@GetMapping("/addInivitationForm")
	public String deleteVenue(@ModelAttribute("invitation")  InvitationBean invitation) {
		
	return "addInvitationForm";
	}
	
	@PostMapping("/addInvitationSubmit")
	public String addInivitationSubmit(@ModelAttribute("invitation")  InvitationBean invitationobj,BindingResult br,Model m)
	{
		
		idao.save(invitationobj);
		
		List<InvitationBean> invitation =idao.findAll();
		
		m.addAttribute("venue",invitation);
		
		return "InvitationEntered";
		
	}
}
