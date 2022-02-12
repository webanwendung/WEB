
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
<jsp:useBean id="accountBean" class="de.hwg_lu.bw4s.beansPruefung.AccountBean" scope="session" />
<jsp:useBean id="loginBean" class="de.hwg_lu.bw4s.beansPruefung.LoginBean" scope="session" />
<jsp:useBean id="htmlexprexion" class="de.hwg_lu.bw4s.beansPruefung.HtmlExpresion" scope="session" />


 <jsp:getProperty property="navigation" name="htmlexprexion"/>
  
  
  <!--   <div class="main">
        <div class="navbar">
            <div class="icon">
                <h2 class="logo">STUDCOM</h2>
            </div>

            <div class="menu">
                <ul>
                    <li><a href="../jsp/willko.jsp">HOME</a></li>                    
                    <li><a href="#">SERVICE</a></li>
                    <li><a href="#">DOCUMENTATION</a></li>
                    <li><a href="../jsp/kontakt.jsp">CONTACT</a></li>
                    <li><a href="#">LOGOUT</a></li>
                </ul>
            </div>

            <div class="search">
                <input class="srch" type="search" name="" placeholder="Type To text">
                <a href="#"> <button class="btn">Search</button></a>
            </div>
 
        </div> --> 
        
        <div class="content">
         <form action="../jsp/willkommenAppl.jsp" method="get">
				
            <h1>Willkommen bei <br><span>STUDCOM</span> <br>Lernplatform</h1>
            <p class="par">die Community von Studenten und für
					Studenten <br> Hier erhältst du kostenlose Lernunterlagen und Antworten
					für dein Studium.
                <br> Studiere einfacher, schneller und besser.</p>

                
                <input class="cn" type="submit"  name="kurse" value="zu den Lernunterlagen" ><br><br>				
					<input type="submit"  name="dok" value="Notizen hochladen" class="cn">				
					<input type="submit"  name="forum" value="eine Frage im Forum stellen" class="cn"><br><br>
					<input type="submit"  name="register" value="Tutor finden" class="cn">
					<input type="submit"  name="register" value="Tutor werden" class="cn"><br><br>
                
               
					
					
			</form>
                
 <jsp:getProperty property="loginauftrag" name="loginBean"/>
 
                <!-- <div class="form">
                    <h2>Haben sie bereit einen Account?</h2>
                    
                    <button class="btnn"><a href="../jsp/regundlog.jsp">Login</a></button><br><br>

                   <h2>Haben sie noch keinen Account?</h2> 
                    <button class="btnn" class="sign-up-htm"><a href="../jsp/regundlog.jsp">Registrieren</a></button>
<!--
                    <div class="icons">
                        <a href="#"><ion-icon name="logo-facebook"></ion-icon></a>
                        <a href="#"><ion-icon name="logo-instagram"></ion-icon></a>
                        <a href="#"><ion-icon name="logo-twitter"></ion-icon></a>
                        <a href="#"><ion-icon name="logo-google"></ion-icon></a>
                        <a href="#"><ion-icon name="logo-skype"></ion-icon></a>
                    </div>

                </div>
               
                    </div>
                </div> -->
        </div>
    
    <script src="https://unpkg.com/ionicons@5.4.0/dist/ionicons.js"></script>
</body>
</html>