
package com.DAOimp;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.DAO.EmpPerDetailDAO;
import com.entity.EmpPerDetail;

@Repository
public class EmpPerDetailDaoImp implements EmpPerDetailDAO {

	// need to inject the session factory
	@Autowired
	private SessionFactory sessionFactory;
	@Override
	public List<EmpPerDetail> getEmpPerDetails()
	{
		// get the current hibernate session
		Session currentSession = sessionFactory.getCurrentSession();
						
		// create a query  
		Query<EmpPerDetail> theQuery = 
					currentSession.createQuery("from  EmpPerDetail",
							EmpPerDetail.class);
				
		// execute query and get result list
		List<EmpPerDetail> empPerDetails = theQuery.getResultList();
						
		// return the results		
		return empPerDetails;
	}

	@Override
	public void saveEmpPerDetail(EmpPerDetail theEmpPerDetail)
	{
		// get current hibernate session
				Session currentSession = sessionFactory.getCurrentSession();
				
		// save/upate the EmpPerDetail
		currentSession.saveOrUpdate(theEmpPerDetail);
	}
	@Override
	public EmpPerDetail getEmpPerDetail(int theId)
	{
		// get the current hibernate session
		Session currentSession = sessionFactory.getCurrentSession();		
		// now retrieve/read from database using the primary key
		EmpPerDetail theEmpPerDetail = currentSession.get(EmpPerDetail.class, theId);	
		return theEmpPerDetail;	
	}
	@Override
	public void deleteEmpPerDetail(int theId)
	{
		// get the current hibernate session
		Session currentSession = sessionFactory.getCurrentSession();
				
		// delete object with primary key
		@SuppressWarnings("rawtypes")
		Query theQuery = 
				currentSession.createQuery("delete from EmpPerDetail where id=:empPerDetailId");
		theQuery.setParameter("empPerDetailId", theId);
				
		theQuery.executeUpdate();

	}

}
