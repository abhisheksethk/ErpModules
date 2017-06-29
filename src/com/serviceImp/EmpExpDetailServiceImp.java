package com.serviceImp;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.DAO.EmpExpDetailDAO;
import com.DAO.EmpPerDetailDAO;
import com.entity.EmpExpDetail;
import com.service.EmpExpDetailService;
@Service
public class EmpExpDetailServiceImp implements EmpExpDetailService {
	@Autowired
	private EmpExpDetailDAO empExpDetailDAO;
	@Override
	@Transactional
	public List<EmpExpDetail> getEmpExpDetails() {
		return empExpDetailDAO.getEmpExpDetails();
	}

	@Override
	@Transactional
	public void saveEmpExpDetail(EmpExpDetail theEmpExpDetail) {
		
        empExpDetailDAO.saveEmpExpDetail(theEmpExpDetail);
	}

	@Override
	@Transactional
	public EmpExpDetail getEmpExpDetail(int theId)
	{
		return empExpDetailDAO.getEmpExpDetail(theId);
	}

}
