package org.jeju.dto;

public class Office {
	private String tname;
	private String addr;
	private String tel;
	private String fax;
	
	public String getTname() {
		return tname;
	}
	public void setTname(String tname) {
		this.tname = tname;
	}
	public String getAddr() {
		return addr;
	}
	public void setAddr(String addr) {
		this.addr = addr;
	}
	public String getTel() {
		return tel;
	}
	public void setTel(String tel) {
		this.tel = tel;
	}
	public String getFax() {
		return fax;
	}
	public void setFax(String fax) {
		this.fax = fax;
	}
	public Office() {}
	public Office(String tname, String addr, String tel, String fax) {
		super();
		this.tname = tname;
		this.addr = addr;
		this.tel = tel;
		this.fax = fax;
	}
	@Override
	public String toString() {
		return "Office [tname=" + tname + ", addr=" + addr + ", tel=" + tel + ", fax=" + fax + "]";
	}
}
