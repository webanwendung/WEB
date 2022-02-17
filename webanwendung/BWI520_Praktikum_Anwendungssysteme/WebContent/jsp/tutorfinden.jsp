<%@page import="de.hwg_lu.bw4s.beansPruefung.LoginBean"%>
<%@page import="de.hwg_lu.bw4s.beansPruefung.AccountBean"%>
<%@page import="de.hwg_lu.bw4s.beansPruefung.HtmlExpresion"%>
<%@page import="java.sql.SQLException"%>
<%@page import="de.hwg_lu.bw.jdbc.NoConnectionException"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" href="../css/Navigation.css">
<link rel="stylesheet" href="../css/tutor.css">
<link rel="stylesheet" href="../css/aboutus.css">

<title>Tutor finden</title>
</head>
<body>

	<jsp:useBean id="accountBean"
		class="de.hwg_lu.bw4s.beansPruefung.AccountBean" scope="session" />
	<jsp:useBean id="loginBean"
		class="de.hwg_lu.bw4s.beansPruefung.LoginBean" scope="session" />
	<jsp:useBean id="htmlexprexion"
		class="de.hwg_lu.bw4s.beansPruefung.HtmlExpresion" scope="session" />

	<!-- navigation als html Exprexion abgerufen -->
	<jsp:getProperty property="navigation" name="htmlexprexion" />

	<!-- erste muster prifile -->

	<!-- Add icon library -->
<div class="container">
	<table style="alignborder-left: center;">
		<tr>
			<td><div class="card">
					<img src="../img/pp1.jpg" alt="John" style="width: 100%"
						height="50%">
					<h1 class="name">Frank Tsidie</h1>
					<p class="title">
						wirtschaftinformatik<br>5.Semester
					</p>
					<p class="par">Hochschule Ludwigshafen</p>
					<a href="#"><i class="fa fa-whatsapp"></i></a> <a href="#"><i
						class="fa fa-twitter"></i></a> <a href="#"><i
						class="fa fa-linkedin"></i></a> <a href="#"><i
						class="fa fa-facebook"></i></a>
					<p>
						<button>Contact</button>
					</p>
				</div></td>
			<td><div class="card">
					<img src="../img/pp1.jpg" alt="John" style="width: 100%"
						height="50%">
					<h1 class="name">Frank Tsidie</h1>
					<p class="title">
						wirtschaftinformatik<br>5.Semester
					</p>
					<p class="par">Hochschule Ludwigshafen</p>
					<a href="#"><i class="fa fa-whatsapp"></i></a> <a href="#"><i
						class="fa fa-twitter"></i></a> <a href="#"><i
						class="fa fa-linkedin"></i></a> <a href="#"><i
						class="fa fa-facebook"></i></a>
					<p>
						<button>Contact</button>
					</p>
				</div></td>
			<td><div class="card">
					<img src="../img/pp1.jpg" alt="John" style="width: 100%"
						height="50%">
					<h1 class="name">Frank Tsidie</h1>
					<p class="title">
						wirtschaftinformatik<br>5.Semester
					</p>
					<p class="par">Hochschule Ludwigshafen</p>
					<a href="#"><i class="fa fa-whatsapp"></i></a> <a href="#"><i
						class="fa fa-twitter"></i></a> <a href="#"><i
						class="fa fa-linkedin"></i></a> <a href="#"><i
						class="fa fa-facebook"></i></a>
					<p>
						<button>Contact</button>
					</p>
				</div></td>
		</tr>
		<tr>
			<td><div class="column">
					<div class="card">
						<img src="../img/franppp.jpg" alt="Douogouo" style="width: 100%">
						<div class="container">
							<h2>Ornella Dougouo</h2>
							<p class="title">enwiklung</p>
							<p>ich werde hier eien becshreibende text uber sie später
								schreiben</p>
							<p>morelle@example.com</p>
							<p>
								<a class="button"
									href="mailto:ornelladougou@gmail.com?cc=studcom.support@gmail.com  &bcc=ftsidie@gmail.com&subject=Mail from Studcom&body=Dear Ornella, ...">contact</a>
							</p>
						</div>
					</div>
				</div></td>
			<td><div class="column">
					<div class="card">
						<img src="../img/franppp.jpg" alt="Douogouo" style="width: 100%">
						<div class="container">
							<h2>Ornella Dougouo</h2>
							<p class="title">enwiklung</p>
							<p>ich werde hier eien becshreibende text uber sie später
								schreiben</p>
							<p>morelle@example.com</p>
							<p>
								<a class="button"
									href="mailto:ornelladougou@gmail.com?cc=studcom.support@gmail.com  &bcc=ftsidie@gmail.com&subject=Mail from Studcom&body=Dear Ornella, ...">contact</a>
							</p>
						</div>
					</div>
				</div>
				</td>
			<td><div class="column">
					<div class="card">
						<img src="../img/franppp.jpg" alt="Douogouo" style="width: 100%">
						<div class="container">
							<h2>Ornella Dougouo</h2>
							<p class="title">enwiklung</p>
							<p>ich werde hier eien becshreibende text uber sie später
								schreiben</p>
							<p>morelle@example.com</p>
							<p>
								<a class="button"
									href="mailto:ornelladougou@gmail.com?cc=studcom.support@gmail.com  &bcc=ftsidie@gmail.com&subject=Mail from Studcom&body=Dear Ornella, ...">contact</a>
							</p>
						</div>
					</div>
				</div></td>
		</tr>

	</table>

</div>




</body>
</html>