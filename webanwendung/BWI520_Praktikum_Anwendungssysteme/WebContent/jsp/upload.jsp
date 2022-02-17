<%@page import="de.hwg_lu.bw4s.beansPruefung.LoginBean"%>
<%@page import="de.hwg_lu.bw4s.beansPruefung.AccountBean"%>
<%@page import="de.hwg_lu.bw4s.beansPruefung.HtmlExpresion"%>
<%@page import="de.hwg_lu.bw4s.beansPruefung.FileUploadHandler
"%>
<%@page import="java.sql.SQLException"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>

<link href='../css/Navigation.css' rel='stylesheet' type='text/css'>
<jsp:useBean id="exprexion"   class="de.hwg_lu.bw4s.beansPruefung.HtmlExpresion" scope="session" />

</head>
<body>
<jsp:useBean id="accountBean" class="de.hwg_lu.bw4s.beansPruefung.AccountBean" scope="session" />
  <jsp:useBean id="loginBean" class="de.hwg_lu.bw4s.beansPruefung.LoginBean" scope="session" />
  <jsp:useBean id="htmlexprexion" class="de.hwg_lu.bw4s.beansPruefung.HtmlExpresion" scope="session" />
<jsp:useBean id="upload"   class="de.hwg_lu.bw4s.beansPruefung.FileUploadHandler" scope="session" />
  <!-- navigation als html Exprexion abgerufen -->
  <jsp:getProperty property="navigation" name="htmlexprexion" />





       
        <br>
        <br>
        <br>
        <br>
        <center class="content" >
		<h1>Ein Document hochladen</h1>
		<form action="" enctype="multipart/form-data" method="post">
		<table>
  <tr>
    <th>Datei Name eingeben</th>
    <td><input type="text" name="file_name"></td>
  </tr>
  <tr>
    <th></th>
    <th><input  type="file" name="file2"  /> </th>
  </tr>
  <tr>
    <td></td>
    <td><input  type="submit" value="Senden" /></td>
  </tr>
</table>

			
		</form>
		<%
		
		String file_name = (String) request.getParameter("file_name");
		System.out.println(file_name);
		if (file_name != null) {
			System.out.println(file_name + " File uploaded successfuly");
		}
		%>
	</center> 
       
	
</body>
</html>