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

import com.entity.AcadmicDetail;
import com.entity.EmpPerDetail;
import com.service.AcadmicDetailService;
import com.service.EmpPerDetailService;
@Controller
@RequestMapping("/acadmicDetail")
public class AcadmicDetailController 
{
	 // need to inject our acadmicDetail service
				@Autowired
				private AcadmicDetailService acadmicDetailService;
				@Autowired
				private EmpPerDetailService empPerDetailService;
				@GetMapping("/index")
				public String listAcadmicDetails(Model theModel) {
					
					// get acadmicDetails from the service
					List<AcadmicDetail> theAcadmicDetails = acadmicDetailService.getAcadmicDetails();
							
					// add the acadmicDetails to the model
					theModel.addAttribute("acadmicDetails", theAcadmicDetails);
					
					return "AcadmicDetail/index";
				}
				
				@GetMapping("/new")
				public String showFormForAdd(Model theModel)
				{
					// create model attribute to bind form data
					AcadmicDetail theAcadmicDetail = new AcadmicDetail();
					theModel.addAttribute("acadmicDetail",theAcadmicDetail );
					// get empPerDetails from the service
					List<EmpPerDetail> theEmpPerDetails = empPerDetailService.getEmpPerDetails();
							
					// add the empPerDetails to the model
					theModel.addAttribute("empPerDetails", theEmpPerDetails);
					
					return "AcadmicDetail/new";
				}
				
				@PostMapping("/save")
				public String saveAcadmicDetail(@Valid @ModelAttribute("acadmicDetail") AcadmicDetail theAcadmicDetail,BindingResult theBindingResult) {
					
					if(theBindingResult.hasErrors())
					{
						return "AcadmicDetail/new";
					}
					else
					{
						// save the acadmicDetail using our service
						acadmicDetailService.saveAcadmicDetail(theAcadmicDetail);	
						
						return "redirect:/acadmicDetail/new";
					}
					
				}
				
				@GetMapping("/update")
				public String showFormForUpdate(@RequestParam("acadmicDetailId") int theId,
												Model theModel) 
				{
					
					// get the acadmicDetail from our service
					AcadmicDetail theAcadmicDetail = acadmicDetailService.getAcadmicDetail(theId);	
					
					// set acadmicDetail as a model attribute to pre-populate the form
					theModel.addAttribute("acadmicDetail", theAcadmicDetail);
					
					// send over to our form		
					return "AcadmicDetail/new";
				}
				
}
