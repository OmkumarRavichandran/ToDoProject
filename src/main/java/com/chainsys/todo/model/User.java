package com.chainsys.todo.model;

import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.validation.constraints.Digits;
import javax.validation.constraints.Email;
import javax.validation.constraints.Min;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotNull;

@Entity
@Table(name="USER1")
public class User {
	@Id
	@Column(name = "userid")
	@Min(value=1 , message ="Id above user 1")
	private int userId;
	@Column(name="name")
	@NotNull(message ="name may not be null")
	private String name;
	@Column(name="email")
	@Email(regexp = "[a-z0-9._%+-]+@[a-z0-9.-]+\\.[a-z]{2,3}")
	private String email;
	@Column(name="password")
	@NotNull(message ="Password may not be null")
	private String password;
	@Column(name="mobileno")
	@Digits(integer = 10, fraction = 0)
	private long mobileNo;
	@Column(name="gender")
	@NotNull(message ="name may not be null")
	@NotBlank(message ="not be empty")
	private String gender;
	@Column(name="address")
	@NotNull(message ="address may not be null")
	private String address;
	@Column(name="state")
	@NotNull(message ="state may not be null")
	private String state;
	@Column(name="city")
	@NotNull(message ="city may not be null")
	private String city;
	@Column(name="pincode")
	@Digits(integer = 6, fraction = 0)
	private int pincode;
	
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	@OneToMany(mappedBy = "user",fetch = FetchType.LAZY)
	private List<Task> task;
	
	public List<Task> getTask() {
		return task;
	}
	public void setTask(List<Task> task) {
		this.task = task;
	}
	public int getUserId() {
		return userId;
	}
	public void setUserId(int userId) {
		this.userId = userId;
	}
	public long getMobileNo() {
		return mobileNo;
	}
	public void setMobileNo(long mobileNo) {
		this.mobileNo = mobileNo;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getState() {
		return state;
	}
	public void setState(String state) {
		this.state = state;
	}
	public String getCity() {
		return city;
	}
	public void setCity(String city) {
		this.city = city;
	}
	public int getPincode() {
		return pincode;
	}
	public void setPincode(int pincode) {
		this.pincode = pincode;
	}
}
