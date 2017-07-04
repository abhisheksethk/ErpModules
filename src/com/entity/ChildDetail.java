package com.entity;

import java.sql.Date;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

import org.hibernate.validator.constraints.NotBlank;

@Entity
@Table(name="childdetails")
public class ChildDetail 
{
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private int childId;
	@ManyToOne
	@JoinColumn(name="empId")
	private EmpPerDetail empPerDetail;
	@NotNull
	private int serial ;
	@NotBlank
	@Size(min=4,message="child name minimum 4 character")
	private String childName;
	@NotBlank
	private String gender ;
	@NotNull
	private Date DOB;
	/**
	 * 
	 */
	public ChildDetail() {
	}
	/**
	 * @return the childId
	 */
	public int getChildId() {
		return childId;
	}
	/**
	 * @param childId the childId to set
	 */
	public void setChildId(int childId) {
		this.childId = childId;
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
	 * @return the childName
	 */
	public String getChildName() {
		return childName;
	}
	/**
	 * @param childName the childName to set
	 */
	public void setChildName(String childName) {
		this.childName = childName;
	}
	/**
	 * @return the gender
	 */
	public String getGender() {
		return gender;
	}
	/**
	 * @param gender the gender to set
	 */
	public void setGender(String gender) {
		this.gender = gender;
	}
	/**
	 * @return the dOB
	 */
	public Date getDOB() {
		return DOB;
	}
	/**
	 * @param dOB the dOB to set
	 */
	public void setDOB(Date dOB) {
		DOB = dOB;
	}
	/* (non-Javadoc)
	 * @see java.lang.Object#toString()
	 */
	@Override
	public String toString() {
		return "ChildDetail [childId=" + childId + ", empPerDetail=" + empPerDetail + ", serial=" + serial
				+ ", childName=" + childName + ", gender=" + gender + ", DOB=" + DOB + "]";
	}
	
	
}
