package de.hwg_lu.bw4s.beansPruefung;
 import de.hwg_lu.bw4s.beansPruefung.AccountBean;
 import de.hwg_lu.bw4s.beansPruefung.LoginBean;
 import java.sql.SQLException;
 import de.hwg_lu.bw.jdbc.NoConnectionException;
 
public class HtmlExpresion {

	String login="LOGIN";
	public String getLogin() {
		return login;
	}

	public void setLogin(String login) {
		this.login = login;
	}

	public HtmlExpresion() {
	AccountBean a =new AccountBean();
	}

	public  String getNavigation() {
//		String log="Login";
//		String id = login.getUserid();
//		if (id!="nx") {
//			log="Logout";
//		}
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
				+ "      <a href=\"https://www.dropbox.com/sh/vsm2rp4llvb8gyh/AABBwGD2Aas9nveKbctkW4tea?dl=0\" target=\"_blank\">DOCUMENTATION</a>\r\n"
				+ "    </li>\r\n"
				+ "    <div class=\"dropdown-content\">\r\n"
				+ "      <a href=\"https://www.dropbox.com/sh/05nrjrq5xmu38du/AAD3EBYU20zE7SDbdv85u1zIa?dl=0\" target=\"_blank\">1. Semester</a>\r\n"
				+ "      <a href=\"https://www.dropbox.com/sh/ydwr1vi5nhpvye6/AAD3w21Pq-eTOwhokP3TwERqa?dl=0\" target=\"_blank\">2. Semester</a>\r\n"
				+ "      <a href=\"https://www.dropbox.com/sh/7sigh0lc9kg72u9/AABSwDABkVqT2GZ0IH3JI1t5a?dl=0\" target=\"_blank\">3. Semester</a>\r\n"
				+ "      <a href=\"https://www.dropbox.com/sh/eqzov9iu0myllyk/AAAE3pXa9vMhqmUsKTa0b8Q2a?dl=0\" target=\"_blank\">4. Semester</a>\r\n"
				+ "      <a href=\"https://www.dropbox.com/sh/vui2paucod8n7u5/AADa9qqBDEnqEhvGQ53c9riEa?dl=0\" target=\"_blank\">5. Semester</a>\r\n"
				+ "    </div>\r\n"
				+ "  </div> ";
		html += "                    <li><a href=\"../mail/kontakt.jsp\">CONTACT</a></li>";
		html += "                    <li><a href=\"../jsp/LogUndRegAppl.jsp\">"+getLogin()+"</a></li>";
		html += "                </ul>";
		html += "            </div>";

		html += "            <div class=\"search\">";
		html += "                <input class=\"srch\" type=\"search\" name=\"\" placeholder=\"Type To text\">";
		html += "                <a href=\"#\"> <button class=\"btn\">Search</button></a>";
		html += "            </div>";

		html += "        </div> ";
		
		return html;

	}
	public  String getBottom() {

		String html = "<button onclick=\"topFunction()\" id=\"myBtn\" title=\"Go to top\">Back to top</button>\r\n"
				+ "\r\n"
				+ "\r\n"
				+ "<script>\r\n"
				+ "//Get the button\r\n"
				+ "var mybutton = document.getElementById(\"myBtn\");\r\n"
				+ "\r\n"
				+ "// When the user scrolls down 20px from the top of the document, show the button\r\n"
				+ "window.onscroll = function() {scrollFunction()};\r\n"
				+ "\r\n"
				+ "function scrollFunction() {\r\n"
				+ "  if (document.body.scrollTop > 20 || document.documentElement.scrollTop > 20) {\r\n"
				+ "    mybutton.style.display = \"block\";\r\n"
				+ "  } else {\r\n"
				+ "    mybutton.style.display = \"none\";\r\n"
				+ "  }\r\n"
				+ "}\r\n"
				+ "\r\n"
				+ "// When the user clicks on the button, scroll to the top of the document\r\n"
				+ "function topFunction() {\r\n"
				+ "  document.body.scrollTop = 0;\r\n"
				+ "  document.documentElement.scrollTop = 0;\r\n"
				+ "}\r\n"
				+ "\r\n"
				+ "</script>";
		
		return html;
		
	}
	
	

}
