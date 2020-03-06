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
   
	@GetMapping("/veiwVenue")
	public String veiwVenue( VenueBean venue,Model model)
	{
		
		
		List<VenueBean> venueDetails =dao.findAll();
		
		model.addAttribute("venue",venueDetails);
		
		return "veiwVenue";
		
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
			return "venueUpdateSuccess";
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
	public String addVenueDetailsSubmit(@ModelAttribute("venue") VenueBean venueobj,BindingResult br) {
		
		dao.save(venueobj);
		
		VenueBean opt= dao.findById((venueobj.getVenueId())).get();
		
		if(opt!=null) {
			
			// VenueBean venuedata=opt.get();
					
		
		return "venueAddSucess";
	}
	else {
			
		
	
		return "vebueAddFailure";
	
	}
	}
	
	@GetMapping("/deleteVenue")
	public String deleteVenue(@ModelAttribute("venue") VenueBean venueobj,Integer venueId,BindingResult br) {
		
		dao.deleteById(venueId);
		
       Optional<VenueBean> opt= dao.findById((venueobj.getVenueId()));
		
		if(opt!=null) {
		
		return "deleteSuccess";
	}
	else {
		
		return "deleteFailure";
	
	}
		
	}
	
	@GetMapping("/addInivitationForm")
	public String deleteVenue(@ModelAttribute("invitation")  InvitationBean invitation) {
		
	return "addInvitationForm";
	}
	
	@PostMapping("/addInvitationSubmit")
	public String addInivitationSubmit(@ModelAttribute("invitation")  InvitationBean invitation,BindingResult br)
	{
		
		idao.save(invitation);
		
Optional<InvitationBean> opt= idao.findById((invitation.getInvitationId()));
		
		if(opt!=null) {
		
		return "InvitationEntered";
	}
	else {
		
		return "invitationNotEntered";
	
	}
	}
}
