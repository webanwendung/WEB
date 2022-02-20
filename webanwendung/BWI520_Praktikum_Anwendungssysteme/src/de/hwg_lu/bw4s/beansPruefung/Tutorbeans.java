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
	Vector<Tutor> alltutor;
	
	public Tutorbeans() throws NoConnectionException, SQLException {
		this.name = "";
		this.studiengang = "";
		this.semesterzahl = "";
		this.unterrichtet = "";
		this.unterrichstill = "";
		this.alltutor=new Vector<Tutor>();
		this.readAllTutorsFromDB();
	}
	public void readAllTutorsFromDB() throws NoConnectionException, SQLException {
		 String sql="select name,studiengang,semesterzahl,unterrichtet,unterrichstill from tutor";
		 System.out.println(sql);
		 ResultSet dbRes = new PostgreSQLAccess().getConnection().prepareStatement(sql).executeQuery();
		 this.alltutor.clear();
		 while(dbRes.next()) {
			 String name    = dbRes.getString("name");
			 String studiengang  = dbRes.getString("studiengang");
			 int  semesterzahl    = dbRes.getInt("semesterzahl");
			 String unterrichtet    = dbRes.getString("unterrichtet");
			 String unterrichstill  = dbRes.getString("unterrichstill");
			 Tutor newTutor= new Tutor(  name,studiengang,semesterzahl,unterrichtet,unterrichstill);
			 this.alltutor.add(newTutor);
		 }
		 }
		 public String getTutorsAsHtml() throws NoConnectionException, SQLException {
			 
			 String html=" ";
			 html+="<table style=\"alignborder-left: center;\">";
			 for(Tutor tutor:this.alltutor) {
				 html+="<tr>";
				 html+=		"</div></td>";
					html+=		"<td><div class=\"card\">";
					html+=			"<img src=\"../img/pp1.jpg\" alt=\"John\" style=\"width: 100%\"";	
					html+=			"height=\"50%\">";		
					html+=			"<h1 class=\"name\">"+tutor.getName()+ "</h1>";	
				    html+=			"<p class=\"title\">";	
				    html+=			tutor.getStudiengang()+ "<br>"+tutor.getSemesterzahl()+".Semester";	
					html+=			"</p>";
				    html+=			"<p class=\"par\">"+tutor.getUnterrichtet()+ "</p>";
				    html+=			"<p class=\"par\">"+tutor.getUnterrichstill()+ "</p>";
				    html+=			"<a href=\"#\"><i class=\"fa fa-whatsapp\"></i></a> <a href=\"#\"><i";
				    html+=			"class=\"fa fa-twitter\"></i></a> <a href=\"#\"><i";	
				    html+=			"class=\"fa fa-linkedin\"></i></a> <a href=\"#\"><i";	
				    html+=			"class=\"fa fa-facebook\"></i></a>";	
				    html+=			"<p>";
				    html+=			"<button>Contact</button>";	
				    html+=			"</p>";
				    html+=		"</div>";
				    html+=    "</td>";
				    html+=		"</div></td>";
					html+=		"<td><div class=\"card\">";
					html+=			"<img src=\"../img/pp1.jpg\" alt=\"John\" style=\"width: 100%\"";	
					html+=			"height=\"50%\">";		
					html+=			"<h1 class=\"name\">"+tutor.getName()+ "</h1>";	
				    html+=			"<p class=\"title\">";	
				    html+=			tutor.getStudiengang()+ "<br>"+tutor.getSemesterzahl()+".Semester";	
					html+=			"</p>";
				    html+=			"<p class=\"par\">"+tutor.getUnterrichtet()+ "</p>";
				    html+=			"<p class=\"par\">"+tutor.getUnterrichstill()+ "</p>";
				    html+=			"<a href=\"#\"><i class=\"fa fa-whatsapp\"></i></a> <a href=\"#\"><i";
				    html+=			"class=\"fa fa-twitter\"></i></a> <a href=\"#\"><i";	
				    html+=			"class=\"fa fa-linkedin\"></i></a> <a href=\"#\"><i";	
				    html+=			"class=\"fa fa-facebook\"></i></a>";	
				    html+=			"<p>";
				    html+=			"<button>Contact</button>";	
				    html+=			"</p>";
				    html+=		"</div>";
				    html+=    "</td>";
				html+=		"<td><div class=\"card\">";
				html+=			"<img src=\"../img/pp1.jpg\" alt=\"John\" style=\"width: 100%\"";	
				html+=			"height=\"50%\">";		
				html+=			"<h1 class=\"name\">"+tutor.getName()+ "</h1>";	
			    html+=			"<p class=\"title\">";	
			    html+=			tutor.getStudiengang()+ "<br>"+tutor.getSemesterzahl()+".Semester";	
				html+=			"</p>";
			    html+=			"<p class=\"par\">"+tutor.getUnterrichtet()+ "</p>";
			    html+=			"<p class=\"par\">"+tutor.getUnterrichstill()+ "</p>";
			    html+=			"<a href=\"#\"><i class=\"fa fa-whatsapp\"></i></a> <a href=\"#\"><i";
			    html+=			"class=\"fa fa-twitter\"></i></a> <a href=\"#\"><i";	
			    html+=			"class=\"fa fa-linkedin\"></i></a> <a href=\"#\"><i";	
			    html+=			"class=\"fa fa-facebook\"></i></a>";	
			    html+=			"<p>";
			    html+=			"<button>Contact</button>";	
			    html+=			"</p>";
			    html+=		"</div>";
			    html+=    "</td>";
			    html+="</tr>";
			 }
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
