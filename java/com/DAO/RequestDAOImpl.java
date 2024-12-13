package com.DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.entity.RequestDtls;

public class RequestDAOImpl implements RequestDAO {
	
	private Connection conn;
		
	public RequestDAOImpl(Connection conn) {
		super();
		// TODO Auto-generated constructor stub
		this.conn = conn;
	}

	@Override
	public boolean addRequests(RequestDtls r) {
		boolean f = false;
		try {
			String sql = "insert into request_dtls(requestname,title,description,status)values(?,?,?,?)";
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setString(1, r.getRequestname());
			ps.setString(2, r.getTitle());
			ps.setString(3, r.getDescription());
			ps.setString(4, r.getStatus());
			
			int i = ps.executeUpdate();
			if(i==1) {
				f=true;
			}
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		
		return f;
	}

	@Override
	public List<RequestDtls> getAllRequests() {
		// TODO Auto-generated method stub
		List<RequestDtls> list = new ArrayList<RequestDtls>();
		RequestDtls r=null;
		try {
			String sql = "select * from request_dtls";
			PreparedStatement ps = conn.prepareStatement(sql);
			
			ResultSet rs = ps.executeQuery();
			while(rs.next()) {
				r = new RequestDtls();
				r.setRequestId(rs.getInt(1));
				r.setRequestname(rs.getString(2));
				r.setTitle(rs.getString(3));
				r.setDescription(rs.getString(4));
				r.setStatus(rs.getString(5));
				
				list.add(r);
				
			}
		}catch(Exception e) {
			e.printStackTrace();
		}
		return list;
	}
	

}
