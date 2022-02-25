<%@page import="org.apache.jasper.tagplugins.jstl.core.ForEach"%>
<%@page import="de.hwg_lu.bw4s.beansPruefung.AccountBean"%>
<%@page import="de.hwg_lu.bw4s.beansPruefung.Tutorbeans"%>
<%@page import="de.hwg_lu.bw4s.beansPruefung.KontakBean"%>
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
<title>tutor Appl</title>
</head>
<body>
<jsp:useBean id="accountBean" class="de.hwg_lu.bw4s.beansPruefung.AccountBean" scope="session" />
<jsp:useBean id="loginBean" class="de.hwg_lu.bw4s.beansPruefung.LoginBean" scope="session" />
<jsp:useBean id="tutorBean" class="de.hwg_lu.bw4s.beansPruefung.Tutorbeans" scope="session" />
<jsp:useBean id="kontaktBean" class="de.hwg_lu.bw4s.beansPruefung.KontakBean" scope="session" />

<%!
public String denullify(String inputString){
	if (inputString == null) return ""; else return inputString;
//	return (inputString == null)?"":inputString;
}
public String[] denullify(String[] inputStringArray){
	if (inputStringArray == null) return new String[0]; else return inputStringArray;
}
%>
<%
//Eingabefelder

String keyEmail = request.getParameter("loeschen");
String key = request.getParameter("loeschenk");



//Buttons
String loeschen = this.denullify(request.getParameter("loeschen"));
String loeschenk = this.denullify(request.getParameter("loeschenk"));

if (loeschen.equals(keyEmail)){
	System.out.println("tutor" + keyEmail+" -Button wurde gelöcht");

		tutorBean.deleteTutor(keyEmail);
	
		response.sendRedirect("../jsp/showAlltutor.jsp");
	   
	   }
else if (loeschenk.equals(key)){
	System.out.println("kontakt von " + key+" -Button wurde gelöcht");

		kontaktBean.deletenachticht(key);
	
		response.sendRedirect("../jsp/showAllkontakt.jsp");
	   
	   }
else {
	System.out.println("kein Button wurde geklickt");
response.sendRedirect("../jsp/willko.jsp");
	
}


%>

</body>
</html>