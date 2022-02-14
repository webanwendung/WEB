<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Anmelden und Registrieren</title>


</head><link href="../css/homepage.css" rel="stylesheet">
<body>
<div class="main">
        <div class="navbar">
            <div class="icon">
                <h2 class="logo">STUDCOM</h2>
            </div>

            <div class="menu">
                <ul>
                    <li><a href="../jsp/regundlog.jsp">Home</a></li>                    
                    <li><a href="#">Service</a></li>
                    <li><a href="../jsp/kontakt.jsp">Kontakt</a></li>
                    <li><a href="#">&Uuml;ber uns</a></li>
                    <li><a href="logout.jsp">Abmelden</a></li>
                </ul>
            </div>

            <div class="search">
                <input class="srch" type="search" name="" placeholder="Suchen Sie hier...">
                <a href="#"> <button class="btn">Suchen</button></a>
            </div>
 
        </div> 
        <div class="content">
         <form action="../jsp/LogUndRegAppl.jsp" method="get">
           <h1><span>STUDCOM</span><br>Lernplattform</h1>
            <p class="par">Die Community von Studenten und f&uuml;r
					Studenten <br> Hier erh&auml;ltst du kostenlose Lernunterlagen und rasche Antworten
				rund um das Studium
                <br> Studiere einfacher, schneller und besser...</p>
                
                           
                <div class="login-wrap">
	<div class="login-html">
		<input id="tab-1" type="radio" name="tab" class="sign-in" checked><label for="tab-1" class="tab">Anmelden</label>
		<input id="tab-2" type="radio" name="tab" class="sign-up"><label for="tab-2" class="tab">Registrieren</label>
		<div class="login-form">
			<div class="sign-in-htm">
				<div class="group">
					<label for="user" class="label">Benutzername</label>
					<input name="userlogin" type="text" value="" class="input">
				</div>
				<div class="group">
					<label for="pass" class="label">Passwort</label>
					<input name="passlogin" type="password" class="input" value="" data-type="passwort">
				</div>
				<div class="group">
					<label><input type="checkbox"><span>Angemeldet bleiben?</span></label>
				</div>
				<div class="group">
					<input class="button" type="submit"   name="login" value="Anmelden">
				</div>
				<div class="hr"></div>
				<div class="foot-lnk">
					<a href="PasswortVergessen.jsp">Passwort vergessen?</a>
				</div>
			</div>
			<div class="sign-up-htm">
				<div class="group">
					<label for="user" class="label">Benutzername</label>
					<input name="userreg" type="text" value="" class="input">
				</div>
				<div class="group">
					<label for="pass" class="label">Email</label>
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
								
		   		 <label><input type="radio" name="geschlecht" value="M" /> m&auml;nnlich</label>
				<label><input type="radio" name="geschlecht" value="w"   /> weiblich</label> 
				<label><input type="radio" name="geschlecht" value="A" /> divers</label><br><br>
			
				
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
</div>
</div>  
        </form>
        </div>
        </body>
</html>

