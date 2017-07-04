package com.serviceImp;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.DAO.AcadmicDetailDAO;
import com.entity.AcadmicDetail;
import com.service.AcadmicDetailService;
@Service
public class AcadmicDetailServiceImp implements AcadmicDetailService {
    @Autowired AcadmicDetailDAO acadmicDetailDAO;
	@Override
	@Transactional
	public List<AcadmicDetail> getAcadmicDetails() {
	
		return acadmicDetailDAO.getAcadmicDetails();
	}

	@Override
	@Transactional
	public void saveAcadmicDetail(AcadmicDetail theAcadmicDetail) {
		acadmicDetailDAO.saveAcadmicDetail(theAcadmicDetail);

	}

	@Override
	@Transactional
	public AcadmicDetail getAcadmicDetail(int theId) {
		
		return acadmicDetailDAO.getAcadmicDetail(theId);
	}

}
