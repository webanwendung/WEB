<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<jsp:useBean id="cb" class="de.hwg_lu.bw4s.beansPruefung.ChatBean" scope="session"/>
<%
String userid= request.getParameter("userid");
String nachricht= request.getParameter("nachricht");
String eintreten= request.getParameter("eintreten");
String senden= request.getParameter("senden");
String zurueck = request.getParameter("zurueck");
String loeschen= request.getParameter("loeschen");
if(eintreten==null) eintreten="";
if(senden==null) senden="";
if(zurueck==null) zurueck="";
if(loeschen==null) loeschen="";

if(eintreten.equals("eintreten")){
	cb.setUserid(userid);
	//cb.writeToDB();
	response.sendRedirect("./ChatView2.jsp");
}else if(senden.equals("senden")){
	
	cb.setNachricht(nachricht);
	cb.addNachricht();
	response.sendRedirect("./ChatView2.jsp");
}else if(zurueck.equals("zurueck")){
	response.sendRedirect("./ChatView1-632104.jsp");
} else if(loeschen.equals("loeschen")){
	cb.loescheAlles();
	response.sendRedirect("./ChatView2.jsp");
} else{
	response.sendRedirect("./ChatView1-632104.jsp");

}





%>
</body>
</html>