package com.service;

import java.util.List;

import com.entity.AcadmicDetail;

public interface AcadmicDetailService 
{
	public List<AcadmicDetail> getAcadmicDetails();

	public void saveAcadmicDetail(AcadmicDetail theAcadmicDetail);

	public AcadmicDetail getAcadmicDetail(int theId);
}
