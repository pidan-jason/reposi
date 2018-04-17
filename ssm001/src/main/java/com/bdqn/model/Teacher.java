package com.bdqn.model;

import java.util.Date;

import com.fasterxml.jackson.annotation.JsonFormat;

/**
 * 老师实体类
 * 
 * @author Administrator
 *
 */
public class Teacher {

	private String id;
	private String name;
	private String nation;
	private String gender;
	private Date birthday;
	private String card;
	private String address;
	private String marry;
	private String study;
	private String school;
	private String major;
	private String phone;
	private String email;
	private String home;
	private String homephone;
	private Dept dept;
	private Position position;
	// private String dept;
	// private String position;
	private String hiredate;
	private String officephone;
	private String leave;
	private Date leavedate;

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getNation() {
		return nation;
	}

	public void setNation(String nation) {
		this.nation = nation;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	
    @JsonFormat(pattern="yyyy-MM-dd HH:mm:ss")
	public Date getBirthday() {
		return birthday;
	}

	public void setBirthday(Date birthday) {
		this.birthday = birthday;
	}

	public String getCard() {
		return card;
	}

	public void setCard(String card) {
		this.card = card;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getMarry() {
		return marry;
	}

	public void setMarry(String marry) {
		this.marry = marry;
	}

	public String getStudy() {
		return study;
	}

	public void setStudy(String study) {
		this.study = study;
	}

	public String getMajor() {
		return major;
	}

	public void setMajor(String major) {
		this.major = major;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getHome() {
		return home;
	}

	public void setHome(String home) {
		this.home = home;
	}

    @JsonFormat(pattern="yyyy-MM-dd HH:mm:ss")
	public String getHiredate() {
		return hiredate;
	}

	public void setHiredate(String hiredate) {
		this.hiredate = hiredate;
	}

	public String getOfficephone() {
		return officephone;
	}

	public void setOfficephone(String officephone) {
		this.officephone = officephone;
	}

	public String getLeave() {
		return leave;
	}

	public void setLeave(String leave) {
		this.leave = leave;
	}

	public Date getLeavedate() {
		return leavedate;
	}

	public void setLeavedate(Date leavedate) {
		this.leavedate = leavedate;
	}

	public String getHomephone() {
		return homephone;
	}

	public void setHomephone(String homephone) {
		this.homephone = homephone;
	}

	public String getSchool() {
		return school;
	}

	public void setSchool(String school) {
		this.school = school;
	}

	public Dept getDept() {
		return dept;
	}

	public void setDept(Dept dept) {
		this.dept = dept;
	}

	public Position getPosition() {
		return position;
	}

	public void setPosition(Position position) {
		this.position = position;
	}

	@Override
	public String toString() {
		return "Teacher [id=" + id + ", name=" + name + ", nation=" + nation + ", gender=" + gender + ", birthday="
				+ birthday + ", card=" + card + ", address=" + address + ", marry=" + marry + ", study=" + study
				+ ", school=" + school + ", major=" + major + ", phone=" + phone + ", email=" + email + ", home=" + home
				+ ", homephone=" + homephone + ", dept=" + dept + ", position=" + position + ", hiredate=" + hiredate
				+ ", officephone=" + officephone + ", leave=" + leave + ", leavedate=" + leavedate + ", getId()="
				+ getId() + ", getName()=" + getName() + ", getNation()=" + getNation() + ", getGender()=" + getGender()
				+ ", getBirthday()=" + getBirthday() + ", getCard()=" + getCard() + ", getAddress()=" + getAddress()
				+ ", getMarry()=" + getMarry() + ", getStudy()=" + getStudy() + ", getMajor()=" + getMajor()
				+ ", getPhone()=" + getPhone() + ", getEmail()=" + getEmail() + ", getHome()=" + getHome()
				+ ", getHiredate()=" + getHiredate() + ", getOfficephone()=" + getOfficephone() + ", getLeave()="
				+ getLeave() + ", getLeavedate()=" + getLeavedate() + ", getHomephone()=" + getHomephone()
				+ ", getSchool()=" + getSchool() + ", getDept()=" + getDept() + ", getPosition()=" + getPosition()
				+ ", getClass()=" + getClass() + ", hashCode()=" + hashCode() + ", toString()=" + super.toString()
				+ "]";
	}

	
}
