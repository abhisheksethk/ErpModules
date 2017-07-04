package com.DAOimp;
import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import com.DAO.UserDAO;
import com.entity.User;
@Repository
public class UserDAOImp implements UserDAO {
    
	// need to inject the session factory
	@Autowired
    private SessionFactory sessionFactory;
	@Override
	public void saveUser(User theUser)
	{
		// get current hibernate session
		Session currentSession = sessionFactory.getCurrentSession();
		
        // save/upate the EmpPerDetail
         currentSession.saveOrUpdate(theUser);
	}
	@Override
	public List<User> getUserDetails()
	{
		// get current hibernate session
		Session currentSession = sessionFactory.getCurrentSession();
		Query<User> theQuery = 
				currentSession.createQuery("from  User",
						User.class);
		List<User> userDetails = theQuery.getResultList();
		return userDetails;
	}
	
}
