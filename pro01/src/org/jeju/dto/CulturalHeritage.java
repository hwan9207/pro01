package org.jeju.dto;

public class CulturalHeritage {
	private String cname;
	private int no;
	private String ctype;
	private String addr;
	private String dyear;
	private String admin;
	
	public String getCname() {
		return cname;
	}
	public void setCname(String cname) {
		this.cname = cname;
	}
	public int getNo() {
		return no;
	}
	public void setNo(int no) {
		this.no = no;
	}
	public String getCtype() {
		return ctype;
	}
	public void setCtype(String ctype) {
		this.ctype = ctype;
	}
	public String getAddr() {
		return addr;
	}
	public void setAddr(String addr) {
		this.addr = addr;
	}
	public String getDyear() {
		return dyear;
	}
	public void setDyear(String dyear) {
		this.dyear = dyear;
	}
	public String getAdmin() {
		return admin;
	}
	public void setAdmin(String admin) {
		this.admin = admin;
	}
	
	public CulturalHeritage() {}
	public CulturalHeritage(String cname, int no, String ctype, String addr, String dyear, String admin) {
		this.cname = cname;
		this.no = no;
		this.ctype = ctype;
		this.addr = addr;
		this.dyear = dyear;
		this.admin = admin;
	}
	
	@Override
	public String toString() {
		return "CulturalHeritage [cname=" + cname + ", no=" + no + ", ctype=" + ctype + ", addr=" + addr + ", dyear="
				+ dyear + ", admin=" + admin + "]";
	}
	
	
}
