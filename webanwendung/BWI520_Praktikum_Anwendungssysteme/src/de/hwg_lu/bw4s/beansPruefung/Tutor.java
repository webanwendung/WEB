package de.hwg_lu.bw4s.beansPruefung;

public class Tutor {
	private String name;
	private String email;
	private String studiengang;
	private String semesterzahl;
	private String unterrichtet;
	private String unterrichstill;
	private String fotoname;
	private String journee2;
	private String journee;
	private String message;
	private String niveau;
	private String alter;
	
	private String wohnort;
	private String telefon;
	private String activ;
	private String admin;
	
	public Tutor(String name, String studiengang, String semesterzahl2, String unterrichtet, String unterrichstill, String foto, String telefon, String email) {
		super();
		this.name = name;
		this.studiengang = studiengang;
		this.semesterzahl = semesterzahl2;
		this.unterrichtet = unterrichtet;
		this.unterrichstill = unterrichstill;
		this.fotoname = foto;
		this.telefon = telefon;
		this.email = email;
	}
	
	
	/**
	 * @param name
	 * @param email
	 * @param studiengang
	 * @param semesterzahl
	 * @param unterrichtet
	 * @param unterrichstill
	 * @param fotoname
	 * @param journee2
	 * @param journee
	 * @param message
	 * @param niveau
	 * @param wohnort
	 * @param telefon
	 * @param activ
	 * @param admin
	 */
	public Tutor(String name, String email, String studiengang, String semesterzahl, String unterrichtet,
			String unterrichstill, String fotoname, String journee2, String journee, String message, String niveau,
			String wohnort, String telefon, String activ, String admin , String alter) {
		super();
		this.name = name;
		this.email = email;
		this.studiengang = studiengang;
		this.semesterzahl = semesterzahl;
		this.unterrichtet = unterrichtet;
		this.unterrichstill = unterrichstill;
		this.fotoname = fotoname;
		this.journee2 = journee2;
		this.journee = journee;
		this.message = message;
		this.niveau = niveau;
		this.wohnort = wohnort;
		this.telefon = telefon;
		this.activ = activ;
		this.admin = admin;
		this.alter = alter;
	}


	public String getAlter() {
		return alter;
	}


	public void setAlter(String alter) {
		this.alter = alter;
	}


	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getFotoname() {
		this.fotoname=this.fotoname.trim();
		if (fotoname.equals("null")) {
			this.fotoname+=".png";
		}
		return this.fotoname;
	}

	public String getActiv() {
		return activ;
	}

	public void setActiv(String activ) {
		this.activ = activ;
	}

	public String getAdmin() {
		return admin;
	}

	public void setAdmin(String admin) {
		this.admin = admin;
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

	public String getNiveau() {
		return niveau;
	}

	public void setNiveau(String niveau) {
		this.niveau = niveau;
	}

	

	public String getWohnort() {
		return wohnort;
	}

	public void setWohnort(String wohnort) {
		this.wohnort = wohnort;
	}

	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
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
	
	

}
