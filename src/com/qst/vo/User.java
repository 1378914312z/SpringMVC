package com.qst.vo;

public class User {

	private int uid;
	
	private String uname;
	
	private String upass;
	
	private int age;
	
	private String regdate;
	
	public User() {
		
	}

	
	public User(int uid, String uname, String upass, int age, String regdate) {
		super();
		this.uid = uid;
		this.uname = uname;
		this.age = age;
		this.upass = upass;
		this.regdate = regdate;
	}


	@Override
	public String toString() {
		return "User [uid=" + uid + ", uname=" + uname + ", upass=" + upass + ", age=" + age + ", regdate=" + regdate
				+ "]";
	}


	public String getUpass() {
		return upass;
	}


	public void setUpass(String upass) {
		this.upass = upass;
	}


	public int getUid() {
		return uid;
	}

	public void setUid(int uid) {
		this.uid = uid;
	}

	public String getUname() {
		return uname;
	}

	public void setUname(String uname) {
		this.uname = uname;
	}

	public int getAge() {
		return age;
	}

	public void setAge(int age) {
		this.age = age;
	}

	public String getRegdate() {
		return regdate;
	}

	public void setRegdate(String regdate) {
		this.regdate = regdate;
	}
	
	
}

