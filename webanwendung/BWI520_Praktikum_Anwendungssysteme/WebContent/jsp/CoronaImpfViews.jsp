<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>BW4S-Coronaimpfung</title>
</head>
<body>
<h3>BW4S-Corona-Impfzentrale im WiSe 20/21</h3>
<form action="./CoronaImpfAppl.jsp" method="get">
<table>
	<tr>
		<td>Name:<br>
			<input type="text" name="username" value="" />
		</td>
		<td>Alter:<br>
			<input type="text" name="alter" value="" />
		</td>
	</tr>
	<tr>
		<td>
		</td>
		<td><br>
			<input type="submit" name="btnVormerken" value="vormerken" />
		</td>
	</tr>
</table>
</form>
</body>
</html>