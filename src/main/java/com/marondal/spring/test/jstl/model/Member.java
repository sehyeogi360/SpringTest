package com.marondal.spring.test.jstl.model;

public class Member {
	private String name;
	private String phoneNumber;
	private String email;
	private String nationality;
	private String introduce;
	
//	public Member(String name, String phoneNumber, String email, String nationality, String introduce) {
//		this.name = name;
//		this.phoneNumber = phoneNumber;
//		this.email = email;
//		this.nationality = nationality;
//		this.introduce = introduce;
//	} 생성자 굳이 필요 안함
	
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getPhoneNumber() {
		return phoneNumber;
	}
	public void setPhoneNumber(String phoneNumber) {
		this.phoneNumber = phoneNumber;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getNationality() {
		return nationality;
	}
	public void setNationality(String nationality) {
		this.nationality = nationality;
	}
	public String getIntroduce() {
		return introduce;
	}
	public void setIntroduce(String introduce) {
		this.introduce = introduce;
	}
	
	
	

}
