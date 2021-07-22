<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<script type="text/javascript" src="../js/chat.js"></script>
</head>
<body>

	<h2>
		Willkommen zum BW4S-Chat <img src="../img/Coronavirus.jpg" width="200">
	</h2>
	<form action="./ChatAppl.jsp" method="get" onsubmit="return inputCheck (this)">
		<h5>Wie heißt du?</h5>
		Dein (Nick-)Name:<input type="text" name="userid" value=""> <input
			type="submit" name="eintritt" value="eintreten"><br>
		<br> Hier kannst du <a href="">nicht</a> chatten:=(

	</form>

</body>
</html>
