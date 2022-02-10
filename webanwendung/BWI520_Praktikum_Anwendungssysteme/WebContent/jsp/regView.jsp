<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>BW4S-Coronaimpfung</title>
</head>
<link href='../css/login.css' rel='stylesheet' type='text/css'>
<link href="//netdna.bootstrapcdn.com/font-awesome/3.1.1/css/font-awesome.css" rel="stylesheet">
<body>


<div class="login">
  
  <h2 class="nonactive">login</h2>

  <h2 class="active">Registriren</h2>
  
  <form class="formreg" action="/"> 
   
  <br><br>
  

  
   <input type="text" class="text" name="emailAdresse">
     <span>Email Adresse</span>

    <br>
    <br>
  
<input type="text" class="text" name="nachname">
     <span>Nachname</span>

    <br>
    <br><input type="text" class="text" name="vorname">
     <span>Vorname</span>

    <br>
    <br>
    
    <input type="password" class="text" name="password">
    <span>password</span>
    <br>
    
    
    	 <label>
		
		<input type="radio" name="geschlecht" value="" /> männlich</label>
		<label><input type="radio" name="geschlecht" value="w"   /> weiblich</label> 
			<label><input type="radio" name="geschlecht" value="A" />anders</label>
			

    
     <button class="signin">
      Registrieren
    </button>
    <button class="signin">
      Login
    </button>
    
  </form></div>
 
</body>
</html>
