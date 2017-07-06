package com.serviceImp;

import org.springframework.stereotype.Service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.transaction.annotation.Transactional;

import com.DAO.UserDAO;
import com.entity.User;
import com.service.UserService;
@Service
public class UserServiceImp implements UserService {
    
	@Autowired
	private UserDAO userDAO;
	@Override
	@Transactional
	public void saveUser(User theUser)
	{
		userDAO.saveUser(theUser);      
	}
	@Override
	@Transactional
	public List<User> getUserDetails() {
		// TODO Auto-generated method stub
		return userDAO.getUserDetails();
	}
	@Override
	@Transactional
	public User getUserDetail(int theId) {
		// TODO Auto-generated method stub
		return userDAO.getUserDetail(theId);
	}

}
