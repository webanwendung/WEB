
<%@ page import="java.io.*,java.util.*,javax.mail.*"%>
<%@ page import="javax.mail.internet.*,javax.activation.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*"%>
<%@page import="de.hwg_lu.bw4s.beansPruefung.LoginBean"%>
<%@page import="de.hwg_lu.bw4s.beansPruefung.KontakBean"%>
<%@page import="de.hwg_lu.bw4s.beansPruefung.AccountBean"%>
<%@page import="de.hwg_lu.bw4s.beansPruefung.HtmlExpresion"%>
<%@page import="java.sql.SQLException"%>
<%@page import="de.hwg_lu.bw.jdbc.NoConnectionException"%>
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

//Buttons
String senden = this.denullify(request.getParameter("senden"));
System.out.println(senden+"  sende-Button wurde geklickt  val " +request.getParameter("senden"));

if (senden.equals("Send Message")){
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
<%/*
String result;
//Recipient’s email ID needs to be mentioned.
String to = "franktsidie@gmail.com";

// Sender’s email ID needs to be mentioned
String from = "studcomsuport@gmail.com";
final String tousername = "studcomsuport@gmail.com";
final String topassword = "ciulLav9.";

// Assuming you are sending email through relay.jangosmtp.net
String host = "relay.jangosmtp.net";

Properties props = new Properties();
props.put("mail.smtp.auth", "true");
props.put("mail.smtp.starttls.enable", "true");
props.put("mail.smtp.host", host);
props.put("mail.smtp.port", "25");

//Get the Session object.
Session mailSession = Session.getInstance(props,
new javax.mail.Authenticator() {
protected PasswordAuthentication getPasswordAuthentication() {
return new PasswordAuthentication(tousername,
topassword);
}
});

try {
// Create a default MimeMessage object.
Message message = new MimeMessage(mailSession);

// Set From: header field of the header.
message.setFrom(new InternetAddress(from));

// Set To: header field of the header.
message.setRecipients(Message.RecipientType.TO,
InternetAddress.parse(to));

// Set Subject: header field
message.setSubject("Testing Subject");

// Now set the actual message
message.setText("Hello, this is sample for to check send "
+ "email using JavaMailAPI in JSP ");

// Send message
Transport.send(message);

System.out.println("Sent message successfully….");
result = "Sent message successfully….";

} catch (MessagingException e) {
e.printStackTrace();
result = "Error: unable to send message….";

}
*/%>


<h1>Send Email using JSP</h1>

<p align="center">
<%
//out.println("Result: " + result + "\n");
%>
</p>
</body>
</html>
