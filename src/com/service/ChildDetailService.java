package com.service;

import java.util.List;

import com.entity.ChildDetail;

public interface ChildDetailService
{
	public List<ChildDetail> getChildDetails();

	public void saveChildDetail(ChildDetail theChildDetail);

	public ChildDetail getChildDetail(int theId);
}
