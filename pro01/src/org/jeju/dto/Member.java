package org.jeju.dto;

public class Member {
	private	String name;
	private String pw;
	private String tel;
	private String addr;
	private String brith;
	private String id;
	
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getPw() {
		return pw;
	}
	public void setPw(String pw) {
		this.pw = pw;
	}
	public String getTel() {
		return tel;
	}
	public void setTel(String tel) {
		this.tel = tel;
	}
	public String getAddr() {
		return addr;
	}
	public void setAddr(String addr) {
		this.addr = addr;
	}
	public String getBrith() {
		return brith;
	}
	public void setBrith(String brith) {
		this.brith = brith;
	}
	
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public Member() {}
	public Member(String name, String pw, String tel, String addr, String brith, String id) {
		super();
		this.name = name;
		this.pw = pw;
		this.tel = tel;
		this.addr = addr;
		this.brith = brith;
		this.id = id;
	}
	@Override
	public String toString() {
		return "Member [name=" + name + ", pw=" + pw + ", tel=" + tel + ", addr=" + addr + ", brith=" + brith + ", id="
				+ id + "]";
	}
}
