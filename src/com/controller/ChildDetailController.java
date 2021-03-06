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

import com.entity.ChildDetail;
import com.entity.EmpPerDetail;
import com.entity.User;
import com.service.ChildDetailService;
import com.service.EmpPerDetailService;

@Controller
@RequestMapping("/childDetail")
public class ChildDetailController
{
	       // need to inject our childDetail service
				@Autowired
				private ChildDetailService childDetailService;
				@Autowired
				private EmpPerDetailService empPerDetailService;
				@GetMapping("/index")
				public String listChildDetails(Model theModel) {
					
					// get childDetails from the service
					List<ChildDetail> theChildDetails = childDetailService.getChildDetails();
							
					// add the childDetails to the model
					theModel.addAttribute("childDetails", theChildDetails);
					
					return "ChildrenDetail/index";
				}
				
				@GetMapping("/new")
				public String showFormForAdd(Model theModel)
				{
					// create model attribute to bind form data
					ChildDetail theChildDetail = new ChildDetail();
					theModel.addAttribute("childDetail",theChildDetail );
					// get empPerDetails from the service
					List<EmpPerDetail> theEmpPerDetails = empPerDetailService.getEmpPerDetails();
							
					// add the empPerDetails to the model
					theModel.addAttribute("empPerDetails", theEmpPerDetails);
					User theUser=new User();
			        theModel.addAttribute("user",theUser);
					return "ChildrenDetail/new";
				}
				
				@PostMapping("/save")
				public String saveChildDetail(@Valid @ModelAttribute("childDetail") ChildDetail theChildDetail,BindingResult theBindingResult) {
					
					if(theBindingResult.hasErrors())
					{
						return "ChildrenDetail/new";
					}
					else
					{
						// save the childDetail using our service
						childDetailService.saveChildDetail(theChildDetail);	
						
						return "redirect:/user/signUp";
					}
					
				}
				
				@GetMapping("/update")
				public String showFormForUpdate(@RequestParam("childDetailId") int theId,
												Model theModel) 
				{
					
					// get the childDetail from our service
					ChildDetail theChildDetail = childDetailService.getChildDetail(theId);	
					
					// set childDetail as a model attribute to pre-populate the form
					theModel.addAttribute("childDetail", theChildDetail);
					
					// send over to our form		
					return "ChildrenDetail/new";
				}
				
}
