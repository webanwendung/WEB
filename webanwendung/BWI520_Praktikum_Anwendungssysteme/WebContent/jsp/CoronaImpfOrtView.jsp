<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style>
@import url("../css/Bild.css");
</style>

<link rel="stylesheet" type="text/css" href="../css/Bild.css" />
<script type="text/javascript" src="../js/impfscript.js"></script>
</head>

<body>
<jsp:useBean id="CoronaBean"
		class="de.hwg_lu.bw4s.beansPruefung.CoronaImpfBean" scope="session" />
		<h1>BW4S Impf-Ort-Auswahl</h1>
		<img src="../img/Coronavirus.jpg"
		width= 100px
		 alt = "Bild nicht gefunden">
	
		<jsp:getProperty property="message" name="CoronaBean"/>
		<br> <br>
		<form action="CoronaImpfAppl.jsp" method="get"  onsubmit="return inputcheck(this)">
		<select name = "Impfort" > 
		<option>Ludwigshafen</option>
		<jsp:getProperty property="ortForDB" name="CoronaBean"/>
	
		</select>
		 
		<input type="submit" name="speichern" value="speichern" /></form>
</body>
</html>