<%@ page import = "java.io.*, java.util.*, javax.mail.*"%>
<%@ page import = "javax.mail.internet.*, javax.activation.*"%>
<%@ page import = "javax.servlet.http.*, javax.servlet.*" %>



 
<%
   String result="";
  
   // Recipient's email ID needs to be mentioned.
   String to = "franktsidie@gmail.com";
 
   // Sender's email ID needs to be mentioned
   String from = "ftsidie@gmail.com";
 
   // Assuming email sent from localhost
   String host = "localhost";
 
   // Get properties object
   Properties properties = System.getProperties();
 
   // Setup mail server
   properties.setProperty("mail.smtp.host", host);
 
   // Get Session object.
   Session mailSession = Session.getDefaultInstance(properties);
 
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
    message.setContent("<h1>This is actual message</h1>", "text/html" );
    
    // Send message
    Transport.send(message);
    result = "Sent message successfully....";
   } catch (MessagingException mex) {
    mex.printStackTrace();
    result = "Error: unable to send message....";
   }
%>
 
<html>
   <head>
    <title>Send HTML Email using JSP</title>
   </head>
 
   <body>
 
       <h1>Send Email using JSP</h1>
    
             <%
          out.println("Result: " + result + "\n");
       %>
       </body>
</html>