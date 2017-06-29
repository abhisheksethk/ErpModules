package com.serviceImp;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.DAO.EmpPerDetailDAO;
import com.entity.EmpPerDetail;
import com.service.EmpPerDetailService;
@Service
public class EmpPerDetailServiceImp implements EmpPerDetailService {
  
	@Autowired
	private EmpPerDetailDAO empPerDetailDAO;
	@Override
	@Transactional
	public List<EmpPerDetail> getEmpPerDetails()
	{
	   return empPerDetailDAO.getEmpPerDetails();
	}

	@Override
	@Transactional
	public void saveEmpPerDetail(EmpPerDetail theEmpPerDetail) 
	{
		empPerDetailDAO.saveEmpPerDetail(theEmpPerDetail);
	}

	@Override
	@Transactional
	public EmpPerDetail getEmpPerDetail(int theId) {
		
		 return empPerDetailDAO.getEmpPerDetail(theId);
	}

	@Override
	@Transactional
	public void deleteEmpPerDetail(int theId)
	{
		empPerDetailDAO.deleteEmpPerDetail(theId);
	}

}
