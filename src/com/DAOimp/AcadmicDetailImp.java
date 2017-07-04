package com.DAOimp;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.DAO.AcadmicDetailDAO;
import com.entity.AcadmicDetail;

@Repository
public class AcadmicDetailImp implements AcadmicDetailDAO {
     
	@Autowired
	private SessionFactory sessionFactory;
	@Override
	public List<AcadmicDetail> getAcadmicDetails() {
		// get the current hibernate session
		Session currentSession = sessionFactory.getCurrentSession();
						
		// create a query  
		Query<AcadmicDetail> theQuery = 
					currentSession.createQuery("from  AcadmicDetail",
							AcadmicDetail.class);
				
		// execute query and get result list
		List<AcadmicDetail> acadmicDetails = theQuery.getResultList();
						
		// return the results		
		return acadmicDetails;
	}

	@Override
	public void saveAcadmicDetail(AcadmicDetail theAcadmicDetail) {

		// get current hibernate session
				Session currentSession = sessionFactory.getCurrentSession();
				
		// save/upate the AcadmicDetail
		currentSession.saveOrUpdate(theAcadmicDetail);


	}

	@Override
	public AcadmicDetail getAcadmicDetail(int theId) {
		// get the current hibernate session
				Session currentSession = sessionFactory.getCurrentSession();		
				// now retrieve/read from database using the primary key
				AcadmicDetail theAcadmicDetail = currentSession.get(AcadmicDetail.class, theId);	
				return theAcadmicDetail;	
	}

}
