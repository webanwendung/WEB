<%@page import="de.hwg_lu.bw4s.beansPruefung.Tutorbeans"%>
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
<link rel="stylesheet" href="../css/tutorfinden.css">


<title>Tutor finden</title>
</head>
<body>

	<jsp:useBean id="accountBean"
		class="de.hwg_lu.bw4s.beansPruefung.AccountBean" scope="session" />
	<jsp:useBean id="loginBean"
		class="de.hwg_lu.bw4s.beansPruefung.LoginBean" scope="session" />
	<jsp:useBean id="htmlexprexion"
		class="de.hwg_lu.bw4s.beansPruefung.HtmlExpresion" scope="session" />
	<jsp:useBean id="tutorBean" class="de.hwg_lu.bw4s.beansPruefung.Tutorbeans" scope="session"/>

	<!-- navigation als html Exprexion abgerufen -->
	<jsp:getProperty property="navigation" name="htmlexprexion" />

	<!-- erste muster prifile -->

	<!-- Add icon library -->
<div class="container-tuf">
 
 
 
 <br>
 <br>
 <br>
 <br>
 <br>

 <h1 class="uberschrift">Finde hier den Tutor der zu dir passt !</h1>
 <br>
 <br>
 
  <table>
		<tr>
			<td><div class="card">
					<img class="tuf" src="../profilbilder/franppp.jpg" alt="kein bild vorhanden" >
					<h1 class="name">Frank Tsidie</h1>
					<p class="title">
						wirtschaftinformatik<br>5.Semester
					</p>
					<p class="par">Hochschule Ludwigshafen</p>
					<a href="https://wa.me/015210657305" target="_blank"><i class="fa fa-whatsapp"></i></a> 
					<p>
						<a class="tuf-btn" href="mailto:ornelladougou@gmail.com?cc=studcomsuport@gmail.com  &bcc=ftsidie@gmail.com&subject=Mail from Studcom Tutorium&body=">Contact</a>
					</p>
				</div></td>
			<td><div class="card">
						<img class="tuf" src="../profilbilder/null.png" alt="kein bild vorhanden" >
					<h1 class="name">Frank Tsidie</h1>
					<p class="title">
						wirtschaftinformatik<br>5.Semester
					</p>
					<p class="par">Hochschule Ludwigshafen</p>
					<a href="https://wa.me/015210657305" target="_blank"><i class="fa fa-whatsapp"></i></a> 
					<p>
						<a class="tuf-btn" href="mailto:franktsidie@gmail.com?cc=studcomsuport@gmail.com  &bcc=ftsidie@gmail.com&subject=Mail from Studcom Tutorium&body=">Contact</a>
					</p>
				</div></td>
			<td><div class="card">
						<img class="tuf" src="../profilbilder/null.png" alt="kein bild vorhanden" >
					<h1 class="name">Frank Tsidie</h1>
					<p class="title">
						wirtschaftinformatik<br>5.Semester
					</p>
					<p class="par">Hochschule Ludwigshafen</p>
					<a href="https://wa.me/015210657305" target="_blank"><i class="fa fa-whatsapp"></i></a> 
					<p>
						<a class="tuf-btn" href="mailto:studcomsuport@gmail.com?cc=studcomsuport@gmail.com  &bcc=ftsidie@gmail.com&subject=Mail from Studcom Tutorium &body">Contact</a>
					</p>
				</div></td>
		</tr>
			</table> 

		
		<jsp:getProperty property="tutorsAsHtml" name="tutorBean"/>
			
</div>

 <button onclick="topFunction()" id="myBtn" title="Go to top">Back to top</button>
 <a class="mybBtn" href="../jsp/willko.jsp">&laquo; to Home</a>

<script>
//Get the button
var mybutton = document.getElementById("myBtn");

// When the user scrolls down 20px from the top of the document, show the button
window.onscroll = function() {scrollFunction()};

function scrollFunction() {
  if (document.body.scrollTop > 20 || document.documentElement.scrollTop > 20) {
    mybutton.style.display = "block";
  } else {
    mybutton.style.display = "none";
  }
}

// When the user clicks on the button, scroll to the top of the document
function topFunction() {
  document.body.scrollTop = 0;
  document.documentElement.scrollTop = 0;
}

</script>

</body>
</html>