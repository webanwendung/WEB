package de.hwg_lu.bw4s.beansPruefung;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Vector;

import de.hwg_lu.bw.jdbc.NoConnectionException;
import de.hwg_lu.bw.jdbc.PostgreSQLAccess;

import de.hwg_lu.bw4s.beansPruefung.Tutor;

public class Tutorbeans {
	public String name;
	public String email;
	public String studiengang;
	public String semesterzahl;
	public String unterrichtet;
	public String unterrichstill;
	public String fotoname;
	public String journee2;
	public String journee;
	public String message;
	public String niveau;
	public String tel;
	public String wohnort;
	public String alter;
	public String getAlter() {
		return alter;
	}
	public void setAlter(String alter) {
		this.alter = alter;
	}
Vector<Tutor> alltutor=new Vector<Tutor>();
	
	public Tutorbeans() throws NoConnectionException, SQLException {
		
		System.out.println("hey ich war in der contructor");
	    this.readAllTutorsFromDB();
	}
	public void readAllTutorsFromDB() throws NoConnectionException, SQLException {
		 //this.alltutor=new Vector<Tutor>();
		 String sql="select name,studiengang,semester ,faecher,kursort, foto, telefon, email  from bwi520_632134.tutor";
		 System.out.println(sql);
		 ResultSet dbRes = new PostgreSQLAccess().getConnection().prepareStatement(sql).executeQuery();
		 this.alltutor.clear();
		 while(dbRes.next()) {
			 String name    = dbRes.getString("name");
			 String studiengang  = dbRes.getString("studiengang");
			 String  semesterzahl    = dbRes.getString("semester");
			 String unterrichtet    = dbRes.getString("faecher");
			 String unterrichstill  = dbRes.getString("kursort");
			 String foto  = dbRes.getString("foto");
			 String telefon  = dbRes.getString("telefon");
			 String email  = dbRes.getString("email");
			 
			 System.out.println(name+" "+studiengang+" "+semesterzahl+" "+unterrichtet+" "+unterrichstill+ "fotoname##"+foto+"###");
			 Tutor newTutor= new Tutor(  name.trim(),studiengang.trim(),semesterzahl.trim(),unterrichtet.trim(),unterrichstill.trim(),foto.trim(), telefon.trim(), email.trim() );
			 this.alltutor.add(newTutor);
		 }
		 }
		 public String getTutorsAsHtml() throws NoConnectionException, SQLException {
			 this.readAllTutorsFromDB();
			 String html="hey ich komme from der getproperty ";
			 html="<table style=\"alignborder-left: center;\">";
			 html+="<tr>";
			 int zaehler=0;
			 for(Tutor tutor:this.alltutor) {
				 zaehler++;
				
				
				
					html+=		"<td><div class=\"card\">";
					html+=			"<img class=\"tuf\" src=\"../profilbilder/"+tutor.getFotoname()+ "\" alt=\"kein Bild vorhanden\"";
									System.out.println("##"+tutor.getFotoname()+"##");
					html+=			">";		
					html+=			"<h1 class=\"name\">"+tutor.getName()+ "</h1>";	
				    html+=			"<p class=\"title\">";	
				    html+=			tutor.getStudiengang()+ "<br>"+tutor.getSemesterzahl()+".Semester";	
					html+=			"</p>";
				    html+=			"<p class=\"par\">"+tutor.getUnterrichtet()+ "</p>";
				    html+=			"<p class=\"par\">"+tutor.getUnterrichstill()+ "</p>";
				    html+=			"<a href=\"https://wa.me/"+tutor.getTelefon()+"\" target=\"_blank\" \"><i class=\"fa fa-whatsapp\"></i></a>" ;
				    html+=			"<p>";
				    html+=			"<a class=\"tuf-btn\" href=\"mailto:"+tutor.getEmail()+"?cc=studcomsuport@gmail.com  &subject=Mail from Studcom Tutorium &body\">Contact</a";	
				    html+=			"</p>";
				    html+=		"</div>";
				    html+=    "</td>";
				   
					
			   
			    if (zaehler%3==0) {
			    	 html+="</tr>";
			    	 html+="<tr>";
				}
			
			 }
			 html+="</tr>";
			 html+="</table>\n";
			 return html;
	 }
	
	
	
	public void insertAccount() throws SQLException {
		String sql="insert into tutor (name, email, wohnort, active, admin, studiengang, telefon, semester, alter, message, foto, faecher, kursort, kurstage, niveau)"
				+ "values (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
		System.out.println(sql);
		Connection dbConn= new PostgreSQLAccess().getConnection();
		PreparedStatement prep = dbConn.prepareStatement(sql);
		prep.setString(1, this.name);
		prep.setString(2, this.email);
		prep.setString(3, this.wohnort);
		prep.setString(4, "Y");
		prep.setString(5, "N");
		prep.setString(6, this.studiengang);
		prep.setString(7, this.tel);
		prep.setString(8, this.semesterzahl);
		prep.setString(9, this.alter);
		prep.setString(10, this.message);
		prep.setString(11, this.fotoname);
		prep.setString(12, this.unterrichtet);
		prep.setString(13, this.unterrichstill);
		prep.setString(14, this.journee+ " "+this.journee2);
		prep.setString(15, this.niveau);
		prep.executeUpdate();
		System.out.println("Tutor " + this.name + " wurde erfolgreich angelegt");
		
	}
	public void setUpdateFoto() throws SQLException {
		String sql="UPDATE bwi520_632134.tutor\r\n"
				+ "SET  foto='"+ this.fotoname +"' WHERE email='"+this.email+"';";
		System.out.println(sql);
		Connection dbConn= new PostgreSQLAccess().getConnection();
		PreparedStatement prep = dbConn.prepareStatement(sql);
		
		prep.executeUpdate();
		System.out.println("Tutor " + this.name + " wurde erfolgreich updated");
		
	}
	
	
	public void readAllTutorsFromDBZumVerwaltung() throws NoConnectionException, SQLException {
		 //this.alltutor=new Vector<Tutor>();
		 String sql="select (name, email, wohnort, active, admin, studiengang, telefon, semester, alter, message, foto, faecher, kursort, kurstage, niveau) from bwi520_632134.tutor";
		 System.out.println(sql);
		 ResultSet dbRes = new PostgreSQLAccess().getConnection().prepareStatement(sql).executeQuery();
		 this.alltutor.clear();
		 while(dbRes.next()) {
			 String name    = dbRes.getString("name");
			 String studiengang  = dbRes.getString("studiengang");
			 String  semesterzahl    = dbRes.getString("semester");
			 String unterrichtet    = dbRes.getString("faecher");
			 String unterrichstill  = dbRes.getString("kursort");
			 String email =dbRes.getString("email");
			 String wohnort=dbRes.getString("wohnort");
			 String active=dbRes.getString("active");
			 String admin=dbRes.getString("admin");
			 String tel=dbRes.getString("telefon");
			 String alter=dbRes.getString("alter");
			 String message=dbRes.getString("message");
			 String fotoname=dbRes.getString("foto");
			 String journee=dbRes.getString("kurstage");
			 String journee2=dbRes.getString("kurstage");
			 String niveau=dbRes.getString("niveau");
			 
			 
			 System.out.println(name+" "+studiengang+" "+semesterzahl+" "+unterrichtet+" "+unterrichstill+"\n ");
			 Tutor newTutor= new Tutor ( name,  email,  studiengang,  semesterzahl,  unterrichtet,
						 unterrichstill,  fotoname,  journee2,  journee,  message,  niveau,
						 wohnort,  tel,  active,  admin, alter);
			 
			 this.alltutor.add(newTutor);
		 }
		 }
	public String getAllAccounttutorsAsHtml() throws NoConnectionException, SQLException {
		String html = "";
	
		html += "<table>\n";
		html += "	<tr>\n";
		html += "		<th>Namen</th>\n";
		html += "		<th>E-mail</th>\n";
		html += "		<th>Studiengang</th>\n";
		html += "		<th>Semesterzahl</th>\n";
		html += "		<th>Unterrichtet </th>\n";
		html += "		<th>Unterrichstill</th>\n";
		html += "		<th>Wohnort</th>\n";
		html += "       <th>Activ</th>\n";
		
		html += "       <th>Telefon</th>\n";
		html += "       <th>Alter</th>\n";
		html += "       <th>Anregung</th>\n";
		html += "       <th>Fotoname</th>\n";
		html += "       <th>Kurstage</th>\n";
	
		html += "       <th>Niveau</th>\n";
		html += "	</tr>\n";
		
		for(Tutor tutoraccount: this.alltutor) {
			html += "	<tr>\n";
			html += "		<td>" + tutoraccount.getName()   + "</td>\n";
			html += "		<td>" + tutoraccount.getEmail() + "</td>\n";
			html += "		<td>" + tutoraccount.getStudiengang()   + "</td>\n";
			html += "		<td>" + tutoraccount.getSemesterzahl()    + "</td>\n";
			html += "		<td>" + tutoraccount.getUnterrichtet() + "</td>\n";
			html += "		<td>" + tutoraccount.getUnterrichstill()    + "</td>\n";
			html += "		<td>" + tutoraccount.getWohnort() + "</td>\n";
			html += "		<td>" + tutoraccount.getActiv() + "</td>\n";
			
			html += "		<td>" + tutoraccount.getTelefon() + "</td>\n";
			html += "		<td>" + tutoraccount.getAlter() + "</td>\n";
			html += "		<td>" + tutoraccount.getMessage() + "</td>\n";
			html += "		<td>" + tutoraccount.getFotoname() + "</td>\n";
			html += "		<td>" + tutoraccount.getJournee()+" & "+tutoraccount.getJournee2() + "</td>\n";
			html += "		<td>" + tutoraccount.getNiveau() + "</td>\n";
		String buttonHtml =
				"<button type='submit' name='loeschen' value='"+tutoraccount.getEmail()+"' > loeschen</button>";
			
			html += "       <td>" + buttonHtml + "</td>\n";
			html += "	</tr>\n";
		}
		
		html += "</table>\n";
		
		return html;
	}
	public void deleteTutor(String deleteName) throws NoConnectionException, SQLException {
		String sql = "delete from tutor where email = ?";
		System.out.println(sql);
		PreparedStatement prep = new PostgreSQLAccess().getConnection().prepareStatement(sql);
		prep.setString(1, deleteName);
		int anzahlRecordsDeleted = prep.executeUpdate();
		System.out.println("" + anzahlRecordsDeleted + " wurde geloscht");
		//this.readAllTutorsFromDBZumVerwaltung();
	}
	
	public String getName() {
		return name;
	}
	public String getNameForHtml() {
		return" <h1> Hey "+ name +" lade doch gleich ein Bild von dir Hoch</h1>";
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
	public String getStudiengang() {
		return studiengang;
	}
	public void setStudiengang(String studiengang) {
		this.studiengang = studiengang;
	}
	public String getSemesterzahl() {
		return semesterzahl;
	}
	public void setSemesterzahl(String semesterzahl) {
		this.semesterzahl = semesterzahl;
	}
	public String getUnterrichtet() {
		return unterrichtet;
	}
	public void setUnterrichtet(String unterrichtet) {
		this.unterrichtet = unterrichtet;
	}
	public String getUnterrichstill() {
		return unterrichstill;
	}
	public void setUnterrichstill(String unterrichstill) {
		this.unterrichstill = unterrichstill;
	}
	public String getFotoname() {
		return fotoname;
	}
	public void setFotoname(String fotoname) {
		this.fotoname = fotoname;
	}
	public String getJournee2() {
		return journee2;
	}
	public void setJournee2(String journee2) {
		this.journee2 = journee2;
	}
	public String getJournee() {
		return journee;
	}
	public void setJournee(String journee) {
		this.journee = journee;
	}
	public String getMessage() {
		return message;
	}
	public void setMessage(String message) {
		this.message = message;
	}
	public String getNiveau() {
		return niveau;
	}
	public void setNiveau(String niveau) {
		this.niveau = niveau;
	}
	public String getTel() {
		return tel;
	}
	public void setTel(String tel) {
		this.tel = tel;
	}
	public String getWohnort() {
		return wohnort;
	}
	public void setWohnort(String wohnort) {
		this.wohnort = wohnort;
	}
	public Vector<Tutor> getAlltutor() {
		return alltutor;
	}
	public void setAlltutor(Vector<Tutor> alltutor) {
		this.alltutor = alltutor;
	}
	
	

}
