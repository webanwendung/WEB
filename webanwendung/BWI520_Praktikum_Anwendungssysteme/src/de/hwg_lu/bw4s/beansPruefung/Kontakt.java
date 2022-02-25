package de.hwg_lu.bw4s.beansPruefung;

public class Kontakt {

	public String name;
	public String email;
	public String telefon;
	public String message;
	public String id;
	
	/**
	 * @param name
	 * @param email
	 * @param telefon
	 * @param message
	 * @param id 
	 */
	public Kontakt(String name, String email, String telefon, String message, String id) {
		super();
		this.name = name;
		this.email = email;
		this.telefon = telefon;
		this.message = message;
		this.id = id;
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
	public String getId() {
		
		return this.id;
	}
	public void setId(String id) {
		this.id = id;
		
	}
}
