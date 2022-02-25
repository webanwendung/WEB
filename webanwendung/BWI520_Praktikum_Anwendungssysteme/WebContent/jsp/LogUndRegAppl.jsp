<%@page import="de.hwg_lu.bw4s.beansPruefung.AccountBean"%>
<%@page import="java.sql.SQLException"%>
<%@page import="de.hwg_lu.bw.jdbc.NoConnectionException"%>
<%@page import="de.hwg_lu.bw4s.beansPruefung.HtmlExpresion"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<jsp:useBean id="accountBean" class="de.hwg_lu.bw4s.beansPruefung.AccountBean" scope="session" />
<jsp:useBean id="loginBean" class="de.hwg_lu.bw4s.beansPruefung.LoginBean" scope="session" />
<jsp:useBean id="htmlexprexion" class="de.hwg_lu.bw4s.beansPruefung.HtmlExpresion" scope="session" />

<%!
public String denullify(String inputString){
	if (inputString == null) return ""; else return inputString;
//	return (inputString == null)?"":inputString;
}
public String[] denullify(String[] inputStringArray){
	if (inputStringArray == null) return new String[0]; else return inputStringArray;
}
%>
<%
//Eingabefelder
String userid = request.getParameter("userlogin");
String useridlogin = request.getParameter("userlogin");
String passwordlogin = request.getParameter("passlogin");
String password = request.getParameter("pass");
String password2 = request.getParameter("pass2");
String username = request.getParameter("userreg");
String email = request.getParameter("email");
String emailreset = request.getParameter("emailreset");

//passwort vegessen
String pass1 = request.getParameter("passreset1");
String pass2 = request.getParameter("passreset2");
//String btnLogin = request.getParameter("login");
//Buttons
// testen outlogen
	loginBean.setUserid("nx");
	loginBean.setPassword("");
	htmlexprexion.setLogin("LOGIN");
	
System.out.println(emailreset);

String register = this.denullify(request.getParameter("register"));
String login = this.denullify(request.getParameter("login"));
String zuruchsetzen = this.denullify(request.getParameter("reset"));
String passvergessen = this.denullify(request.getParameter("passvergessen"));
String passwortBestaetigen = this.denullify(request.getParameter("newpass"));

if (zuruchsetzen.equals("passwort zuruesetzen")){
	System.out.println("emailreset-Button wurde geklickt");
	accountBean.setPassvergessen(false);
	System.out.println(emailreset);
	accountBean.setEmail(emailreset);
	accountBean.getPasswordforgot();
	response.sendRedirect("./regundlog.jsp");
}
else if (passvergessen.equals("Passwort vergessen")){
	System.out.println("passvergessen-Button wurde geklickt");
	accountBean.setAccoutcheck(true);
	accountBean.setPassvergessen(true);
	accountBean.getPasswordforgot();
	
	response.sendRedirect("./regundlog.jsp");
}
else if (passwortBestaetigen.equals("passwort Bestaetigen")){
	
	System.out.println("passwort Bestaetigen- Button wurde geklickt ##set uptdat");
	System.out.println(emailreset);
	{
		accountBean.setAccoutcheck(true);
		accountBean.setUpdatePasswordforgot(pass1);
		accountBean.setUpdat("<br> <br> Ihr Passwort wurde erfolgreich aktualisiert, bitte einloggen");
	}
	response.sendRedirect("./regundlog.jsp");
}
else if (register.equals("Registrieren")){
	System.out.println("Registrieren-Button wurde geklickt");

	accountBean.setUserid(email);
	accountBean.setPassword(password);
	accountBean.setUsername(username);
	accountBean.setEmail(email);
	accountBean.setActive("Y");
	accountBean.setAdmin("N");

	try{
		boolean insertOk = accountBean.insertAccountIfNotExists();
		if (insertOk){//Nickname wurde geschrieben
			//messageBean.setRegistrationSuccessful(userid);
			response.sendRedirect("./regundlog.jsp");	
		}else{
			//messageBean.setNicknameAlreadyExists(userid);
			response.sendRedirect("./regundlog.jsp");	
		}
	}catch(NoConnectionException exc){
		exc.printStackTrace();
		//messageBean.setConnectionError();
		response.sendRedirect("./regundlog.jsp");	
	}catch(SQLException exc){
		exc.printStackTrace();
		//messageBean.setSQLError();
		response.sendRedirect("./regundlog.jsp");	
	}
}

else if (login.equals("Log In")){
	loginBean.setUserid(useridlogin);
	loginBean.setPassword(passwordlogin);
	htmlexprexion.setLogin("LOGOUT");
	System.out.println(" versuch einzulogen eingelietet");
	try{
		boolean useridPasswordOk = loginBean.checkUseridPassword();
		if (useridPasswordOk){
			//messageBean.setLoginSuccessful();
			loginBean.setLoggedIn(true);
			System.out.println(" versuch einzulogen erfolgreich");
			response.sendRedirect("../jsp/willko.jsp");
		}else{
		//	messageBean.setLoginFailed();
			loginBean.setLoggedIn(false);
			response.sendRedirect("./regundlog.jsp");
		}
	}catch(NoConnectionException nce){
		//messageBean.setConnectionError();
		response.sendRedirect("./regundlog.jsp");
	}catch(SQLException se){
		//messageBean.setSQLError();
		response.sendRedirect("./regundlog.jsp");
	}
}

else{
	System.out.println("kein Button gedrückt auch nich pass vegessen");
	//messageBean.setGeneralWelcome();
	accountBean.setPassvergessen(false);
	accountBean.setAccoutcheck(false);
	accountBean.setUpdat("");
	
	response.sendRedirect("./regundlog.jsp");
}


%>
</body>
</html>