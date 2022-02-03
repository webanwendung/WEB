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
	
	public LoginBean() {
		this.userid = "";
	
	}
	
	public boolean checkUseridPassword() throws SQLException {
		String sql = "SELECT userid, password from account where userid = ? and password = ?";
		System.out.println(sql);
		Connection dbConn = new PostgreSQLAccess().getConnection();
		PreparedStatement prep = dbConn.prepareStatement(sql);
		prep.setString(1, this.userid);
		prep.setString(2, this.password);
		ResultSet dbRes = prep.executeQuery();
		return dbRes.next();
	}
	public boolean checkUseridPassword2() throws SQLException {
		String sql = "SELECT userid, password from account where userid = ?";
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
