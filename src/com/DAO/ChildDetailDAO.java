package com.DAO;

import java.util.List;

import com.entity.ChildDetail;

public interface ChildDetailDAO 
{
	public List<ChildDetail> getChildDetails();

	public void saveChildDetail(ChildDetail theChildDetail);

	public ChildDetail getChildDetail(int theId);
}
