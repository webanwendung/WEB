package de.hwg_lu.bw4s.beansPruefung;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import de.hwg_lu.bw.jdbc.PostgreSQLAccess;

public class LoginBean {

	String userid;
	String password;
	boolean isLoggedIn;
	boolean isAdmin;
	
	public LoginBean() {
		this.userid = "nx";
	
	}
	
	public boolean checkUseridPassword() throws SQLException {
		String sql = "SELECT userid, password from accounts where userid = ? and password = ?";
		System.out.println(sql);
		Connection dbConn = new PostgreSQLAccess().getConnection();
		PreparedStatement prep = dbConn.prepareStatement(sql);
		prep.setString(1, this.userid);
		prep.setString(2, this.password);
		ResultSet dbRes = prep.executeQuery();
		return dbRes.next();
	}
	
	public boolean checkUseridPassword2() throws SQLException {
		String sql = "SELECT userid, password from accounts where userid = ?";
		System.out.println(sql);
		Connection dbConn = new PostgreSQLAccess().getConnection();
		PreparedStatement prep = dbConn.prepareStatement(sql);
		prep.setString(1, this.userid);
		ResultSet dbRes = prep.executeQuery();
		
		boolean recordExists = dbRes.next();
		if (recordExists) {
			String myPassword = dbRes.getString("password").trim();
			if (myPassword.equals(this.password)) return true;
			else return false;
		}else {
			return false;
		}
	}
	
	public String getLoginauftrag() {//wenn man eingelogt ist verschwindet diese
		String userId = getUserid();
		String html="";
		System.out.println(html);
		if (userId=="nx") {
			html="<div class='form'>";
					html+="<h2>Haben sie bereit einen Account?</h2>'";
					html+="<button class='btnn'><a href='../jsp/regundlog.jsp'>Login</a></button><br><br>";
					html+="<h2>Haben sie noch keinen Account?</h2>";
					html+="<button class='btnn' class='sign-up-htm'><a href='../jsp/regundlog.jsp'>Registrieren</a></button>";
		}
		
		return html;
		}
	public String getAdmin() throws SQLException {//wenn man eingelogt ist und admin dann kann man tutoren verwalten
		String sql = "SELECT userid, password from accounts where userid = ? and password = ? and admin= ?";
		System.out.println(sql);
		Connection dbConn = new PostgreSQLAccess().getConnection();
		PreparedStatement prep = dbConn.prepareStatement(sql);
		prep.setString(1, this.userid);
		prep.setString(2, this.password);
		prep.setString(3, "Y");
		ResultSet dbRes = prep.executeQuery();
		boolean admin= dbRes.next();
		if (admin) {
			return "<input class=\"cn\" type=\"submit\" name=\"saa\"value=\"Account Verwaltung\"> <input class=\"cn\" type=\"submit\" name=\"sat\"value=\"Tutor Verwaltung\">  <br> <br> <input class=\"cn\" type=\"submit\" name=\"kontakt\"value=\"Narichten Verwaltung\">  ";
		}
		return "";
	}

	public String getUserid() {
		return userid;
	}
	public void setUserid(String userid) {
		this.userid = userid;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public boolean isLoggedIn() {
		return isLoggedIn;
	}
	public void setLoggedIn(boolean isLoggedIn) {
		this.isLoggedIn = isLoggedIn;
	}
}
