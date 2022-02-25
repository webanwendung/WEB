
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


	<jsp:getProperty property="navigation" name="htmlexprexion" />
	




	<div class="content">
	
		<h1>Hier kommen die Account...</h1>
	
	</div>
	
	
	<jsp:getProperty property="bottom" name="htmlexprexion" />
</body>
</html>