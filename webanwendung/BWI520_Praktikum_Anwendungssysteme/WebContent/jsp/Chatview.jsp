<%@page import="de.hwg_lu.bw4s.beansPruefung.ChatBeanf"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<jsp:useBean id="chatbean" class="de.hwg_lu.bw4s.beansPruefung.ChatBeanf" scope="session"/>
<body>


		<table>
			<tr>
				<td><h1>BW4S_Chat</h1></td>
				<td><img alt="blid nicht da" src="../img/Coronavirus.jpg" width="100"></td>
			</tr>
			
		</table>
<h3><jsp:getProperty property="sender" name="chatbean"/></h3>

<table>

			<tr>
				<td>sag was: </td>
				<td>	<input type="text" name="nachricht" value=""  >
				</td>
				<td><input type="submit" name="senden" value="senden"  > </td>
			</tr>
			
		</table><br>
		<input type="submit" name="zurueck" value="zurueck"  > 
		<input type="submit" name="loechen" value="loechen"  >
		<br> 
		<jsp:getProperty property="eintagForHtml" name="chatbean"/>
</body>
</html>