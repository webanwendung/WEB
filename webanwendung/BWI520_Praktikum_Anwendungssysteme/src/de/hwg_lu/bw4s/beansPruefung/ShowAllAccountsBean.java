package de.hwg_lu.bw4s.beansPruefung;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Vector;

import de.hwg_lu.bw.jdbc.NoConnectionException;
import de.hwg_lu.bw.jdbc.PostgreSQLAccess;

public class ShowAllAccountsBean {

	Vector<Account> allAccounts; // ist erst mal null
	
	public ShowAllAccountsBean() throws NoConnectionException, SQLException {
		this.allAccounts = new Vector<Account>();
		this.readAllAccountsFromDB();
	}
	
	public void readAllAccountsFromDB() throws NoConnectionException, SQLException {
		String sql = "select userid, password, active, admin, username, email from account";
		System.out.println(sql);
		ResultSet dbRes = new PostgreSQLAccess().getConnection().prepareStatement(sql).executeQuery();
		this.allAccounts.clear();
		while(dbRes.next()) {
			String userid   = dbRes.getString("userid");
			String password = dbRes.getString("password");
			String active   = dbRes.getString("active");
			String admin    = dbRes.getString("admin");
			String username = dbRes.getString("username");
			String email    = dbRes.getString("email");
			Account newAccount = new Account(userid, password, active, admin, username, email);
			this.allAccounts.add(newAccount);
		}
	}
	
	public String getAllAccountsAsHtml() throws NoConnectionException, SQLException {
		String html = "";
	
		html += "<table>\n";
		html += "	<tr>\n";
		html += "		<th>userid</th>\n";
		html += "		<th>password</th>\n";
		html += "		<th>active</th>\n";
		html += "		<th>admin</th>\n";
		html += "		<th>username</th>\n";
		html += "		<th>email</th>\n";
		html += "       <th>Aktion</th>\n";
		html += "	</tr>\n";
		
		for(Account myAccount: this.allAccounts) {
			html += "	<tr>\n";
			html += "		<td>" + myAccount.getUserid()   + "</td>\n";
			html += "		<td>" + myAccount.getPassword() + "</td>\n";
			html += "		<td>" + myAccount.getActive()   + "</td>\n";
			html += "		<td>" + myAccount.getAdmin()    + "</td>\n";
			html += "		<td>" + myAccount.getUsername() + "</td>\n";
			html += "		<td>" + myAccount.getEmail()    + "</td>\n";
//			String buttonHtml =
//				"<input type='submit' name='loeschen_" + myAccount.getUserid() + "' value='loeschen' />";
			String buttonHtml = 
				"<input type='submit' name='loeschen' value='loesche " + myAccount.getUserid() + "' />";
			html += "       <td>" + buttonHtml              + "</td>\n";
			html += "	</tr>\n";
		}
		
		html += "</table>\n";
		
		return html;
	}
	public void deleteAllAccounts() throws NoConnectionException, SQLException {
		String sql = "delete from account";
		System.out.println(sql);
		new PostgreSQLAccess().getConnection().prepareStatement(sql).executeUpdate();
		this.readAllAccountsFromDB();
	}
	public void deleteAccount(String deleteUserid) throws NoConnectionException, SQLException {
		String sql = "delete from account where userid = ?";
		System.out.println(sql);
		PreparedStatement prep = new PostgreSQLAccess().getConnection().prepareStatement(sql);
		prep.setString(1, deleteUserid);
		int anzahlRecordsDeleted = prep.executeUpdate();
		System.out.println("" + anzahlRecordsDeleted + " Datensätze gelöscht");
		this.readAllAccountsFromDB();
	}
	
	
	
	
	

}
