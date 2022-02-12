package de.hwg_lu.bw4s.beansPruefung;

public class HtmlExpresion {

	public HtmlExpresion() {
		
	}

	public static String getNavigation() {
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
		html += "                    <li><a href=\"#\">DOCUMENTATION</a></li>";
		html += "                    <li><a href=\"../jsp/kontakt.jsp\">CONTACT</a></li>";
		html += "                    <li><a href=\"#\">LOGOUT</a></li>";
		html += "                </ul>";
		html += "            </div>";

		html += "            <div class=\"search\">";
		html += "                <input class=\"srch\" type=\"search\" name=\"\" placeholder=\"Type To text\">";
		html += "                <a href=\"#\"> <button class=\"btn\">Search</button></a>";
		html += "            </div>";

		html += "        </div> ";
		html += "        </div> ";
		return html;

	}

}
