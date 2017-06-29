package com.DAO;

import java.util.List;

import com.entity.AcadmicDetail;

public interface AcadmicDetailDAO 
{
	public List<AcadmicDetail> getAcadmicDetails();

	public void saveAcadmicDetail(AcadmicDetail theAcadmicDetail);

	public AcadmicDetail getAcadmicDetail(int theId);
}
