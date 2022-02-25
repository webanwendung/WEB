
<%@page import="de.hwg_lu.bw4s.beansPruefung.LoginBean"%>
<%@page import="de.hwg_lu.bw4s.beansPruefung.AccountBean"%>
<%@page import="de.hwg_lu.bw4s.beansPruefung.Tutorbeans"%>
<%@page import="de.hwg_lu.bw4s.beansPruefung.HtmlExpresion"%>
<%@page import="java.sql.SQLException"%>
<%@page import="de.hwg_lu.bw.jdbc.NoConnectionException"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>show all tutor</title>
<link rel="stylesheet" href="../css/Navigation.css">
<link rel="stylesheet" href="../css/table.css">
<link rel="stylesheet" href="../css/tutorfinden.css">
</head>
<body>
	<jsp:useBean id="accountBean"
		class="de.hwg_lu.bw4s.beansPruefung.AccountBean" scope="session" />
	<jsp:useBean id="loginBean"
		class="de.hwg_lu.bw4s.beansPruefung.LoginBean" scope="session" />
	<jsp:useBean id="htmlexprexion"
		class="de.hwg_lu.bw4s.beansPruefung.HtmlExpresion" scope="session" />
	<jsp:useBean id="tutorBean"
		class="de.hwg_lu.bw4s.beansPruefung.Tutorbeans" scope="session" />


	<jsp:getProperty property="navigation" name="htmlexprexion" />
	



	<div class="content_vwt">
	<br>
	<br>
	<br>
	<h1>Hier kommen die Tutoren ...</h1>
	<br>
	<br>
	
	<form action="../jsp/verwaltung.jsp" method="get">
	<jsp:getProperty property="allAccounttutorsAsHtml" name="tutorBean" />
	</form>
	</div>
	
	<jsp:getProperty property="bottom" name="htmlexprexion" />

</body>
</html>