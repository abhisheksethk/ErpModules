package com.DAOimp;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
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

}
