
<%@ page import="java.io.*,java.util.*,javax.mail.*"%>
<%@ page import="javax.mail.internet.*,javax.activation.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*"%>
<%@page import="de.hwg_lu.bw4s.beansPruefung.LoginBean"%>
<%@page import="de.hwg_lu.bw4s.beansPruefung.KontakBean"%>
<%@page import="de.hwg_lu.bw4s.beansPruefung.AccountBean"%>
<%@page import="de.hwg_lu.bw4s.beansPruefung.HtmlExpresion"%>
<%@page import="java.sql.SQLException"%>
<%@page import="de.hwg_lu.bw.jdbc.NoConnectionException"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>Aktuelle Nachrichten</title>
<link rel="stylesheet" href="../css/Navigation.css">
</head>
<body>
	<jsp:useBean id="accountBean"
		class="de.hwg_lu.bw4s.beansPruefung.AccountBean" scope="session" />
	<jsp:useBean id="loginBean"
		class="de.hwg_lu.bw4s.beansPruefung.LoginBean" scope="session" />
	<jsp:useBean id="htmlexprexion"
		class="de.hwg_lu.bw4s.beansPruefung.HtmlExpresion" scope="session" />
	<jsp:useBean id="kontaktBean"
		class="de.hwg_lu.bw4s.beansPruefung.KontakBean" scope="session" />
		
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
String fromemail = request.getParameter("fromemail");
String telefon = request.getParameter("telefon");
String Message = request.getParameter("Message");

//String btnLogin = request.getParameter("login");
System.out.println(name);
System.out.println(fromemail);
System.out.println(telefon);
System.out.println(Message);
//Buttons
String senden = this.denullify(request.getParameter("senden"));
System.out.println(senden+"  sende-Button wurde geklickt  val " +request.getParameter("senden"));

if (senden.equals("Send_Message")){
	System.out.println("senden-Button wurde geklickt");

	
kontaktBean.setEmail(fromemail);
kontaktBean.setMessage(Message);
kontaktBean.setTelefon(telefon);
kontaktBean.setName(name);

kontaktBean.insertKontakt();
response.sendRedirect("../jsp/kontakt.jsp");

}
else   {
	System.out.println("Kein-Button wurde geklickt- aus kontakt");
response.sendRedirect("../jsp/willko.jsp");

}
%>	
</body>
</html>

