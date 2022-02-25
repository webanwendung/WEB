package de.hwg_lu.bw4s.beansPruefung;

import java.util.Vector;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Vector;

import de.hwg_lu.bw.jdbc.NoConnectionException;
import de.hwg_lu.bw.jdbc.PostgreSQLAccess;

import de.hwg_lu.bw4s.beansPruefung.Kontakt;

public class KontakBean {
	public String name;
	public String email;
	public String telefon;
	public String message;
	
	Vector<Kontakt> allkontakt=new Vector<Kontakt>();
	
	
	public void readAllKontaktFromDB() throws NoConnectionException, SQLException {
		 //this.alltutor=new Vector<Tutor>();
		 String sql="SELECT \"name\", id, telefon, emailadresse, message\r\n"
		 		+ "FROM bwi520_632134.kontaktnachricht;\r\n";
		 System.out.println(sql);
		 ResultSet dbRes = new PostgreSQLAccess().getConnection().prepareStatement(sql).executeQuery();
		 this.allkontakt.clear();
		 while(dbRes.next()) {
			 String name    = dbRes.getString("name");
			 String telefon  = dbRes.getString("telefon");
			 String  email    = dbRes.getString("emailadresse");
			 String message    = dbRes.getString("message");
			 String id    = ""+dbRes.getInt("id");
			
			 
		//	 System.out.println(name+" "+studiengang+" "+semesterzahl+" "+unterrichtet+" "+unterrichstill+ "fotoname##"+foto+"###");
			 Kontakt newkontakt= new Kontakt(  name.trim(),telefon.trim(),email.trim(),message.trim(),id.trim());
			 this.allkontakt.add(newkontakt);
		 }
		 }
	
	 public String getKontaktsAsHtml() throws NoConnectionException, SQLException {
		 this.readAllKontaktFromDB();
		 String html="hey ich komme from der getproperty ";
		
		 html="<table>  <tr>"
				 + "			 		    <th>Nr</th>"
		 		+ "			 		    <th>Namen</th>"
		 		+ "			 		   <th>E-Mail</th>"
		 		+ "			 		    <th>Telefon</th>"
		 		+ "	    <th>Message</th>"
		 		+ "	    <th>Action</th>"
		 	
		 		+ "			 	  </tr>";
		 int zaehler=0;
		 for(Kontakt kontakt:this.allkontakt) {
			
			zaehler++;
			 html+= "<tr>"
					 + "    <td>"+zaehler+"</td>"
				 		+ "    <td>"+kontakt.getName()+"</td>"
				 		+ "    <td>"+kontakt.getEmail()+"</td>"
				 		+ "    <td>"+kontakt.getTelefon()+"</td>"
				 		+ "    <td>"+kontakt.getMessage()+"</td>";
				 		
				 		
				 		 String buttonHtml =
							"<button type='submit' name='loeschenk' value='"+kontakt.getId()+"' > loeschen</button>";
						
						html += "       <td>" + buttonHtml + "</td> </tr>";
			
		 }
		
		 html+="</table>";
		 
		 System.out.println("erfolgreich gelesen");
		 return html;
 }
	 
	 public void deletenachticht(String Key) throws NoConnectionException, SQLException {
			String sql = "delete from bwi520_632134.kontaktnachricht where id = ?";
			System.out.println(sql);
			PreparedStatement prep = new PostgreSQLAccess().getConnection().prepareStatement(sql);
			prep.setInt(1, Integer.parseInt(Key));
			int anzahlRecordsDeleted = prep.executeUpdate();
			System.out.println("kontakt " + anzahlRecordsDeleted + " wurde geloscht");
			//this.readAllTutorsFromDBZumVerwaltung();
		}
	 public void insertKontakt() throws SQLException {
			String sql="INSERT INTO bwi520_632134.kontaktnachricht(\"name\", telefon, emailadresse, message)"
					+ "values (?,?,?,?)";
			System.out.println(sql);
			Connection dbConn= new PostgreSQLAccess().getConnection();
			PreparedStatement prep = dbConn.prepareStatement(sql);
			prep.setString(1, this.name);
			prep.setString(3, this.email);
			prep.setString(2, this.telefon);
			prep.setString(4, this.message);
			
			prep.executeUpdate();
			System.out.println("nachricht von " + this.name + " wurde erfolgreich angelegt");
			
		}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getTelefon() {
		return telefon;
	}

	public void setTelefon(String telefon) {
		this.telefon = telefon;
	}

	public String getMessage() {
		return message;
	}

	public void setMessage(String message) {
		this.message = message;
	}

	public Vector<Kontakt> getAllkontakt() {
		return allkontakt;
	}

	public void setAllkontakt(Vector<Kontakt> allkontakt) {
		this.allkontakt = allkontakt;
	}

}
