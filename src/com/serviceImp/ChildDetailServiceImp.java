package com.serviceImp;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.DAO.ChildDetailDAO;
import com.entity.ChildDetail;
import com.service.ChildDetailService;
@Service
public class ChildDetailServiceImp implements ChildDetailService {
    @Autowired ChildDetailDAO childDetailDAO;
	@Override
	@Transactional
	public List<ChildDetail> getChildDetails() {
		
		return childDetailDAO.getChildDetails();
	}

	@Override
	@Transactional
	public void saveChildDetail(ChildDetail theChildDetail) {
		 childDetailDAO.saveChildDetail(theChildDetail);

	}

	@Override
	@Transactional
	public ChildDetail getChildDetail(int theId) {
		
		return childDetailDAO.getChildDetail(theId);
	}

}
