package com.DAO;

import java.util.List;

import com.entity.RequestDtls;

public interface RequestDAO {
	
	public boolean addRequests(RequestDtls r);
	
	public List<RequestDtls> getAllRequests();

}
