<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>


<link href='../css/portailcss.css' rel='stylesheet' type='text/css'>
<body class="portail">
	<div class="wrap">

		<div class="html">
			<div class="header">
				<br> <br> <br> <br> <br> <br> <br>
				<img
					src="https://cdn2.iconfinder.com/data/icons/e-learning-outline-2/64/Education-global-pencil-world-512.png"
					style="width: 150px">
				<h1 class="f1">Willkommen bei Studcom, die Community von Studenten und für
					Studenten</h1>
				<h3>Hier erhältst du kostenlose Lernunterlagen und Antworten
					für dein Studium</h3>

				<h5>Studiere einfacher, schneller und besser.</h5>


				<br> <br>

				<form action="../jsp/willkommenAppl.jsp" method="get">
				
					
					<input class="button" type="submit"  name="kurse" value="zu den Lernunterlagen" ><br><br>				
					<input type="submit"  name="dok" value="Notizen hochladen" class="button"><br><br>				
					<input type="submit"  name="forum" value="eine Frage im Forum stellen" class="button"><br><br>
					<input type="submit"  name="register" value="Tutor finden" class="button"><br><br>
					<input type="submit"  name="register" value="Tutor werden" class="button"><br><br>
			</form>
			</div>
		</div>
	</div>
</body>
</html>