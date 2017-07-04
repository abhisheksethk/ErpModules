package com.service;

import java.util.List;

import com.entity.User;

public interface UserService
{
	public void saveUser(User theUser);
	public List<User> getUserDetails();
}
