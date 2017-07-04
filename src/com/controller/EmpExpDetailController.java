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

import com.entity.EmpExpDetail;
import com.service.EmpExpDetailService;
@Controller
@RequestMapping("/empExpDetail")
public class EmpExpDetailController
{
	// need to inject our empExpDetail service
			@Autowired
			private EmpExpDetailService empExpDetailService;
			@GetMapping("/index")
			public String listEmpExpDetails(Model theModel) {
				
				// get empExpDetails from the service
				List<EmpExpDetail> theEmpExpDetails = empExpDetailService.getEmpExpDetails();
						
				// add the empExpDetails to the model
				theModel.addAttribute("empExpDetails", theEmpExpDetails);
				
				return "EmpExpDetail/index";
			}
			
			@GetMapping("/new")
			public String showFormForAdd(Model theModel)
			{
				// create model attribute to bind form data
				EmpExpDetail theEmpExpDetail = new EmpExpDetail();
				theModel.addAttribute("empExpDetail",theEmpExpDetail );
				return "EmpExpDetail/new";
			}
			
			@PostMapping("/save")
			public String saveEmpExpDetail(@Valid @ModelAttribute("empExpDetail") EmpExpDetail theEmpExpDetail,BindingResult theBindingResult) {
                 
				if(theBindingResult.hasErrors())
				{
					return "ChildrenDetail/new";
				}
				else
				{
					// save the empExpDetail using our service
					empExpDetailService.saveEmpExpDetail(theEmpExpDetail);	
					
					return "redirect:/empExpDetail/index";
				}
				
			}
			
			@GetMapping("/update")
			public String showFormForUpdate(@RequestParam("empExpDetailId") int theId,
											Model theModel) 
			{
				
				// get the empExpDetail from our service
				EmpExpDetail theEmpExpDetail = empExpDetailService.getEmpExpDetail(theId);	
				
				// set empExpDetail as a model attribute to pre-populate the form
				theModel.addAttribute("empExpDetail", theEmpExpDetail);
				
				// send over to our form		
				return "EmpExpDetail/new";
			}
			
		
}
