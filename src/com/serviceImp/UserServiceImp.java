package com.serviceImp;

import org.springframework.stereotype.Service;
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

}
