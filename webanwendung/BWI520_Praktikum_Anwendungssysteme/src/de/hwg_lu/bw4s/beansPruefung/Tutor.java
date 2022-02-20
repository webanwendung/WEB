package de.hwg_lu.bw4s.beansPruefung;

public class Tutor {
	public String name;
	public String email;
	public String studiengang;
	public int semesterzahl;
	public String unterrichtet;
	public String unterrichstill;
	public String fotoname;
	public String journee2;
	public String journee;
	public String message;
	public String niveau;
	public String tel;
	public String wohnort;
	
	public Tutor(String name, String studiengang, int semesterzahl, String unterrichtet, String unterrichstill) {
		super();
		this.name = name;
		this.studiengang = studiengang;
		this.semesterzahl = semesterzahl;
		this.unterrichtet = unterrichtet;
		this.unterrichstill = unterrichstill;
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
	public int getSemesterzahl() {
		return semesterzahl;
	}
	public void setSemesterzahl(int semesterzahl) {
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
