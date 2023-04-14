package com.ezen.koh13.company;

public class CompanyDTO {
	String scode,sname;
	int ssu,sdan,skum;
	public CompanyDTO() {
		super();
		// TODO Auto-generated constructor stub
	}
	public CompanyDTO(String scode, String sname, int ssu, int sdan) {
		super();
		this.scode = scode;
		this.sname = sname;
		this.ssu = ssu;
		this.sdan = sdan;
	}
	public String getScode() {
		return scode;
	}
	public void setScode(String scode) {
		this.scode = scode;
	}
	public String getSname() {
		return sname;
	}
	public void setSname(String sname) {
		this.sname = sname;
	}
	public int getSsu() {
		return ssu;
	}
	public void setSsu(int ssu) {
		this.ssu = ssu;
	}
	public int getSdan() {
		return sdan;
	}
	public void setSdan(int sdan) {
		this.sdan = sdan;
	}
	public int getSkum() {
		return skum;
	}
	public void setSkum(int skum) {
		this.skum = skum;
	}
	
}
