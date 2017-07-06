package com.DAO;

import java.util.List;


import com.entity.User;

public interface UserDAO
{
	public void saveUser(User theUser);
	public List<User> getUserDetails();
	public User getUserDetail(int theId);
}
