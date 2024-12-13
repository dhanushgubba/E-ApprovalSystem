<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="com.DB.*" %>
<%@page import="com.DAO.DocumentDAOImpl"%>
<%@page import="com.entity.DocumentDtls"%>
<%@page import="java.util.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>User:All Documents</title>
<%@include file="all_component/allCss.jsp"%>
<style type="text/css">
body {
	background-image: url('img/image6.jpg');
	background-size: cover;
	background-position: center;
	background-attachment: fixed;
	background-repeat: no-repeat;
}
</style>
</head>
<body>
<%@include file="all_component/navbar.jsp"%>
<div class="text-center">
<h4>Hello ${userobj.name }</h4>
<table class="table table-striped">
  <thead class="bg-primary text-white">
    <tr>
      <th scope="col">Id</th>
      <th scope="col">Image</th>
      <th scope="col">Document Name</th>
      <th scope="col">Document Description</th>
      <th scope="col">Document Type</th>
    </tr>
  </thead>
  <tbody>
  <%
  DocumentDAOImpl dao = new DocumentDAOImpl(DBConnect.getConn());
  List<DocumentDtls> list = dao.getAllDocuments();
  for(DocumentDtls d : list) {
  %>
    <tr>
      <th scope="row"><%= d.getDocumentId() %></th>
      <td><img src="document/<%= d.getDocfName() %>" style="width:50px;height:50px"></td>
      <td><%= d.getDocumentName() %></td>
      <td><%= d.getDocumentdesc() %></td>
      <td><%= d.getDocumenttype() %></td>
    </tr>
  <%
  }
  %>
  </tbody>
</table>
</div>
<div style="margin-top: 350px">
	<%@include file="all_component/footer.jsp"%>
</div>
</body>
</html>
