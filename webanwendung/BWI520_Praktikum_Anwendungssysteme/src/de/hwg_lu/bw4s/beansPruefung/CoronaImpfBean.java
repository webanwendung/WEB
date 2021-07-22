package de.hwg_lu.bw4s.beansPruefung;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import de.hwg_lu.bw.jdbc.NoConnectionException;
import de.hwg_lu.bw.jdbc.PostgreSQLAccess;

public class CoronaImpfBean {
	String name;
	int alter;
	String ort;
	

	Connection dbConn;
	
	public CoronaImpfBean(){
//		this.dbConn = new PostgreSQLAccess().getConnection();
		this.name= "";
		this.alter= 0;
		this.ort= "";
	}
	
	public String getMessage() {
		return "Hallo " + getName() + ", wo möchten Sie sich impfen lassen ?" ;
	}
	

	public String getName() {
		return name;
	}


	public void setName(String name) {
		this.name = name;
	}


	public int getAlter() {
		return alter;
	}


	public void setAlter(int alter) {
		this.alter = alter;
	}


	public String getOrt() {
		return ort;
	}


	public void setOrt(String ort) {
		this.ort = ort;
	}
	
	public String getOrtForDB()throws NoConnectionException, SQLException  {
		String html = "";
		String sql = "SELECT ortsname FROM ort_632277 ";
		System.out.println(sql);
		Statement stmt = this.dbConn.createStatement();
		ResultSet dbRes = stmt.executeQuery(sql);
		while(dbRes.next()) {
		html+= "<option> " + dbRes.getString("ortsname")+ "</option>" ;
		}
		
		return html ;
		
	}
	

	public void insertAccountNoCheckToDB() throws NoConnectionException, SQLException {
		String sql = "insert into vormerkung_632277 (name, alter) values (?, ?)";
		System.out.println(sql);
		this.dbConn = new PostgreSQLAccess().getConnection();
		PreparedStatement prep = this.dbConn.prepareStatement(sql);
		prep.setString(1, this.name);
		prep.setInt(2, this.alter);
		
		prep.executeUpdate();
		System.out.println("vormerkung_632277 " + this.name + " erfolgreich angelegt");
	}
	public void setUpdate() throws NoConnectionException, SQLException {
		String sql = "update vormerkung_632277  set  ort = "+ getOrt()+"  where name="+ getName()+ "and alter ="+ getAlter();
		System.out.println(sql);
		this.dbConn = new PostgreSQLAccess().getConnection();
		PreparedStatement prep = this.dbConn.prepareStatement(sql);
	
		prep.executeUpdate();
		System.out.println("ort zum impfen " + this.name + " erfolgreich angelegt");
	}
	}
	

	

