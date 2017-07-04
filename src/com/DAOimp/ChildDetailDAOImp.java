package com.DAOimp;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.DAO.ChildDetailDAO;
import com.entity.ChildDetail;

@Repository
public class ChildDetailDAOImp implements ChildDetailDAO {

	@Autowired
	private SessionFactory sessionFactory;
	@Override
	public List<ChildDetail> getChildDetails() {
		// get the current hibernate session
		Session currentSession = sessionFactory.getCurrentSession();
						
		// create a query  
		Query<ChildDetail> theQuery = 
					currentSession.createQuery("from  ChildDetail",
							ChildDetail.class);
				
		// execute query and get result list
		List<ChildDetail> childDetails = theQuery.getResultList();
						
		// return the results		
		return childDetails;
	}

	@Override
	public void saveChildDetail(ChildDetail theChildDetail) {

		// get current hibernate session
				Session currentSession = sessionFactory.getCurrentSession();
				
		// save/upate the ChildDetail
		currentSession.saveOrUpdate(theChildDetail);


	}

	@Override
	public ChildDetail getChildDetail(int theId) {
		// get the current hibernate session
				Session currentSession = sessionFactory.getCurrentSession();		
				// now retrieve/read from database using the primary key
				ChildDetail theChildDetail = currentSession.get(ChildDetail.class, theId);	
				return theChildDetail;	
	}

}
