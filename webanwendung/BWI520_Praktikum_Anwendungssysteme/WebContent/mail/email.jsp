<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
 pageEncoding="ISO-8859-1"%>
<%@ page import="java.io.*, java.util.*, javax.mail.*"%>
<%@ page import="javax.mail.internet.*, javax.activation.*"%>
<%@ page import="javax.servlet.http.*, javax.servlet.*"%>

<%! public Session getMailSession() {
	  Properties props = System.getProperties();
	  props.setProperty( "mail.transport.protocol", "smtp" );
	  props.setProperty( "mail.store.protocol", "imap" );
	  props.setProperty( "mail.imap.partialfetch", "0" );
	  //logger.info( "Getting session" );
	  return Session.getDefaultInstance( props, null );
	} %>
<%

String result;
// Recipient's email ID needs to be mentioned.
String to = request.getParameter("to");
// Sender's email ID needs to be mentioned
String from = request.getParameter("from");
// Assuming email sent from localhost
String host = "localhost";
// Get properties object
Properties properties = System.getProperties();
// Setup mail server
properties.setProperty("mail.smtp.host", host);
// Get Session object.
Session mailSession = getMailSession();
try {
 // Create a MimeMessage object.
 MimeMessage message = new MimeMessage(mailSession);
 // Set From: header field
 message.setFrom(new InternetAddress(from));
 // Set To: header field
 message.addRecipient(Message.RecipientType.TO, new InternetAddress(to));
 // Set Subject: header field
 message.setSubject("Enter Subject Line!");
 // Send the HTML message
 message.setContent("<h1>This is actual message</h1>", "text/html");
 // Send message
 Transport.send(message);
 result = "Sent message successfully....";
} catch (MessagingException mex) {
 mex.printStackTrace();
 result = "Error: unable to send message....";
}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
 <h1>Send Email using JSP</h1>
 <%
 out.println("Result: " + result + "\n");
 %>
</body>
</html>