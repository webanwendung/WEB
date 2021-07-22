package de.hwg_lu.bw4s.beansPruefung;

import java.util.HashMap;

public class ChatBeanf {

	HashMap<String, String> speichern;
	String sender;
	String nachricht;

	public ChatBeanf() {
		speichern = new HashMap<String, String>();
	}

	public String getSender() {
		return "hallo "+ sender +", möchetes du was sagen?";
	}
	
	public String getEintagForHtml() {
		String html = "";
		for (String currentKey : this.speichern.keySet()) {
			String currentValue = this.speichern.get(currentKey);
			html += currentKey + ": " + currentValue + "\n";
		}
		return html;
	}

	public void addNachricht(String sender, String nachrich) {
		this.speichern.put(sender, nachricht);
	}

	public void loescheAlles() {
		this.speichern.clear();
	}

}
