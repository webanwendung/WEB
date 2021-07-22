<%@page import="de.hwg_lu.bw4s.beansPruefung.ChatBeanf"%>
<%@page import="de.hwg_lu.bw4s.beansPruefung.ChatBean"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="../css/Coronavirus.css"/>
</head>
<body>
<jsp:useBean id="cb" class="de.hwg_lu.bw4s.beansPruefung.ChatBean" scope="session"/>
<h2>Willkommen zum BW4S-Chat<img  src="../img/Coronavirus.jpg" width="100"/></h2><br>
<p>Wie heißt du?</p>
<form action="./ChatAppl.jsp">
Dein (Nick-)Name:
<input type="text" name="userid" value=""/>
<input type="submit" name="eintreten" value="eintreten"/>
<br><br>
Hier kannst du <a href="./Impressum.jsp"> nicht</a> chatten






</form>

</body>
</html>