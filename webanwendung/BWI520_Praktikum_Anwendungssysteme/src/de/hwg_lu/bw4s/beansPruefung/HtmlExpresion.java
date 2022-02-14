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
		html += "                    <li><a href=\"../jsp/aboutus.jsp\">ABOUT</a></li>";
		html += "                    <div class=\"dropdown\">\r\n"
				+ "    <li> \r\n"
				+ "      <a href=\"https://www.dropbox.com/sh/vsm2rp4llvb8gyh/AABBwGD2Aas9nveKbctkW4tea?dl=0\">DOCUMENT</a>\r\n"
				+ "    </li>\r\n"
				+ "    <div class=\"dropdown-content\">\r\n"
				+ "      <a href=\"https://www.dropbox.com/sh/05nrjrq5xmu38du/AAD3EBYU20zE7SDbdv85u1zIa?dl=0\">1. Semester</a>\r\n"
				+ "      <a href=\"https://www.dropbox.com/sh/ydwr1vi5nhpvye6/AAD3w21Pq-eTOwhokP3TwERqa?dl=0\">2. Semester</a>\r\n"
				+ "      <a href=\"https://www.dropbox.com/sh/7sigh0lc9kg72u9/AABSwDABkVqT2GZ0IH3JI1t5a?dl=0\">3. Semester</a>\r\n"
				+ "      <a href=\"https://www.dropbox.com/sh/eqzov9iu0myllyk/AAAE3pXa9vMhqmUsKTa0b8Q2a?dl=0\">4. Semester</a>\r\n"
				+ "      <a href=\"https://www.dropbox.com/sh/vui2paucod8n7u5/AADa9qqBDEnqEhvGQ53c9riEa?dl=0\">5. Semester</a>\r\n"
				+ "    </div>\r\n"
				+ "  </div> ";
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
