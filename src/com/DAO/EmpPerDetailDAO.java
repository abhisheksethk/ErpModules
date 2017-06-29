package com.DAO;

import java.util.List;

import com.entity.EmpPerDetail;

public interface EmpPerDetailDAO 
{
	public List<EmpPerDetail> getEmpPerDetails();

	public void saveEmpPerDetail(EmpPerDetail theEmpPerDetail);

	public EmpPerDetail getEmpPerDetail(int theId);

	public void deleteEmpPerDetail(int theId);

}
