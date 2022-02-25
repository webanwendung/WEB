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
	
	<!-- navigation als html Exprexion abgerufen -->
	<jsp:getProperty property="navigation" name="htmlexprexion" />






	<br>
	<br>
	<br>
	<br>
	<center class="content">
		<h1>Ein Document hochladen</h1>
		<form action="./uploadAppl.jsp" enctype="multipart/form-data"
			method="post">
			<br>
			<br>
			<br>
			<table class="form__group" style="width:615px" >
			
				<tr>
					<td style="font-size: 22px">Semester:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;    </td>
					<td class="form__label bold"><select name="semester" id="dropdown" >
							<option value= "1" class="form__select-option">1. Semester </option>
							<option value= "2" class="form__select-option">2. Semester</option>
							<option value= "3" class="form__select-option">3. Semester</option>
							<option value= "4" class="form__select-option">4. Semester</option>
							<option value= "5" class="form__select-option">5. Semester</option>
					</select></td>
					
				</tr>
				<tr>
					<td style="font-size: 22px">Kurs: &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;      </td>
					<td class="form__label bold"><select name="fach"  id="dropdown"  >
							<option value= "wirtschaftinfo" 			class="form__select-option">wirtschaftinfo </option>
							<option value= "Abwl" 						class="form__select-option">Abwl</option>
							<option value= "Programmierung" 			class="form__select-option">Programmierung</option>
							<option value= "Recht" 						class="form__select-option">Recht</option>
							<option value= "Finanzierung" 				class="form__select-option">Finanzierung</option>
							<option value= "Investition" 				class="form__select-option">Investition</option>
							<option value= "Unternehmensführung" 		class="form__select-option">Unternehmensführung</option>
							<option value= "Dienstleistungsmanagement"  class="form__select-option">Dienstleistungsmanagement</option>
							<option value= "Datasceince" 				class="form__select-option">Datasceince</option>
							<option value= "Systeme" 					class="form__select-option">Erp-Systeme</option>
							<option value= "Digital Busines" 			class="form__select-option">Digital Busines</option>
							<option value= "Informationsmanagement"	 	class="form__select-option">Informationsmanagement</option>
							<option value= "Busines Inteligens" 		class="form__select-option">Busines Inteligens</option>
							<option value= "Informationssicherheit" 	class="form__select-option">Informationssicherheit</option>
					</select></td>
					
					
				</tr>
				<tr>
					<td></td>
					<td><input  type="file" name="file2" multiple/></td>
				</tr>
				<tr>
					<td></td>
					<td><input class="btnn  bold" type="submit" value="Senden" style="color: black;"  />
					<button class="btnn" type="button"  ><a href="../jsp/willko.jsp">Abbrechen</a></button></td>
				</tr>
			</table>

		<!--  	<script>
			window.confirm("wollen sie wirklich senden?");
			window.alert("dokument erfolgreich geladen!");
			</script>-->
		</form>
		
	
	</center>


</body>
</html>