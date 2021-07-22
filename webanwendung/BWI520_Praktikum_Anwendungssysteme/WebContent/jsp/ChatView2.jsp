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
<h2>BW4S-Chat<img  src="../img/Coronavirus.jpg" width="100"/></h2>
<form action="./ChatAppl.jsp" method="get">
<p><jsp:getProperty  name="cb" property="userid"/></p>
Sag was:
<input type="text" name="nachricht" value="">
<input type="submit" name="senden" value="senden">
<br><br>
<input type="submit" name="zurueck" value="zurueck">
<input type="submit" name="loeschen" value="loeschen">
<br><br>
<%= cb.getEintragForHtml() %>

</form>
</body>
</html>