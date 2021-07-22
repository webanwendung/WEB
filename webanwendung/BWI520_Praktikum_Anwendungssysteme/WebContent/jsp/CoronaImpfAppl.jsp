<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>

<body>
<jsp:useBean id="CoronaBean"
		class="de.hwg_lu.bw4s.beansPruefung.CoronaImpfBean" scope="session" />
		

<%!
public String denullify(String parameter){
	return (parameter==null)?"": parameter;
}
%>
<%

//Eingabefelder einlesen und spechern
	String username = request.getParameter("username");
	String impfort = request.getParameter("impfort");
	String alterString = request.getParameter("alter");

//Buttons einlesen und speichern
String btnVormerken = this.denullify(request.getParameter("btnVormerken"));
String speichern = this.denullify(request.getParameter("speichern"));
String impfOrt= request.getParameter("Impfort");

int alter = Integer.parseInt(alterString);
if(btnVormerken.equals("vormerken")){

	CoronaBean.setAlter(alter);
	CoronaBean.setName(username);
	CoronaBean.insertAccountNoCheckToDB();
	
	
	response.sendRedirect("./CoronaImpfOrtView.jsp");

}
else if (speichern.equals("speichern")){
	CoronaBean.setOrt(impfOrt);
	CoronaBean.setUpdate();
	response.sendRedirect("./CoronaImpfViews.jsp");
	
} else {
	response.sendRedirect("./CoronaImpfViews.jsp");
}



%>
</body>
</html>