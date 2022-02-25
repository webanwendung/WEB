<%@ page import = "java.io.*,java.util.*, javax.servlet.*" %>
<%@ page import = "javax.servlet.http.*" %>
<%@ page import = "org.apache.commons.fileupload.*" %>
<%@ page import = "org.apache.commons.fileupload.disk.*" %>
<%@ page import = "org.apache.commons.fileupload.servlet.*" %>
<%@ page import = "org.apache.commons.io.output.*" %>

<%@page import="org.apache.jasper.tagplugins.jstl.core.ForEach"%>
<%@page import="de.hwg_lu.bw4s.beansPruefung.AccountBean"%>
<%@page import="de.hwg_lu.bw4s.beansPruefung.Tutorbeans"%>
<%@page import="de.hwg_lu.bw4s.beansPruefung.KontakBean"%>
<%@page import="java.sql.SQLException"%>
<%@page import="de.hwg_lu.bw.jdbc.NoConnectionException"%>


<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>File Uploaded</title>
<link rel="stylesheet" href="../css/Navigation.css">
</head>
<body>
<jsp:useBean id="accountBean" class="de.hwg_lu.bw4s.beansPruefung.AccountBean" scope="session" />
<jsp:useBean id="loginBean" class="de.hwg_lu.bw4s.beansPruefung.LoginBean" scope="session" />
<jsp:useBean id="tutorBean" class="de.hwg_lu.bw4s.beansPruefung.Tutorbeans" scope="session" />
<jsp:useBean id="kontaktBean" class="de.hwg_lu.bw4s.beansPruefung.KontakBean" scope="session" />
<jsp:useBean id="saab" class="de.hwg_lu.bw4s.beansPruefung.ShowAllAccountsBean" scope="session" />

  <jsp:getProperty property="navigation" name="htmlexprexion"/>
         


<%
   File file ;
   int maxFileSize = 5000 * 1024;
   int maxMemSize = 5000 * 1024;
   ServletContext context = pageContext.getServletContext();
   String filePath = context.getInitParameter("C:/Users/frank/Dropbox/Wirtschaftsinformatik/5. Semester/Webanwendungen_praktikum/");
   filePath ="C:/Users/frank/Dropbox/Wirtschaftsinformatik/5. Semester/Webanwendungen_praktikum/";
   // Verify the content type
   String contentType = request.getContentType();
  
   if ((contentType.indexOf("multipart/form-data") >= 0)) {
    DiskFileItemFactory factory = new DiskFileItemFactory();
    // maximum size stored in memory
    factory.setSizeThreshold(maxMemSize);
    
    // Location to save data that is larger than maxMemSize.
    factory.setRepository(new File("C:/Users/frank/Dropbox/Wirtschaftsinformatik/5. Semester/Webanwendungen_praktikum/"));
 
    // Create a new file upload handler
    ServletFileUpload upload = new ServletFileUpload(factory);
    
    // maximum file size to be uploaded.
    upload.setSizeMax( maxFileSize );
    
    try {
       // Parse the request to get file items.
       List filesItems = upload.parseRequest(request);
       
       // Parse the request to get parameter.
       String file_name = (String) request.getParameter("file2");
       String semester = (String) request.getParameter("semester");
       String fach = (String) request.getParameter("fach");
 
       // Process the uploaded file items
       Iterator i = filesItems.iterator();
 
     
      
       while ( i.hasNext () ) {
          FileItem fi = (FileItem)i.next();
          if ( !fi.isFormField () ) {
             // Get the uploaded file parameters
             String fieldName = fi.getFieldName();
             String fileName = fi.getName();
             boolean isInMemory = fi.isInMemory();
             long sizeInBytes = fi.getSize();
          
             // Write the file
             if( fileName.lastIndexOf("C:/Users/frank/Dropbox/Wirtschaftsinformatik/5. Semester/Webanwendungen_praktikum/") >= 0 ) {
                file = new File( filePath +
                fileName.substring( fileName.lastIndexOf("C:/Users/frank/Dropbox/Wirtschaftsinformatik/5. Semester/Webanwendungen_praktikum/"))) ;
             } else {
                file = new File( filePath +
                fileName.substring(fileName.lastIndexOf("C:/Users/frank/Dropbox/Wirtschaftsinformatik/5. Semester/Webanwendungen_praktikum/")+1)) ;
                System.out.println("file vorhanden");
                response.sendRedirect("./upload.jsp");
             }
             fi.write( file ) ;
            // System.out.println(filePath +" mmmmmmmm?");
             System.out.println("Uploaded Filename: " + semester+" " +" " + fileName + "<br>");
          }
       }
       response.sendRedirect("./upload.jsp");
       
    } catch(Exception ex) {
       System.out.println(ex);
    }
   } else {
	   response.sendRedirect("./upload.jsp");
    
   }
%>