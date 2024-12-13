package com.DAO;

import java.util.List;

import com.entity.DocumentDtls;

public interface DocumentDAO {
	
	public boolean addDocuments(DocumentDtls d);
	
	public List<DocumentDtls> getAllDocuments();

}
