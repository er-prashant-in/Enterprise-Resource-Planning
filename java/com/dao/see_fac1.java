package com.dao;

public class see_fac1 {
	private Integer id;
	private String name;
	private String dept;
	private String contact;
	private String mail;
	private String achieve;
	private String date;
	private String qual;
	private String sub;
	public see_fac1(Integer id, String name, String dept, String contact, String mail, String achieve, String date,
			String qual, String sub) {
		this.id = id;
		this.name = name;
		this.dept = dept;
		this.contact = contact;
		this.mail = mail;
		this.achieve = achieve;
		this.date = date;
		this.qual = qual;
		this.sub = sub;
	}
	public Integer getId() {
		return id;
	}
	public String getName() {
		return name;
	}
	public String getDept() {
		return dept;
	}
	public String getContact() {
		System.out.println(contact);
		return contact;
	}
	public String getMail() {
		return mail;
	}
	public String getAchieve() {
		return achieve;
	}
	public String getDate() {
		return date;
	}
	public String getQual() {
		return qual;
	}
	public String getSub() {
		return sub;
	}
	@Override
	public String toString() {
		return "see_fac1 [id=" + id + ", name=" + name + ", dept=" + dept + ", contact=" + contact + ", mail=" + mail
				+ ", achieve=" + achieve + ", date=" + date + ", qual=" + qual + ", sub=" + sub + "]";
	}
	
}
