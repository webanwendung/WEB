
<%@page import="de.hwg_lu.bw4s.beansPruefung.LoginBean"%>
<%@page import="de.hwg_lu.bw4s.beansPruefung.AccountBean"%>
<%@page import="de.hwg_lu.bw4s.beansPruefung.HtmlExpresion"%>
<%@page import="java.sql.SQLException"%>
<%@page import="de.hwg_lu.bw.jdbc.NoConnectionException"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>Webpage Design</title>
<link rel="stylesheet" href="../css/Navigation.css">
</head>
<body>
	<jsp:useBean id="accountBean"
		class="de.hwg_lu.bw4s.beansPruefung.AccountBean" scope="session" />
	<jsp:useBean id="loginBean"
		class="de.hwg_lu.bw4s.beansPruefung.LoginBean" scope="session" />
	<jsp:useBean id="htmlexprexion"
		class="de.hwg_lu.bw4s.beansPruefung.HtmlExpresion" scope="session" />


	<jsp:getProperty property="navigation" name="htmlexprexion" />




	<div class="content">
		<form action="../jsp/willkommenAppl.jsp" method="get">

			<h1>
				Willkommen bei <br>
				<span>STUDCOM</span> <br>Lernplatform
			</h1>
			<p class="par">
				die Community von Studenten und für Studenten <br> Hier
				erhältst du kostenlose Lernunterlagen und Antworten für dein
				Studium. <br> Studiere einfacher, schneller und besser.
			</p>


			<input class="cn" type="submit" name="kurse"
				value="zu den Lernunterlagen"><br>
			<br> <input type="submit" name="dok" value="Notizen hochladen"
				class="cn"> <input type="submit" name="forum"
				value="eine Frage im Forum stellen" class="cn"><br>
			<br> <input type="submit" name="tuf" value="Tutor finden"
				class="cn"> <input type="submit" name="tuw"
				value="Tutor werden" class="cn"><br>
			<br>




		</form>

		<jsp:getProperty property="loginauftrag" name="loginBean" />


	</div>

	<script src="https://unpkg.com/ionicons@5.4.0/dist/ionicons.js"></script>
</body>
</html>