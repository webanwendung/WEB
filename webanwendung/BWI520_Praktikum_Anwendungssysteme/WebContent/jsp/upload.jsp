
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



<div class="main">
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
 
        </div>
        <br>
        <br>
        <br>
        <br>
        <center class="content" >
		<h1>Ein Document hochladen</h1>
		<form action="FileUploadHandler.java" enctype="multipart/form-data" method="post">
		<table>
  <tr>
    <th>Datei Name eingeben</th>
    <th><input type="text" name="file_name"></th>
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
		
		String file_name = (String) request.getParameter("filename");
		System.out.println(file_name);
		if (file_name != null) {
			out.println(file_name + " File uploaded successfuly");
		}
		%>
	</center> 
        </div> 
	
</body>
</html>