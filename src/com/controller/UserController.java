
package com.controller;

import org.hibernate.HibernateException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
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
        return "User/adminRegisterForm";
	}
	@PostMapping("/submit")
	public String submit(@ModelAttribute("user") User theUser)
	{  try
	   {
		userService.saveUser(theUser);
		return "User/adminRegisterConfirmation";
	   }
	   catch(HibernateException e)
	    {
		    return "User/adminRegisterForm";
	    }
	}
    @GetMapping("/signIn")
    public String loginForm(Model theModel)
    {
        User theUser=new User();
        theModel.addAttribute("user",theUser);
        return "User/userForm";
    }
   @PostMapping("/processLogin")
   public String processForm(@ModelAttribute("user") User theUser)
   {
	   return "User/loginConfirmation";
   }
    
}
