package com.DAOimp;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.DAO.EmpExpDetailDAO;
import com.entity.EmpExpDetail;
@Repository
public class EmpExpDetailDaoImp implements EmpExpDetailDAO {
    
	@Autowired
	private SessionFactory sessionFactory;
	@Override
	public List<EmpExpDetail> getEmpExpDetails() {
		// get the current hibernate session
				Session currentSession = sessionFactory.getCurrentSession();
								
				// create a query  
				Query<EmpExpDetail> theQuery = 
							currentSession.createQuery("from  EmpExpDetail",
									EmpExpDetail.class);
						
				// execute query and get result list
				List<EmpExpDetail> empExpDetails = theQuery.getResultList();
								
				// return the results		
				return empExpDetails;
	}

	@Override
	public void saveEmpExpDetail(EmpExpDetail theEmpExpDetail) {

		// get current hibernate session
				Session currentSession = sessionFactory.getCurrentSession();
				
		// save/upate the EmpPerDetail
		currentSession.saveOrUpdate(theEmpExpDetail);

	}

	@Override
	public EmpExpDetail getEmpExpDetail(int theId) {

		// get the current hibernate session
		Session currentSession = sessionFactory.getCurrentSession();		
		// now retrieve/read from database using the primary key
		EmpExpDetail theEmpExpDetail = currentSession.get(EmpExpDetail.class, theId);	
		return theEmpExpDetail;	
	}

}
