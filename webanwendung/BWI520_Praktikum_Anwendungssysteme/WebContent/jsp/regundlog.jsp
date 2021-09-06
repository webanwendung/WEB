<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Anmeldung und Login</title>
</head>

</head><link href='../css/logUndReg.css' rel='stylesheet' type='text/css'>
<body>

<div class="login-wrap">
	<div class="login-html">
		<input id="tab-1" type="radio" name="tab" class="sign-in" checked><label for="tab-1" class="tab">Log In</label>
		<input id="tab-2" type="radio" name="tab" class="sign-up"><label for="tab-2" class="tab">Registrieren</label>
		<div class="login-form">
			<div class="sign-in-htm">
				<div class="group">
					<label for="user" class="label">Username</label>
					<input id="user" type="text" class="input">
				</div>
				<div class="group">
					<label for="pass" class="label">Passwort</label>
					<input id="pass" type="password" class="input" data-type="passwort">
				</div>
				<div class="group">
					<input id="check" type="checkbox" class="check" checked>
					<label for="check"><span class="icon"></span> Angemeldet bleiben</label>
				</div>
				<div class="group">
					<input type="submit" class="button" value="Log In">
				</div>
				<div class="hr"></div>
				<div class="foot-lnk">
					<a href="#forgot">Passwort vergessen?</a>
				</div>
			</div>
			<div class="sign-up-htm">
				<div class="group">
					<label for="user" class="label">Username</label>
					<input id="user" type="text" class="input">
				</div>
				<div class="group">
					<label for="pass" class="label">Email Addresse</label>
					<input id="pass" type="text" class="input">
				</div>
				<div class="group">
					<label for="pass" class="label">Passwort</label>
					<input id="pass" type="password" class="input" data-type="passwort">
				</div>
				<div class="group">
					<label for="pass" class="label">Passwort wiederholen</label>
					<input id="pass" type="password" class="input" data-type="passwort">
				</div>
				
				 <label>	
		   		<input type="radio" name="geschlecht" value="M" /> männlich</label>
				<label><input type="radio" name="geschlecht" value="w"   /> weiblich</label> 
				<label><input type="radio" name="geschlecht" value="A" />anders</label><br><br>
			
				
				<div class="group">
					<input type="submit" class="button" value="Registrieren">
				</div>
				<div class="hr"></div>
				<div class="foot-lnk">
					<label for="tab-1">Bereits Mitglied?</label>
				</div>
			</div>
		</div>
	</div>
</div>

</body>
</html>