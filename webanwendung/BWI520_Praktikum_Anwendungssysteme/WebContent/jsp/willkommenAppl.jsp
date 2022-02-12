<%@page import="de.hwg_lu.bw4s.beansPruefung.AccountBean"%>
<%@page import="java.sql.SQLException"%>
<%@page import="de.hwg_lu.bw.jdbc.NoConnectionException"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<jsp:useBean id="accountBean" class="de.hwg_lu.bw4s.beansPruefung.AccountBean" scope="session" />
<jsp:useBean id="loginBean" class="de.hwg_lu.bw4s.beansPruefung.LoginBean" scope="session" />

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
String kursne = request.getParameter("kurse");
String dokn = request.getParameter("userlogin");
String passwordlogin = request.getParameter("passlogin");
String password = request.getParameter("pass1");
String password2 = request.getParameter("pass2");
String username = request.getParameter("userreg");
String email = request.getParameter("email");
//String btnLogin = request.getParameter("login");
//Buttons

String kurse = this.denullify(request.getParameter("kurse"));
String dok = this.denullify(request.getParameter("dok"));
String forum = this.denullify(request.getParameter("forum"));

if (kurse.equals("zu den Lernunterlagen")){
	System.out.println("kurse-Button wurde geklickt");
response.sendRedirect("../jsp/Chatview.jsp");
	
}
else if  (dok.equals("Notizen hochladen")){
	System.out.println("notizenhochladen-Button wurde geklickt");
response.sendRedirect("../jsp/upload.jsp");
	
}
else if  (forum.equals("eine Frage im Forum stellen")){
	System.out.println("forumseite-Button wurde geklickt");
response.sendRedirect("../forum/forums.html");
	
}



%>
</body>
</html>