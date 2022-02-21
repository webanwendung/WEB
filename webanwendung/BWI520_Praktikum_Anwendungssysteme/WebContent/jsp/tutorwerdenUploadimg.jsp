<%@page import="de.hwg_lu.bw4s.beansPruefung.LoginBean"%>
<%@page import="de.hwg_lu.bw4s.beansPruefung.AccountBean"%>
<%@page import="de.hwg_lu.bw4s.beansPruefung.HtmlExpresion"%>


<%@page import="java.sql.SQLException"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>upload a file</title>
<head>

<link href='../css/Navigation.css' rel='stylesheet' type='text/css'>
<link href='../css/tutorwerden.css' rel='stylesheet' type='text/css'>
<!--  <link href='../css/upload.css' rel='stylesheet' type='text/css'>-->

</head>
<body>
	<jsp:useBean id="accountBean"
		class="de.hwg_lu.bw4s.beansPruefung.AccountBean" scope="session" />
	<jsp:useBean id="loginBean"
		class="de.hwg_lu.bw4s.beansPruefung.LoginBean" scope="session" />
	<jsp:useBean id="htmlexprexion"
		class="de.hwg_lu.bw4s.beansPruefung.HtmlExpresion" scope="session" />
	<jsp:useBean id="tutorBean" class="de.hwg_lu.bw4s.beansPruefung.Tutorbeans" scope="session" />
	<!-- navigation als html Exprexion abgerufen -->
	<jsp:getProperty property="navigation" name="htmlexprexion" />






	<br>
	<br>
	<br>
	<br>
	<center class="content">
		<jsp:getProperty property="nameForHtml" name="tutorBean"/>
		<form action="./tutorwerdenImg.jsp" enctype="multipart/form-data"
			method="post">
			<br>
			<br>
			<br>
			<table class="form__group" style="width:615px" >
			
			
					
                    
					
					
					
				
				<tr>
					<td></td>
					<td><input  type="file" name="file2" /></td>
				</tr>
				<tr>
					<td></td>
					<td><input class="btnn  bold" type="submit" value="Senden" style="color: black;"  />
					<button class="btnn" type="button"  ><a href="../jsp/willko.jsp">Abbrechen</a></button></td>
				</tr>
			</table>

		  	<script>
		  	function submited() {
		  		
				window.alert("registrierung erfolgreich durchgeführt!");
			}
			
			</script>
		</form>
		
	
	</center>


</body>
</html>