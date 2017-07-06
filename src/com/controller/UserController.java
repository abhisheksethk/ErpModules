
package com.controller;


import java.util.List;

import javax.servlet.http.HttpSession;
import javax.validation.Valid;


import org.hibernate.TypeMismatchException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.entity.EmpPerDetail;
import com.entity.User;
import com.service.EmpPerDetailService;
import com.service.UserService;
@Controller
@RequestMapping("/user")
public class UserController
{
	@Autowired
	private UserService userService;
	@Autowired
	private EmpPerDetailService empPerDetailService;
	@GetMapping("/signUp")
	public String registration(Model theModel)
	{
		User theUser=new User();
        theModel.addAttribute("user",theUser);
     // get empPerDetails from the service
     			List<EmpPerDetail> theEmpPerDetails = empPerDetailService.getEmpPerDetails();
     					
     			// add the empPerDetails to the model
     			theModel.addAttribute("empPerDetails", theEmpPerDetails);
     			
        return "User/newRegisterForm";
	}
	@PostMapping("/submit")
	public String submit(@Valid @ModelAttribute("user") User theUser,HttpSession session,BindingResult theBindingResult)
	{  
		if(theBindingResult.hasErrors())
	      {
			return "User/newRegisterForm";
	       }
	    else
	      {
		     userService.saveUser(theUser);
		      if(theUser.getSerial()==1)
		      {
			    return "User/RegisterConfirmation";
		      }
		      else
		      {
			    session.setAttribute("employee", 0);
			     return "User/loginConfirmation";
		       }   
	       }
	}
    @GetMapping("/signIn")
    public String loginForm(Model theModel,HttpSession session)
    {
    	session.invalidate(); 
        User theUser=new User();
        theModel.addAttribute("user",theUser);
        return "User/loginForm";
    }
   @PostMapping("/processLogin")
   public String processForm( @ModelAttribute("user") User theUser,Model theModel,HttpSession session ) throws Exception
    {   
	   List<User>   userDetail= userService.getUserDetails();
	   try{
	    if(validateUser(theUser,userDetail))
	     {  
	    	if(theUser.getSerial()==1)
	    	{
	
	    		session.setAttribute("userName",theUser.getUserName());
	    		session.setAttribute("serial",theUser.getSerial());
	    	}
	    	else if(theUser.getSerial()==0)
	    	{
	    		session.setAttribute("userName",theUser.getUserName());
	    		session.setAttribute("serial",theUser.getSerial());
	    	}
	    	else
	    		session.setAttribute("userName",theUser.getUserName());
	    	return "User/loginConfirmation";
	     }
	    else
	    {  
	    	return "redirect:/user/loginError";
	    	
	    }
	   }
	   catch(TypeMismatchException e)
	   {
		   return "redirect:/user/signIn";
	   }
      }
      private boolean validateUser(User x,List<User> userDetail)
        {
	      for(User temp:userDetail) 
	       {
	    		
		   if(x.getSerial()==temp.getSerial()&&(x.getUserName().equals(temp.getUserName())&&x.getPassword().equals(temp.getPassword())))
		    {
			   return true;
		    }
	      }
	     return false; 
       }
      @GetMapping("/loginError")
      public String loginError(Model theModel)
      {
    	  User theUser=new User();
    	  theModel.addAttribute("message","Password or Username Doesn't Matched");
          theModel.addAttribute("user",theUser);
    	  return "User/loginError";
      }
      @GetMapping("/index")
      public String listUserDetails(Model theModel) {
			
    	     // get the serial from our User database
    		List<User> theUser = userService.getUserDetails();
					
			// add the theUser to the model
			theModel.addAttribute("Users", theUser);
			
			return "User/index";
		}
      @GetMapping("/update")
		public String showFormForUpdate(@RequestParam("empId") int theId,
										Model theModel) 
		{
			
			// get the User from our service
			User theUser = userService.getUserDetail(theId);	
			
			// set childDetail as a model attribute to pre-populate the form
			theModel.addAttribute("user", theUser);
			
			// send over to our form		
			return "User/newRegisterForm";
		}
		
}
