package com.service;

import java.util.List;

import com.entity.EmpExpDetail;

public interface EmpExpDetailService 
{

	public List<EmpExpDetail> getEmpExpDetails();

	public void saveEmpExpDetail(EmpExpDetail theEmpExpDetail);

	public EmpExpDetail getEmpExpDetail(int theId);

}
