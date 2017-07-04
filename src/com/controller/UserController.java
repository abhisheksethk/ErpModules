
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


import com.entity.User;
import com.service.UserService;



@Controller
@RequestMapping("/user")
public class UserController
{
	@Autowired
	private UserService userService;
	@GetMapping("/signUp")
	public String registration(Model theModel)
	{
		User theUser=new User();
        theModel.addAttribute("user",theUser);
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
   public String processForm(@Valid @ModelAttribute("user") User theUser,Model theModel,HttpSession session ,BindingResult theBindingResult) throws Exception
    {   
	   
	   if(theUser==null)
	   {
		   return "redirect:/user/signIn";
	   }
	   List<User>   userDetail= userService.getUserDetails();
	   try{
	    if(validateUser(theUser,userDetail))
	     {  
	    	if(theUser.getSerial()==1)
	    	{
	    		session.setAttribute("userId",theUser.getUserId());
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
	    		
		   if((x.getSerial()==temp.getSerial()&&x.getEmail().equals(temp.getEmail()))&&(x.getUserName().equals(temp.getUserName())&&x.getPassword().equals(temp.getPassword())))
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
}
