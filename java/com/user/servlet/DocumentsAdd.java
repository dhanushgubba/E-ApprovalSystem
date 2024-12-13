package com.user.servlet;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;

import com.DAO.DocumentDAOImpl;
import com.DB.DBConnect;
import com.entity.DocumentDtls;

@WebServlet("/add_documents")
@MultipartConfig
public class DocumentsAdd extends HttpServlet {
    private static final long serialVersionUID = 1L;

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String documentName = req.getParameter("documentname");
        String documentdesc = req.getParameter("documentdesc");
        String documenttype = req.getParameter("documenttype");
        
        Part part = req.getPart("docf");
        String fileName = part.getSubmittedFileName();
        
        DocumentDtls d = new DocumentDtls(documentName, documentdesc, documenttype, fileName);
        DocumentDAOImpl dao = new DocumentDAOImpl(DBConnect.getConn());

        String path = "C:\\Users\\G.V.NAGA DHANUSH\\EAP-7.3.0\\standalone\\deployments\\E-Approvalproject.war\\document";
      
        File uploadDir = new File(path);
        if (!uploadDir.exists()) {
            uploadDir.mkdirs();
        }

        // Save the file to the specified path
        try (InputStream inputStream = part.getInputStream();
             FileOutputStream outputStream = new FileOutputStream(new File(path, fileName))) {
             
            byte[] buffer = new byte[1024];
            int bytesRead = -1;
            while ((bytesRead = inputStream.read(buffer)) != -1) {
                outputStream.write(buffer, 0, bytesRead);
            }
        }

        boolean f = dao.addDocuments(d);
        
        HttpSession session = req.getSession();
        
        if (f) {
            session.setAttribute("succMsg", "Document Added Successfully");
            resp.sendRedirect("add_documents.jsp");
        } else {
            session.setAttribute("failedMsg", "Something went wrong on the server");
            resp.sendRedirect("add_documents.jsp");
        }
    }
}
