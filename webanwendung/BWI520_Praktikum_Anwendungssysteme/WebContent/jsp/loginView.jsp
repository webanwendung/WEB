<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head><link href='../css/login.css' rel='stylesheet' type='text/css'>
<body>


<div class="login">
  <h2 class="active"> login  </h2>

  <h2 class="nonactive"> Registrieren </h2>
  <form class="formlog">
   
    
    

    <input type="text" class="text" name="username">
     <span>username</span>

    <br>
    
    <br>

    <input type="password" class="text" name="password">
    <span>password</span>
    <br>

    <input type="checkbox" id="checkbox-1-1" class="custom-checkbox" />
    <label for="checkbox-1-1">Keep me Signed in</label>
    
    <button class="signin">
   Login 
    </button>
 <button class="signin">
      Registrieren
    </button>

    <hr>

    <a href="#">Forgot Password?</a>
  </form>

</div>
</body>
</html>
