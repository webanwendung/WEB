<%@page import="de.hwg_lu.bw4s.beansPruefung.LoginBean"%>
<%@page import="de.hwg_lu.bw4s.beansPruefung.AccountBean"%>
<%@page import="de.hwg_lu.bw4s.beansPruefung.HtmlExpresion"%>
<%@page import="java.sql.SQLException"%>
<%@page import="de.hwg_lu.bw.jdbc.NoConnectionException"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html >
<html> 
  <head> 
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://fonts.googleapis.com/css?family=Baloo+2:400,700|Lobster&display=swap" rel="stylesheet">
	<link rel="stylesheet" href="../css/Navigation.css">
	<link rel="stylesheet" href="../css/tutorwerden.css">


  </head> 

  <body class="tutorwerden"> 
<jsp:useBean id="accountBean" class="de.hwg_lu.bw4s.beansPruefung.AccountBean" scope="session" />
<jsp:useBean id="loginBean" class="de.hwg_lu.bw4s.beansPruefung.LoginBean" scope="session" />
<jsp:useBean id="htmlexprexion" class="de.hwg_lu.bw4s.beansPruefung.HtmlExpresion" scope="session" />

  <jsp:getProperty property="navigation" name="htmlexprexion"/>
         
         



<br>
<br>
<br>
<br>
<br>
<br>

    <form class="container" id="survey-form" action="../jsp/tutorwerdenAppl.jsp" 
			method="post" >
        <div class="introduction">
            <h1 class="title title-1" id="title">Registrieren</h1>
            <p class="text" id="description">
                Bitte füllen Sie die unten erforderlichen Informationen aus, um Ihre Anmeldung zu bestätigen.
            </p>
        </div>

        <div class="form-container">
         
                <div class="infoClient">
                    <h2 class="title title-2 title-infoClient">Persönliche Angaben</h2>
                    
                    <div class="form__group">
                        <input type="text" class="form__input" id="name" name="name" value="" placeholder="Name eingeben" required>
                        <label for="name" class="form__label" id="name-label">Ihr Name</label>
                    </div>
                    
                    <div class="form__group">
                        <input type="text" class="form__input" id="Wonhort" name="Wohnort" value="" placeholder="Wonhort">
                        <label for="Wonhort" class="form__label" id="Wonhort-label">Wohnort</label>
                    </div>

                    <div class="form__group">
                        <input type="email" class="form__input" id="email" name="email" value="" placeholder="musteman@mail.de" required>
                        <label for="email" class="form__label" id="email-label">Email </label>
                    </div>
                    
                    <div class="form__group">
                        <input type="tel" class="form__input" id="tel" name="tel" value="" placeholder="+49(0)12540987521" required>
                        <label for="tel" class="form__label" id="tel-label">Telefon </label>
                    </div>
                    
                    <div class="form__group">
                        <input type="text" class="form__input" id="stg" name="stg" value="" placeholder="Studiengang" required>
                        <label for="stg" class="form__label" id="stg-label">Studium</label>
                    </div>
                    
                     <div class="form__group">
                        <input type="number" class="form__input" id="number" name="number" value="" placeholder="Semester zahl" required step="1" min="1" max="10">
                        <label for="number" class="form__label" id="number-label">Semster</label>
                    </div>

                    <div class="form__group">
                        <input type="number" class="form__input" id="alter" name="alter" value="" placeholder="Alter " required step="1" min="16" max="99">
                        <label for="alter" class="form__label" id="number-label">Ihr Alter</label>
                    </div>
                    
                 

                    <div class="form__message">
                        <label for="message" class="form__label bold">Zusatznachricht (optional):</label><br>
                        <textarea name="message"  id="message" cols="30" rows="5" class="form__input form__textarea"  placeholder="Ich bin zimlich...."></textarea>
                    </div>
                    
                                  

                </div>

                <div class="reservation">
                    <h2 class="title title-2">Über das Tutorium</h2>
                    
                    
                    <div class="form__group">
                    
                     <p class="text bold">wo möchten sie unterstzützen</p>

                        <div class="check-btn">
                            <input type="checkbox" class="cours__type-input" id="Programmierung" name="Cours" value="Programmierung" checked="checked">
                            <label for="Programmierung" class="form__label check__label">
                                <span class="check__newBtn"></span>
                                Programmierung
                            </label>
                        </div>

                        <div class="check-btn">
                            <input type="checkbox" class="cours__type-input" id="Webentwiklung" name="Cours" value="Webentwiklung" checked="checked">
                            <label for="Webentwiklung" class="form__label check__label">
                                <span class="check__newBtn"></span>
                                Webentwiklung
                            </label>
                        </div>

                        <div class="check-btn">
                            <input type="checkbox" class="cours__type-input" id="Betriebwirtschaf" name="Cours" value="Betriebwirtschaf">
                            <label for="Betriebwirtschaf" class="form__label check__label">
                                <span class="check__newBtn"></span>
                                Betriebwirtschaf
                            </label>
                        </div>

                        <div class="check-btn">
                            <input type="checkbox" class="cours__type-input" id="Kostenrechnung" name="Cours" value="Kostenrechnung">
                            <label for="Kostenrechnung" class="form__label check__label">
                                <span class="check__newBtn"></span>
                                Kostenrechnung
                            </label>
                        </div>
                        
                         <div class="check-btn">
                            <input type="checkbox" class="cours__type-input" id="Unternehmensführung" name="Cours" value="Unternehmensfuehrung">
                            <label for="Unternehmensführung" class="form__label check__label">
                                <span class="check__newBtn"></span>
                                Unternehmensführung
                            </label>
                        </div>
                    
                    <br>
<br>
                    
                        <label for="journee" class="form__label bold">wann möchten Sie unterrichten?</label>
                        <select name="journee" id="dropdown" >
                            <option value="montag" class="form__select-option">Montag</option>
                            <option value="dienstag" class="form__select-option">Dienstag</option>
                            <option value="mitiwoch" class="form__select-option">Mittwoch</option>
                            <option value="donnerstag" class="form__select-option">Donnerstag</option>
                            <option value="freitag" class="form__select-option">Freitag</option>
                            <option value="samstag" class="form__select-option">Samstag</option>
                            <option value="sonntag" class="form__select-option">Sonntag</option>
                            <option value="flexible" class="form__select-option">flexible</option>
                        </select>
                    </div>
                    <div class="form__group">
                       
                        <select name="journee2" id="dropdown">
                            <option value="optional" class="form__select-option">Optional</option>
                            <option value="montag" class="form__select-option">Montag</option>
                            <option value="dienstag" class="form__select-option">Dienstag</option>
                            <option value="mitiwoch" class="form__select-option">Mittwoch</option>
                            <option value="donnerstag" class="form__select-option">Donnerstag</option>
                            <option value="freitag" class="form__select-option">Freitag</option>
                            <option value="samstag" class="form__select-option">Samstag</option>
                            <option value="sonntag" class="form__select-option">Sonntag</option>
                            <option value="flexible" class="form__select-option">flexible</option>
                        </select>
                    </div>

                    <div class="form__group">
                        <p class="text bold">welche Niveau haben Sie:</p>
                        <div class="radio-btn">
                            <input type="radio" class="radio__input" id="debutant" name="niveau" value="Anfaenger">
                            <label for="debutant" class="radio__label form__label">
                                <span class="radio__newBtn"></span>
                                Anfänger
                            </label>
                        </div>

                        <div class="radio-btn">
                            <input type="radio" class="radio__input" id="intermediaire" name="niveau"  value="Fortgeschrichtene" checked>
                            <label for="intermediaire" class="radio__label form__label">
                                <span class="radio__newBtn"></span>
                                Fortgeschritten
                            </label>
                        </div>

                        <div class="radio-btn">
                            <input type="radio" class="radio__input" id="avance" name="niveau" value="Expert">
                            <label for="avance" class="radio__label form__label">
                                <span class="radio__newBtn"></span>
                                Expert
                            </label>
                        </div>
                    </div>

                    <div class="form__group">
                        <p class="text bold">Welche(n) Unterrichtsstil(e) ?</p>

                        <div class="check-btn">
                            <input type="checkbox" class="cours__type-input" id="group" name="styleCours" value="Gruppen Arbeit">
                            <label for="group" class="form__label check__label">
                                <span class="check__newBtn"></span>
                                Gruppen Arbeit
                            </label>
                        </div>

                        <div class="check-btn">
                            <input type="checkbox" class="cours__type-input" id="einzel" name="styleCours" value="Einzel Arbeit">
                            <label for="einzel" class="form__label check__label">
                                <span class="check__newBtn"></span>
                                Einzel Arbeit
                            </label>
                        </div>

                        <div class="check-btn">
                            <input type="checkbox" class="cours__type-input" id="vorort" name="styleCours" value="Praesentiel" checked="checked">
                            <label for="vorort" class="form__label check__label">
                                <span class="check__newBtn"></span>
                                Präsens
                            </label>
                        </div>

                        <div class="check-btn">
                            <input type="checkbox" class="cours__type-input" id="remote" name="styleCours" value="remote Arbeit">
                            <label for="remote" class="form__label check__label">
                                <span class="check__newBtn"></span>
                                Remote
                            </label>
                        </div>
                        
                         <div class="check-btn">
                            <input type="checkbox" class="cours__type-input" id="egal" name="styleCours" value="ich bin flexible">
                            <label for="egal" class="form__label check__label">
                                <span class="check__newBtn"></span>
                                ich bin flexible
                            </label>
                        </div>

                        <div class="submit">
                       		 <table>
                       	 		<tr>
                       	 		<td>
									<a class="submitBtn bold" style="text-decoration: none"  href="../jsp/willko.jsp">Abbrechen</a>
                        		</td>
                        		<td>
                        			<button type="submit" class="submitBtn bold"  name="senden" value="senden">senden</button>
                        		</td>
                        			
                        		</tr>
                        		
                        	 </table>
                            
                         
                        </div>
                    </div>

                </div>
 </div>
 
            </form>
        

       
       

  
  </body> 
</html>