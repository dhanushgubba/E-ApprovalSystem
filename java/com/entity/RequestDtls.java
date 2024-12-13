package com.entity;

public class RequestDtls {

	
	private int requestId;
	private String requestname;
	private String title;
	private String description;
	private String status;
	
	public RequestDtls() {
		super();
		// TODO Auto-generated constructor stub
	}
	public RequestDtls(String requestname, String title, String description, String status) {
		super();
		this.requestname = requestname;
		this.title = title;
		this.description = description;
		this.status = status;
	}
	public int getRequestId() {
		return requestId;
	}
	public void setRequestId(int requestId) {
		this.requestId = requestId;
	}
	public String getRequestname() {
		return requestname;
	}
	public void setRequestname(String requestname) {
		this.requestname = requestname;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	@Override
	public String toString() {
		return "RequestDtls [requestId=" + requestId + ", requestname=" + requestname + ", title=" + title
				+ ", description=" + description + ", status=" + status + "]";
	}
	

}
