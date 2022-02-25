
<%@page import="de.hwg_lu.bw4s.beansPruefung.LoginBean"%>
<%@page import="de.hwg_lu.bw4s.beansPruefung.AccountBean"%>
<%@page import="de.hwg_lu.bw4s.beansPruefung.Tutorbeans"%>
<%@page import="de.hwg_lu.bw4s.beansPruefung.HtmlExpresion"%>
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
<jsp:useBean id="accountBean"
		class="de.hwg_lu.bw4s.beansPruefung.AccountBean" scope="session" />
	<jsp:useBean id="loginBean"
		class="de.hwg_lu.bw4s.beansPruefung.LoginBean" scope="session" />
	<jsp:useBean id="htmlexprexion"
		class="de.hwg_lu.bw4s.beansPruefung.HtmlExpresion" scope="session" />
	<jsp:useBean id="tutorBean"
		class="de.hwg_lu.bw4s.beansPruefung.Tutorbeans" scope="session" />

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
					<input name="check" type="checkbox"  value="" >
					 Angemeldet bleiben?
				</div>
				<div class="group">
					<input class="button" type="submit"   name="login" value="Log In">
				</div>
				<div class="hr"></div>
				<div class="foot-lnk">
					<button class="foot_verg" type="submit" name="passvergessen" value="Passwort vergessen">Passwort vergessen</button>
					
					<jsp:getProperty property="loggin" name="accountBean"/>
					
					
					
					<p id="demo"></p>
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
					<input name="pass" id="pass" type="password" class="input" value=""  pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}" title="Must contain at least one number and one uppercase and lowercase letter, and at least 8 or more characters"  >
				</div>
				<div class="group">
					<label for="pass" class="label" >Passwort wiederholen</label>
					<input name="pass2" type="password" class="input" value="" title="enter the password again"  >
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
					
					<div id="message">
					  <h3 style="text-align: left;">Password must contain the following:</h3>
					  <p style="text-align: left;" id="letter" class="invalid">A <b>lowercase</b> letter</p>
					  <p style="text-align: left;" id="capital" class="invalid">A <b>capital (uppercase)</b> letter</p>
					  <p  style="text-align: left;" id="number" class="invalid">A <b>number</b></p>
					  <p  style="text-align: left;" id="length" class="invalid">Minimum <b>8 characters</b></p>
					</div>
				</div>
			</div>
		</div>
	</div>
</div></form>



<script>
var myInput = document.getElementById("pass");
var letter = document.getElementById("letter");
var capital = document.getElementById("capital");
var number = document.getElementById("number");
var length = document.getElementById("length");

// When the user clicks on the password field, show the message box
myInput.onfocus = function() {
  document.getElementById("message").style.display = "block";
}

// When the user clicks outside of the password field, hide the message box
myInput.onblur = function() {
  document.getElementById("message").style.display = "none";
}

// When the user starts to type something inside the password field
myInput.onkeyup = function() {
  // Validate lowercase letters
  var lowerCaseLetters = /[a-z]/g;
  if(myInput.value.match(lowerCaseLetters)) {  
    letter.classList.remove("invalid");
    letter.classList.add("valid");
  } else {
    letter.classList.remove("valid");
    letter.classList.add("invalid");
  }
  
  // Validate capital letters
  var upperCaseLetters = /[A-Z]/g;
  if(myInput.value.match(upperCaseLetters)) {  
    capital.classList.remove("invalid");
    capital.classList.add("valid");
  } else {
    capital.classList.remove("valid");
    capital.classList.add("invalid");
  }

  // Validate numbers
  var numbers = /[0-9]/g;
  if(myInput.value.match(numbers)) {  
    number.classList.remove("invalid");
    number.classList.add("valid");
  } else {
    number.classList.remove("valid");
    number.classList.add("invalid");
  }
  
  // Validate length
  if(myInput.value.length >= 8) {
    length.classList.remove("invalid");
    length.classList.add("valid");
  } else {
    length.classList.remove("valid");
    length.classList.add("invalid");
  }
}


	
	
</script>
</body>
</html>