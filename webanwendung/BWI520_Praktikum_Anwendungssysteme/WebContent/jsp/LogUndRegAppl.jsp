<%@page import="de.hwg_lu.bw4s.beansPruefung.AccountBean"%>
<%@page import="java.sql.SQLException"%>
<%@page import="de.hwg_lu.bw.jdbc.NoConnectionException"%>
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
String password = request.getParameter("pass1");
String password2 = request.getParameter("pass2");
String username = request.getParameter("userreg");
String email = request.getParameter("email");
//String btnLogin = request.getParameter("login");
//Buttons
System.out.println(userid);
System.out.println(username);
System.out.println(username);
System.out.println(password);
System.out.println(username);
System.out.println(email);
String register = this.denullify(request.getParameter("register"));
String login = this.denullify(request.getParameter("login"));

if (register.equals("Registrieren")){
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
	System.out.println(" versuch einzulogen eingelietet");
	try{
		boolean useridPasswordOk = loginBean.checkUseridPassword();
		if (useridPasswordOk){
			//messageBean.setLoginSuccessful();
			loginBean.setLoggedIn(true);
			System.out.println(" versuch einzulogen erfolgreich");
			response.sendRedirect("./willkommen.jsp");
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
	System.out.println("kein Button gedrückt");
	//messageBean.setGeneralWelcome();
	response.sendRedirect("./regundlog.jsp");
}


%>
</body>
</html>