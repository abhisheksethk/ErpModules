package com.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;
import javax.persistence.Table;

import com.sun.istack.internal.NotNull;

/**
 * @author abhishek
 *
 */
@Entity
@Table(name="user")
public class User 
{
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name="userId")
	private int userId;
	@OneToOne
	@JoinColumn(name="empId")
	private EmpPerDetail empPerDetail;
	private int serial;
	@NotNull
	private String email;
	private String password;
	public User() {
		
	}
	/**
	 * @return the userId
	 */
	public int getUserId() {
		return userId;
	}
	/**
	 * @param userId the userId to set
	 */
	public void setUserId(int userId) {
		this.userId = userId;
	}
	/**
	 * @return the empPerDetail
	 */
	public EmpPerDetail getEmpPerDetail() {
		return empPerDetail;
	}
	/**
	 * @param empPerDetail the empPerDetail to set
	 */
	public void setEmpPerDetail(EmpPerDetail empPerDetail) {
		this.empPerDetail = empPerDetail;
	}
	/**
	 * @return the serial
	 */
	public int getSerial() {
		return serial;
	}
	/**
	 * @param serial the serial to set
	 */
	public void setSerial(int serial) {
		this.serial = serial;
	}
	/**
	 * @return the email
	 */
	public String getEmail() {
		return email;
	}
	/**
	 * @param email the email to set
	 */
	public void setEmail(String email) {
		this.email = email;
	}
	/**
	 * @return the password
	 */
	public String getPassword() {
		return password;
	}
	/**
	 * @param password the password to set
	 */
	public void setPassword(String password) {
		this.password = password;
	}
	/* (non-Javadoc)
	 * @see java.lang.Object#toString()
	 */
	@Override
	public String toString() {
		return "User [userId=" + userId + ", empPerDetail=" + empPerDetail + ", serial=" + serial + ", email=" + email
				+ ", password=" + password + "]";
	}
	

}
