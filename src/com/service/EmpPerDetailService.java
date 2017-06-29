package com.service;

import java.util.List;

import com.entity.EmpPerDetail;

public interface EmpPerDetailService
{
	public List<EmpPerDetail> getEmpPerDetails();

	public void saveEmpPerDetail(EmpPerDetail theEmpPerDetail);

	public EmpPerDetail getEmpPerDetail(int theId);

	public void deleteEmpPerDetail(int theId);
}
