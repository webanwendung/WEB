package de.hwg_lu.bw4s.beansPruefung;
 import de.hwg_lu.bw4s.beansPruefung.AccountBean;
 import de.hwg_lu.bw4s.beansPruefung.LoginBean;
 import java.sql.SQLException;
 import de.hwg_lu.bw.jdbc.NoConnectionException;
 
public class HtmlExpresion {

	public HtmlExpresion() {
		
	}

	public  String getNavigation() {
		String html = "";
		html += "<div class=\"main\">";
		html += "        <div class=\"navbar\">";
		html += "            <div class=\"icon\">";
		html += "                <h2 class=\"logo\">STUDCOM</h2>";
		html += "            </div>";
		html += "";
		html += "            <div class=\"menu\">";
		html += "                <ul>";
		html += "                    <li><a href=\"../jsp/willko.jsp\">HOME</a></li>";
		html += "                    <li><a href=\"#\">SERVICE</a></li>";
		html += "                    <li><a href=\"https://www.dropbox.com/sh/vsm2rp4llvb8gyh/AABBwGD2Aas9nveKbctkW4tea?dl=0\">DOCUMENTATION</a></li>";
		html += "                    <li><a href=\"../jsp/kontakt.jsp\">CONTACT</a></li>";
		html += "                    <li><a href=\"../jsp/regundlog.jsp\">LOGOUT</a></li>";
		html += "                </ul>";
		html += "            </div>";

		html += "            <div class=\"search\">";
		html += "                <input class=\"srch\" type=\"search\" name=\"\" placeholder=\"Type To text\">";
		html += "                <a href=\"#\"> <button class=\"btn\">Search</button></a>";
		html += "            </div>";

		html += "        </div> ";
		
		return html;

	}
	

}
