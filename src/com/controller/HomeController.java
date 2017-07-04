package com.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.entity.User;
import com.service.UserService;
@Controller
public class HomeController
    {  
	@Autowired
	private UserService userService;
	    @RequestMapping("/")
	    public String homeShow(Model theModel)
	    {
	      // get the serial from our User database
			List<User> theUser = userService.getUserDetails();
			if(theUser.isEmpty())
			 return "redirect:/user/signUp";
	        return "redirect:/user/signIn";
	    }
	}