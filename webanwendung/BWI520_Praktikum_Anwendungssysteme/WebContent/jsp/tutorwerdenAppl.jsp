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
<title>tutor Appl</title>
</head>
<body>
<jsp:useBean id="accountBean" class="de.hwg_lu.bw4s.beansPruefung.AccountBean" scope="session" />
<jsp:useBean id="loginBean" class="de.hwg_lu.bw4s.beansPruefung.LoginBean" scope="session" />
<jsp:useBean id="tutorBean" class="de.hwg_lu.bw4s.beansPruefung.Tutorbeans" scope="session" />

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
String name = request.getParameter("name");
String wohnort = request.getParameter("Wohnort");
String email = request.getParameter("email");
String tel = request.getParameter("tel");
String Studiengang = request.getParameter("stg");
String alter = request.getParameter("alter");
String message = request.getParameter("message");
String[] Cours=request.getParameterValues("Cours");
String journee=request.getParameter("journee");
String journee2=request.getParameter("journee2");
String niveau = request.getParameter("niveau");
String[] styleCours = request.getParameterValues("styleCours");
String semester = request.getParameter("number");

String coursestring="";

for (int i = 0; i < Cours.length; i++) {
	System.out.println(Cours[i]);
	coursestring+=Cours[i];
}
String coursestyllestring="";
for (int i = 0; i < styleCours.length; i++) {
	System.out.println(styleCours[i]);
	coursestyllestring=styleCours[i];
}
//String btnLogin = request.getParameter("login");

System.out.println(name);
System.out.println(wohnort);
System.out.println(email);
System.out.println(tel);
System.out.println(Studiengang);
System.out.println(alter);
System.out.println(message);

System.out.println(journee);
System.out.println(journee2);
System.out.println(niveau);

System.out.println(semester);



//Buttons
String senden = this.denullify(request.getParameter("senden"));

if (senden.equals("senden")){
	System.out.println("registrierung-Button wurde geklickt");
	
	
	
	
	   
	   tutorBean.setSemesterzahl(semester);
		tutorBean.setName(name);
		tutorBean.setWohnort(wohnort);
		tutorBean.setJournee(journee);
		tutorBean.setJournee2(journee2);
		tutorBean.setMessage(message);
		tutorBean.setAlter(alter);
		tutorBean.setEmail(email);
		tutorBean.setUnterrichtet(coursestring);
		tutorBean.setUnterrichstill(coursestyllestring);
		tutorBean.setNiveau(niveau);
		tutorBean.setTel(tel);
		
		
		tutorBean.insertAccount();
	
		response.sendRedirect("../jsp/tutorWerden.jsp");
	   
	   }
else {
	System.out.println("kein Button wurde geklickt");
response.sendRedirect("../jsp/willko.jsp");
	
}


%>
</body>
</html>