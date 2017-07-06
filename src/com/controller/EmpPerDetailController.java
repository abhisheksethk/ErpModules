package com.controller;

import java.util.List;


import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.entity.EmpPerDetail;
import com.service.EmpPerDetailService;

@Controller
@RequestMapping("/empPerDetail")
@SessionAttributes("EmpId")
public class EmpPerDetailController
{
	// need to inject our empPerDetail service
		@Autowired
		private EmpPerDetailService empPerDetailService;
		@GetMapping("/index")
		public String listEmpPerDetails(Model theModel) {
			
			// get empPerDetails from the service
			List<EmpPerDetail> theEmpPerDetails = empPerDetailService.getEmpPerDetails();
					
			// add the empPerDetails to the model
			theModel.addAttribute("empPerDetails", theEmpPerDetails);
			
			return "EmpPerDetail/index-empPerDetail";
		}
		
		@GetMapping("/new")
		public String showFormForAdd(Model theModel)
		{
			// create model attribute to bind form data
			EmpPerDetail theEmpPerDetail = new EmpPerDetail();
			theModel.addAttribute("empPerDetail",theEmpPerDetail );
			return "EmpPerDetail/new-empPerDetail";
		}
		
		@PostMapping("/save")
		public String saveEmpPerDetail(@Valid @ModelAttribute("empPerDetail") EmpPerDetail theEmpPerDetail,BindingResult theBindingResult) {
			   
			if(theBindingResult.hasErrors())
			{
				return "EmpPerDetail/new-empPerDetail";
			}
			else
			{
				
				// save the empPerDetail using our service
				empPerDetailService.saveEmpPerDetail(theEmpPerDetail);	
				return "redirect:/empExpDetail/new";
			}
			
		
		}
		
		@GetMapping("/update")
		public String showFormForUpdate(@RequestParam("empPerDetailId") int theId,
										Model theModel) {
			
			// get the empPerDetail from our service
			EmpPerDetail theEmpPerDetail = empPerDetailService.getEmpPerDetail(theId);	
			
			// set empPerDetail as a model attribute to pre-populate the form
			theModel.addAttribute("empPerDetail", theEmpPerDetail);
			
			// send over to our form		
			return "EmpPerDetail/new-empPerDetail";
		}
		
		@GetMapping("/delete")
		public String deleteCustomer(@RequestParam("empPerDetailId") int theId) {
			
			// delete the customer
			empPerDetailService.deleteEmpPerDetail(theId);
			
			return "redirect:/empPerDetail/index";
		}	
		
}
