package com.chainsys.todo.model;

import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.SequenceGenerator;
import javax.persistence.Table;
import javax.validation.constraints.Digits;
import javax.validation.constraints.Email;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.Pattern;
import javax.validation.constraints.Size;

@Entity
@Table(name="USER1")
public class User {
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO, generator = "toid")
    @SequenceGenerator(name = "toid", sequenceName = "toid",  allocationSize = 1)
	@Column(name = "userid")
	private int userId;
	@Column(name="name")
	@Size(max = 20, min = 3, message = "*Name length should be 3 to 20")
	@NotBlank(message = "*StaffName is required")
	@Pattern(regexp = "^[A-Za-z]\\w{3,20}$", message = "*Enter valid name ")
	private String name;
	@Column(name="email")
	@Email(message = "*Invalid Email", regexp = "[a-z0-9._%+-]+@[a-z0-9.-]+\\.[a-z]{2,3}")
	private String email;
	@Column(name="password")
	@NotBlank(message = "*Password is required")
	private String password;
	@Column(name="mobileno")
	@Digits(message = "*Invalid Mobile Number", integer = 10, fraction = 0)
	private long mobileNo;
	@Column(name="gender")
	@NotEmpty(message = "Gender is required")
	private String gender;
	@Column(name="address")
	@NotBlank(message = "*Address is required")
	private String address;
	@Column(name="state")
	@NotBlank(message = "*State is required")
	@Pattern(regexp = "^[A-Za-z]\\w{3,20}$", message = "*Enter valid State")
	private String state;
	@Column(name="city")
	@NotBlank(message = "*City is required")
	@Pattern(regexp = "^[A-Za-z]\\w{3,20}$", message = "*Enter valid City")
	private String city;
	@Column(name="pincode")
	@Digits(message = "*Invalid Pincode", integer = 6, fraction = 0)
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
