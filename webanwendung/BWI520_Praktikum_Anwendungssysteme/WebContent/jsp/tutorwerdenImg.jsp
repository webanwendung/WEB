<%@page import="org.apache.jasper.tagplugins.jstl.core.ForEach"%>
<%@page import="de.hwg_lu.bw4s.beansPruefung.AccountBean"%>
<%@page import="de.hwg_lu.bw4s.beansPruefung.Tutorbeans"%>
<%@page import="java.sql.SQLException"%>
<%@page import="de.hwg_lu.bw.jdbc.NoConnectionException"%>

<%@ page import = "java.io.*,java.util.*, javax.servlet.*" %>
<%@ page import = "javax.servlet.http.*" %>
<%@ page import = "org.apache.commons.fileupload.*" %>
<%@ page import = "org.apache.commons.fileupload.disk.*" %>
<%@ page import = "org.apache.commons.fileupload.servlet.*" %>
<%@ page import = "org.apache.commons.io.output.*" %>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="../css/Navigation.css">
</head>
<body>
<jsp:useBean id="accountBean" class="de.hwg_lu.bw4s.beansPruefung.AccountBean" scope="session" />
<jsp:useBean id="loginBean" class="de.hwg_lu.bw4s.beansPruefung.LoginBean" scope="session" />
<jsp:useBean id="tutorBean" class="de.hwg_lu.bw4s.beansPruefung.Tutorbeans" scope="session" />


<%

String imgname="null";

   File file ;
   int maxFileSize = 5000 * 1024;
   int maxMemSize = 5000 * 1024;
   ServletContext context = pageContext.getServletContext();
   String filePath = context.getInitParameter("C:/Users/frank/git/BWI520_Praktikum_Anwendungssysteme_master/webanwendung/BWI520_Praktikum_Anwendungssysteme/WebContent/profilbilder/");
   filePath ="C:/Users/frank/git/BWI520_Praktikum_Anwendungssysteme_master/webanwendung/BWI520_Praktikum_Anwendungssysteme/WebContent/profilbilder/";
   // Verify the content type
   String contentType = request.getContentType();
  
   if ((contentType.indexOf("multipart/form-data") >= 0)) {
    DiskFileItemFactory factory = new DiskFileItemFactory();
    // maximum size stored in memory
    factory.setSizeThreshold(maxMemSize);
    
    // Location to save data that is larger than maxMemSize.
    factory.setRepository(new File("C:/Users/frank/git/BWI520_Praktikum_Anwendungssysteme_master/webanwendung/BWI520_Praktikum_Anwendungssysteme/WebContent/profilbilder/"));
 
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
             if( fileName.lastIndexOf("C:/Users/frank/git/BWI520_Praktikum_Anwendungssysteme_master/webanwendung/BWI520_Praktikum_Anwendungssysteme/WebContent/profilbilder/") >= 0 ) {
                file = new File( filePath +
                fileName.substring( fileName.lastIndexOf("C:/Users/frank/git/BWI520_Praktikum_Anwendungssysteme_master/webanwendung/BWI520_Praktikum_Anwendungssysteme/WebContent/profilbilder/"))) ;
             } else {
                file = new File( filePath +
                fileName.substring(fileName.lastIndexOf("C:/Users/frank/git/BWI520_Praktikum_Anwendungssysteme_master/webanwendung/BWI520_Praktikum_Anwendungssysteme/WebContent/profilbilder/")+1)) ;
                System.out.println("file vorhanden");
                response.sendRedirect("./willko.jsp");
             }
             fi.write( file ) ;
            // System.out.println(filePath +" mmmmmmmm?");
             System.out.println("Uploaded Filename: " + semester+" " +" " + fileName);
         	
             System.out.println(imgname);
         	tutorBean.setFotoname(imgname);
         	tutorBean.setUpdateFoto();
          }
       }
       response.sendRedirect("./willko.jsp");
       
    } catch(Exception ex) {
       System.out.println(ex);
    }
   } else {
	   response.sendRedirect("./willko.jsp");
    
   }
%>

</body>
</html>