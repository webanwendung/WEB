<%@page import="de.hwg_lu.bw4s.beansPruefung.AccountBean"%>
<%@page import="java.sql.SQLException"%>
<%@page import="de.hwg_lu.bw.jdbc.NoConnectionException"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Anmeldung und Login</title>


</head><link href='../css/logUndReg.css' rel='stylesheet' type='text/css'>
<body class="reglog">
<jsp:useBean id="accountBean" class="de.hwg_lu.bw4s.beansPruefung.AccountBean" scope="session" />
<jsp:useBean id="loginBean" class="de.hwg_lu.bw4s.beansPruefung.LoginBean" scope="session" />

<form action="./LogUndRegAppl.jsp" method="get">

<div class="login-wrap">
	<div class="login-html">
		<input id="tab-1" type="radio" name="tab" class="sign-in" checked><label for="tab-1" class="tab">Log In</label>
		<input id="tab-2" type="radio" name="tab" class="sign-up"><label for="tab-2" class="tab">Registrieren</label>
		<div class="login-form">
			<div class="sign-in-htm">
				<div class="group">
					<label for="user" class="label">Username</label>
					<input name="userlogin" type="text" value="" class="input">
				</div>
				<div class="group">
					<label for="pass" class="label">Passwort</label>
					<input name="passlogin" type="password" class="input" value="" data-type="passwort">
				</div>
				<div class="group">
					<input name="check" type="checkbox" class="check" checked>
					<label for="check"><span class="icon"></span> Angemeldet bleiben?</label>
				</div>
				<div class="group">
					<input class="button" type="submit"   name="login" value="Log In">
				</div>
				<div class="hr"></div>
				<div class="foot-lnk">
					<a href="#forgot">Passwort vergessen?</a>
				</div>
			</div>
			<div class="sign-up-htm">
				<div class="group">
					<label for="user" class="label">Username</label>
					<input name="userreg" type="text" value="" class="input">
				</div>
				<div class="group">
					<label for="pass" class="label">Email Addresse</label>
					<input name="email" type="text" value="" class="input">
				</div>
				<div class="group">
					<label for="pass" class="label">Passwort</label>
					<input name="pass1" type="password" class="input" value="" >
				</div>
				<div class="group">
					<label for="pass" class="label">Passwort wiederholen</label>
					<input name="pass2" type="password" class="input" value="" >
				</div>
				
				 <label>	
		   		<input type="radio" name="geschlecht" value="M" /> männlich</label>
				<label><input type="radio" name="geschlecht" value="w"   /> weiblich</label> 
				<label><input type="radio" name="geschlecht" value="A" />anders</label><br><br>
			
				
				<div class="group">
					<input type="submit"  name="register" value="Registrieren" class="button">
				</div>
				<div class="hr"></div>
				<div class="foot-lnk">
					<label for="tab-1">Bereits Mitglied?</label>
				</div>
			</div>
		</div>
	</div>
</div></form>

</body>
</html>