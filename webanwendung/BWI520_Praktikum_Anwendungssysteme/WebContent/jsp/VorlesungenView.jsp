<%@page import="de.hwg_lu.bw4s.beansPruefung.LoginBean"%>
<%@page import="de.hwg_lu.bw4s.beansPruefung.AccountBean"%>
<%@page import="de.hwg_lu.bw4s.beansPruefung.HtmlExpresion"%>
<%@page import="java.sql.SQLException"%>
<%@page import="de.hwg_lu.bw.jdbc.NoConnectionException"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html lang="en">
<head>

<title>fachbereichvorlesungen</title>

<link rel="stylesheet" href="../css/Navigation.css">
<link rel="stylesheet" href="../css/fachundvorlesung.css">


</head>

<body class="fach">
	<jsp:useBean id="accountBean"
		class="de.hwg_lu.bw4s.beansPruefung.AccountBean" scope="session" />
	<jsp:useBean id="loginBean"
		class="de.hwg_lu.bw4s.beansPruefung.LoginBean" scope="session" />
	<jsp:useBean id="htmlexprexion"
		class="de.hwg_lu.bw4s.beansPruefung.HtmlExpresion" scope="session" />

	<!-- navigation als html Exprexion abgerufen -->
	<jsp:getProperty property="navigation" name="htmlexprexion" />

	<!--  jetzt kommen die einzelne vorlesungen -->


	<br>
	<br>
	<h1>Wirtschaftsinformatik</h1>
	<br>
	<h2>Unsere Experten aus dem Bereich Wirtschatfsinfomatik haben dir
		hier alle wichtigen Themen für deinen Lernerfolg zusammen gestellt.</h2>
	<br>
	<br>
	<br>

	<table>
		<tr>
			<td><div class="polaroid">
					<img src="../img2/bwl.png" alt="ABWL">
					<div class="container">
						<p>Betriebwirtschaft</p>
					</div>
				</div></td>
			<td><div class="polaroid">
					<img src="../img2/math.png" alt="wirtschaftmathematik">
					<div class="container">
						<p>Wirtschaftmathematik</p>
					</div>
				</div></td>
			<td><div class="polaroid">
					<img src="../img2/stat.jpg" alt="Statistik">
					<div class="container">
						<p>Statistik</p>
					</div>
				</div></td>
			<td><div class="polaroid">
					<img src="../img2/finanz.png" alt="Finanzierung">
					<div class="container">
						<p>Finanzierung</p>
					</div>
				</div></td>
		</tr>
		<tr>
			<td><div class="polaroid">
					<img src="../img2/sapl.webp" alt="5 Terre">
					<div class="container">
						<p>ERP Systeme</p>
					</div>
				</div></td>
			<td><div class="polaroid">
					<img src="../img2/db.jpg" alt="Datenbank">
					<div class="container">
						<p>Datenbank</p>
					</div>
				</div></td>
			<td><div class="polaroid">
					<img src="../img2/bi.png" alt=" Business Intelligence">
					<div class="container">
						<p>Business Intelligence</p>
					</div>
				</div></td>
			<td><div class="polaroid">
					<img src="../img2/web.jpg" alt="Webanwendungen">
					<div class="container">
						<p>Webanwendungen</p>
					</div>
				</div></td>
		</tr>
		<tr>
			<td><div class="polaroid">
					<img src="../img2/englisch.png" alt="Englisch">
					<div class="container">
						<p>Englisch</p>
					</div>
				</div></td>
			<td><div class="polaroid">
					<img src="../img2/java.jpg" alt="programmierung"
						style="width: 100%">
					<div class="container">
						<p>Programmierung</p>
					</div>
				</div></td>
			<td><div class="polaroid">
					<img src="../img2/OIP.jpg" alt="Datasceince" style="width: 100%">
					<div class="container">
						<p>Datasceince</p>
					</div>
				</div></td>
			<td><div class="polaroid">
					<img src="../img2/triks.png" alt="tipps" style="width: 100%">
					<div class="container">
						<p>Tipps & Tricks</p>
					</div>
				</div></td>
		</tr>

	</table>
	<br>
	<br>
	<div class="footer">
		<h1>Dein Lernerfolg liegt uns am Herzen</h1>
		<br>
		<h3>Wir geben unser Bestes, um dir zu helfen, dein Studium
			erfolgreich zu absolvieren.</h3>
	</div>




</body>
</html>