package com.DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.entity.DocumentDtls;

public class DocumentDAOImpl implements DocumentDAO{
	
	private Connection conn;

	public DocumentDAOImpl(Connection conn) {
		super();
		// TODO Auto-generated constructor stub
		this.conn = conn;
	}

	@Override
	public boolean addDocuments(DocumentDtls d) {
		// TODO Auto-generated method stub
		boolean f = false;
		try {
			String sql = "insert into document_dtls(documentname,documentdesc,documenttype,docf) values (?,?,?,?)";
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setString(1, d.getDocumentName());
			ps.setString(2, d.getDocumentdesc());
			ps.setString(3, d.getDocumenttype());
			ps.setString(4, d.getDocfName());
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
	public List <DocumentDtls> getAllDocuments() {
		// TODO Auto-generated method stub
		List<DocumentDtls> list = new ArrayList<DocumentDtls>();
		DocumentDtls d = null;
		try{
			String sql = "select * from document_dtls";
			PreparedStatement ps = conn.prepareStatement(sql);
			ResultSet rs = ps.executeQuery();
			while(rs.next()) {
				d = new DocumentDtls();
				d.setDocumentId(rs.getInt(1));
				d.setDocumentName(rs.getString(2));
				d.setDocumentdesc(rs.getString(3));
				d.setDocumenttype(rs.getString(4));
				d.setDocfName(rs.getString(5));
				list.add(d);
			}
			
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		return list;
	}
	
	
}
