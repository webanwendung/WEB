<%@page import="de.hwg_lu.bw4s.beansPruefung.LoginBean"%>
<%@page import="de.hwg_lu.bw4s.beansPruefung.AccountBean"%>
<%@page import="de.hwg_lu.bw4s.beansPruefung.HtmlExpresion"%>
<%@page import="java.sql.SQLException"%>
<%@page import="de.hwg_lu.bw.jdbc.NoConnectionException"%><%@ page
	language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>fachbereich überblick</title>
<link rel="stylesheet" href="../css/Navigation.css">
<link rel="stylesheet" href="../css/fachundvorlesung.css">

</head>

<body class="main">
	<jsp:useBean id="accountBean"
		class="de.hwg_lu.bw4s.beansPruefung.AccountBean" scope="session" />
	<jsp:useBean id="loginBean"
		class="de.hwg_lu.bw4s.beansPruefung.LoginBean" scope="session" />
	<jsp:useBean id="htmlexprexion"
		class="de.hwg_lu.bw4s.beansPruefung.HtmlExpresion" scope="session" />

	<!-- navigation als html Exprexion abgerufen -->
	<jsp:getProperty property="navigation" name="htmlexprexion" />




	<br>
	<br>
	<h1>Was Möchten Sie gerade Lernen?</h1>
	<br>

	<h2>Wähle deinen Studiengang und entdecke das Wesentliche deines
		Studiums mithilfe hochwertiger Lehrmaterialien!</h2>
	<br>
	<br>
	<br>


	<table>
		<tr>
			<td><div class="polaroid">
					<a href="../jsp/VorlesungenView.jsp"><img src="../img2/wi.png" alt="Wirtschaftsinformatik"></a>
					<div class="container">
						<p>Wirtschaftsinformatik</p>
					</div>
				</div></td>
			<td><div class="polaroid">
					<a href="../jsp/VorlesungenView.jsp"><img src="../img2/bwl.png" alt="Betriebwirtschaftslehre"></a>
					<div class="container">
						<p>Betriebwirtschaftslehre</p>
					</div>
				</div></td>
			<td><div class="polaroid">
				<a href="../jsp/VorlesungenView.jsp">	<img src="../img2/finanz.png" alt="Finanzwirtschaft"></a>
					<div class="container">
						<p>Finanzwirtschaft</p>
					</div>
				</div></td>
			<td><div class="polaroid">
					<a href="../jsp/VorlesungenView.jsp"><img src="../img/logistik.jpg" alt="Logistik"></a>
					<div class="container">
						<p>Logistik</p>
					</div>
				</div></td>
		</tr>
		<tr>
			<td><div class="polaroid">
				<a href="../jsp/VorlesungenView.jsp">	<img src="../img/marketing.jpg" alt="Marketing"></a>
					<div class="container">
						<p>Marketing</p>
					</div>
				</div></td>
			<td><div class="polaroid">
					<a href="../jsp/VorlesungenView.jsp"><img src="../img2/consolting.png" alt="Consulting"></a>
					<div class="container">
						<p>Consulting</p>
					</div>
				</div></td>
			<td><div class="polaroid">
					<a href="../jsp/VorlesungenView.jsp"><img src="../img2/pflege.jpg" alt=" Pflegepädagogik"></a>
					<div class="container">
						<p>Pflegepädagogik</p>
					</div>
				</div></td>
			<td><div class="polaroid">
					<a href="../jsp/VorlesungenView.jsp"><img src="../img2/projekt.jpg" alt="Projektmanagement"></a>
					<div class="container">
						<p>Projektmanagement</p>
					</div>
				</div></td>
		</tr>
	</table>

	<br>
	<br>

	


</body>

</html>