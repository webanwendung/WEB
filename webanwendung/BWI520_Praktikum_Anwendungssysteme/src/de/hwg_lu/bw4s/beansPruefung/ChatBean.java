package de.hwg_lu.bw4s.beansPruefung;

import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.HashMap;

import de.hwg_lu.bw.jdbc.PostgreSQLAccess;

public class ChatBean {
	HashMap<String , String>speicher;
	String userid;
	String nachricht;
	String html="";

	public ChatBean() {
    this.speicher= new HashMap<String, String>();
		
	}
	
	public String getUserid() {
		 return "Hallo "+ userid +", möchtest Du was sagen?";
	 }
	 
  public void writeToDB() throws  SQLException {
	  String sql="insert into teilnehmer (userid) values(?)";
	  System.out.println(sql);
	  PreparedStatement prep = new PostgreSQLAccess().getConnection().prepareStatement(sql);
	  prep.setString(1, "userid");
	  prep.executeUpdate();
  }
  public String getEintragForHtml() {
		for(String CurrentKey: this.speicher.keySet()) {
			String CurrentValue= this.speicher.get(CurrentKey);
		    html += CurrentKey + ":" + CurrentValue + "\n<br>";	
		   
	}
		return html;
}
  
  public void addNachricht() {
		this.speicher.put(this.userid,this.nachricht);
	}
  public void loescheAlles() {
		this.speicher.clear();
		this. html="";
		}

public String getNachricht() {
	return nachricht;
}

public void setNachricht(String nachricht) {
	this.nachricht = nachricht;
}

public void setUserid(String userid) {
	this.userid = userid;
}
  
  
}