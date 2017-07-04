package com.entity;

import java.security.MessageDigest;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;
import javax.persistence.Table;
import javax.validation.constraints.Size;

import org.hibernate.validator.constraints.Email;
import org.hibernate.validator.constraints.NotBlank;
import org.hibernate.validator.constraints.Range;

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
	@NotNull
	@Size(min=4,message="Enter min four character Username")
	private String userName;
	@Range(min=0,max=2)
	@NotNull
	private int serial;
	@Email
	@NotBlank
	@Column(name="email",unique=true)
	private String email;
	@NotBlank
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
	 * @return the userName
	 */
	public String getUserName() {
		return userName;
	}
	/**
	 * @param userName the userName to set
	 */
	public void setUserName(String userName) {
		this.userName = userName;
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
	 * @throws throws Exception 
	 */
	public void setPassword(String password) throws Exception {
		String original = password;
		MessageDigest md = MessageDigest.getInstance("MD5");
		System.out.println(md);
		md.update(original.getBytes());
		byte[] digest = md.digest();
		System.out.println(digest);
		StringBuffer sb = new StringBuffer();
		for (byte b : digest) {
			sb.append(String.format("%02x", b & 0xff));
		}
		this.password = sb.toString();
	}
	/* (non-Javadoc)
	 * @see java.lang.Object#toString()
	 */
	@Override
	public String toString() {
		return "User [userId=" + userId + ", empPerDetail=" + empPerDetail + ", userName=" + userName + ", serial="
				+ serial + ", email=" + email + ", password=" + password + "]";
	}
	

}
