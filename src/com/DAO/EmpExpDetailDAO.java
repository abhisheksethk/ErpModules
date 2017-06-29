package com.DAO;

import java.util.List;

import com.entity.EmpExpDetail;

public interface EmpExpDetailDAO 
{

	public List<EmpExpDetail> getEmpExpDetails();

	public void saveEmpExpDetail(EmpExpDetail theEmpExpDetail);

	public EmpExpDetail getEmpExpDetail(int theId);

}
