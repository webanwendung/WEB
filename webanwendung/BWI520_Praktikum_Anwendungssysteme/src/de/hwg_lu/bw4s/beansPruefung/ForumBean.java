package de.hwg_lu.bw4s.beansPruefung;
import java.util.*;


public class ForumBean {
	

	 Date currentDate = new Date();
	 HashMap<String, String> forum= new HashMap();
	 
	 int threadId;
	 String titel;
	 
	 
	public Date getCurrentDate() {
		return currentDate;
	}

	public void setCurrentDate(Date currentDate) {
		this.currentDate = currentDate;
	}
}
