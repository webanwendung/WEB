<%@page import="de.hwg_lu.bw4s.beansPruefung.LoginBean"%>
<%@page import="de.hwg_lu.bw4s.beansPruefung.AccountBean"%>
<%@page import="de.hwg_lu.bw4s.beansPruefung.HtmlExpresion"%>
<%@page import="java.sql.SQLException"%>
<%@page import="de.hwg_lu.bw.jdbc.NoConnectionException"%>

<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="../css/kontakt.css">

<link rel="stylesheet" href="../css/Navigation.css">
</head>
<body>
 <jsp:useBean id="accountBean" class="de.hwg_lu.bw4s.beansPruefung.AccountBean" scope="session" />
<jsp:useBean id="loginBean" class="de.hwg_lu.bw4s.beansPruefung.LoginBean" scope="session" />
<jsp:useBean id="htmlexprexion" class="de.hwg_lu.bw4s.beansPruefung.HtmlExpresion" scope="session" />
<jsp:useBean id="kontaktBean"class="de.hwg_lu.bw4s.beansPruefung.KontakBean" scope="session" />
 
 <jsp:getProperty property="navigation" name="htmlexprexion"/>
  
<div class="container">
	<br>
	<br>
	<br>
	<br>
	<div class="row">
			<h4 style="text-align:center">We'd like to hear from you!</h4>
	</div>
	
	 <form action="../jsp/kontaktappl.jsp" method="post">
	<div class="row input-container">
			<div class="col-xs-12">
				<div class="styled-input wide">
					<input type="text" name="name" value="" required />
					<label>Name</label> 
				</div>
			</div>
			<div class="col-md-6 col-sm-12">
				<div class="styled-input">
					<input type="text" name="fromemail" value="" required />
					<label>Email</label> 
				</div>
			</div>
			<div class="col-md-6 col-sm-12">
				<div class="styled-input" style="float:right;">
					<input type="text" name="telefon" value="" required />
					<label>Phone Number</label> 
				</div>
			</div>
			<div class="col-xs-12">
				<div class="styled-input wide">
					<textarea  name="Message" value="" required></textarea>
					<label>Message</label>
				</div>
			</div>
			<div class="col-xs-12">
				<div ><button  type="submit"  name="senden"  title="Send Message" value="Send Message" class="btn-lrg submit-btn">Send Message</button></div>
			</div>
	</div>
	</form>
</div>


</body>
</html>