package com.entity;

public class DocumentDtls {
	
	private int documentId;
	private String documentName;
	private String documentdesc;
	private String documenttype;
	private String docfName;
	public DocumentDtls() {
		super();
		// TODO Auto-generated constructor stub
	}
	public DocumentDtls(String documentName, String documentdesc, String documenttype, String docfName) {
		super();
		this.documentName = documentName;
		this.documentdesc = documentdesc;
		this.documenttype = documenttype;
		this.docfName = docfName;		
	}
	public int getDocumentId() {
		return documentId;
	}
	public void setDocumentId(int documentId) {
		this.documentId = documentId;
	}
	public String getDocumentName() {
		return documentName;
	}
	public void setDocumentName(String documentName) {
		this.documentName = documentName;
	}
	public String getDocumentdesc() {
		return documentdesc;
	}
	public void setDocumentdesc(String documentdesc) {
		this.documentdesc = documentdesc;
	}
	public String getDocumenttype() {
		return documenttype;
	}
	public void setDocumenttype(String documenttype) {
		this.documenttype = documenttype;
	}
	public String getDocfName() {
		return docfName;
	}
	public void setDocfName(String docfName) {
		this.docfName = docfName;
	}	
}
