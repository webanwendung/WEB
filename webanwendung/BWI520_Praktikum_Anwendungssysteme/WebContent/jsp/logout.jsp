<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Abmelden</title>
</head><link href="../css/logout.css" rel="stylesheet">
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
                    <li><a href="kontakt.jsp">Kontakt</a></li>
                    <li><a href="#">&Uuml;ber uns</a></li>
                    <li><a href="regundlog.jsp">Anmelden</a></li>
                </ul>
          </div>
              <div class="search">
                <input class="srch" type="search" name="" placeholder="Suchen Sie hier...">
                  <a href="#"> <button class="btn">Suchen</button></a>
              </div>
    </div>
             
        <p>Sie haben sich erfolgreich abgemeldet...<br>
      M&ouml;chten Sie sich wieder anmelden?</p><br>
         <a href="regundlog.jsp" class="button">
           <div class="pfeil"> </div>
             <span>Hier geht´s zur Anmeldung</span>
         </a>
       
</div>
</body>
</html>