package com.entity;


import java.sql.Date;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToOne;
import javax.persistence.Table;

import org.hibernate.annotations.Type;

@Entity
@Table(name="empperdetails")
public class EmpPerDetail 
{

	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private int empId;
	@OneToOne(mappedBy="empPerDetail")
	private User user;
	private String empName;
	private String gender;
	private String fatherName;
	private String motherName;
	private String martialStatus;
	private String spouseName;
	private int children;
    private Date DOB;
	private String religion;
	@Type(type="text")
	private String identification;
	private String	highestQualification;
	private String	designation;
	private Date joiningDate;
	private String	totWorkExp;
	private int	startingScalePay;
	private int	startingGrossPay;
	private int	currentScalePay;
	private int  currentGrossPay;
	@Type(type="text")
    private String bankDetail;
    private String contactNumber;
    @Type(type="text")
    private String address;
	public EmpPerDetail() {	
	}
	/**
	 * @return the empId
	 */
	public int getEmpId() {
		return empId;
	}
	/**
	 * @param empId the empId to set
	 */
	public void setEmpId(int empId) {
		this.empId = empId;
	}
	/**
	 * @return the user
	 */
	public User getUser() {
		return user;
	}
	/**
	 * @param user the user to set
	 */
	public void setUser(User user) {
		this.user = user;
	}
	/**
	 * @return the empName
	 */
	public String getEmpName() {
		return empName;
	}
	/**
	 * @param empName the empName to set
	 */
	public void setEmpName(String empName) {
		this.empName = empName;
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
	 * @return the fatherName
	 */
	public String getFatherName() {
		return fatherName;
	}
	/**
	 * @param fatherName the fatherName to set
	 */
	public void setFatherName(String fatherName) {
		this.fatherName = fatherName;
	}
	/**
	 * @return the motherName
	 */
	public String getMotherName() {
		return motherName;
	}
	/**
	 * @param motherName the motherName to set
	 */
	public void setMotherName(String motherName) {
		this.motherName = motherName;
	}
	/**
	 * @return the martialStatus
	 */
	public String getMartialStatus() {
		return martialStatus;
	}
	/**
	 * @param martialStatus the martialStatus to set
	 */
	public void setMartialStatus(String martialStatus) {
		this.martialStatus = martialStatus;
	}
	/**
	 * @return the spouseName
	 */
	public String getSpouseName() {
		return spouseName;
	}
	/**
	 * @param spouseName the spouseName to set
	 */
	public void setSpouseName(String spouseName) {
		this.spouseName = spouseName;
	}
	/**
	 * @return the children
	 */
	public int getChildren() {
		return children;
	}
	/**
	 * @param children the children to set
	 */
	public void setChildren(int children) {
		this.children = children;
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
	/**
	 * @return the religion
	 */
	public String getReligion() {
		return religion;
	}
	/**
	 * @param religion the religion to set
	 */
	public void setReligion(String religion) {
		this.religion = religion;
	}
	/**
	 * @return the identification
	 */
	public String getIdentification() {
		return identification;
	}
	/**
	 * @param identification the identification to set
	 */
	public void setIdentification(String identification) {
		this.identification = identification;
	}
	/**
	 * @return the highestQualification
	 */
	public String getHighestQualification() {
		return highestQualification;
	}
	/**
	 * @param highestQualification the highestQualification to set
	 */
	public void setHighestQualification(String highestQualification) {
		this.highestQualification = highestQualification;
	}
	/**
	 * @return the designation
	 */
	public String getDesignation() {
		return designation;
	}
	/**
	 * @param designation the designation to set
	 */
	public void setDesignation(String designation) {
		this.designation = designation;
	}
	/**
	 * @return the joiningDate
	 */
	public Date getJoiningDate() {
		return joiningDate;
	}
	/**
	 * @param joiningDate the joiningDate to set
	 */
	public void setJoiningDate(Date joiningDate) {
		this.joiningDate = joiningDate;
	}
	/**
	 * @return the totWorkExp
	 */
	public String getTotWorkExp() {
		return totWorkExp;
	}
	/**
	 * @param totWorkExp the totWorkExp to set
	 */
	public void setTotWorkExp(String totWorkExp) {
		this.totWorkExp = totWorkExp;
	}
	/**
	 * @return the startingScalePay
	 */
	public int getStartingScalePay() {
		return startingScalePay;
	}
	/**
	 * @param startingScalePay the startingScalePay to set
	 */
	public void setStartingScalePay(int startingScalePay) {
		this.startingScalePay = startingScalePay;
	}
	/**
	 * @return the startingGrossPay
	 */
	public int getStartingGrossPay() {
		return startingGrossPay;
	}
	/**
	 * @param startingGrossPay the startingGrossPay to set
	 */
	public void setStartingGrossPay(int startingGrossPay) {
		this.startingGrossPay = startingGrossPay;
	}
	/**
	 * @return the currentScalePay
	 */
	public int getCurrentScalePay() {
		return currentScalePay;
	}
	/**
	 * @param currentScalePay the currentScalePay to set
	 */
	public void setCurrentScalePay(int currentScalePay) {
		this.currentScalePay = currentScalePay;
	}
	/**
	 * @return the currentGrossPay
	 */
	public int getCurrentGrossPay() {
		return currentGrossPay;
	}
	/**
	 * @param currentGrossPay the currentGrossPay to set
	 */
	public void setCurrentGrossPay(int currentGrossPay) {
		this.currentGrossPay = currentGrossPay;
	}
	/**
	 * @return the bankDetail
	 */
	public String getBankDetail() {
		return bankDetail;
	}
	/**
	 * @param bankDetail the bankDetail to set
	 */
	public void setBankDetail(String bankDetail) {
		this.bankDetail = bankDetail;
	}
	/**
	 * @return the contactNumber
	 */
	public String getContactNumber() {
		return contactNumber;
	}
	/**
	 * @param contactNumber the contactNumber to set
	 */
	public void setContactNumber(String contactNumber) {
		this.contactNumber = contactNumber;
	}
	/**
	 * @return the address
	 */
	public String getAddress() {
		return address;
	}
	/**
	 * @param address the address to set
	 */
	public void setAddress(String address) {
		this.address = address;
	}
	/* (non-Javadoc)
	 * @see java.lang.Object#toString()
	 */
	@Override
	public String toString() {
		return "EmpPerDetail [empId=" + empId + ", user=" + user + ", empName=" + empName + ", gender=" + gender
				+ ", fatherName=" + fatherName + ", motherName=" + motherName + ", martialStatus=" + martialStatus
				+ ", spouseName=" + spouseName + ", children=" + children + ", DOB=" + DOB + ", religion=" + religion
				+ ", identification=" + identification + ", highestQualification=" + highestQualification
				+ ", designation=" + designation + ", joiningDate=" + joiningDate + ", totWorkExp=" + totWorkExp
				+ ", startingScalePay=" + startingScalePay + ", startingGrossPay=" + startingGrossPay
				+ ", currentScalePay=" + currentScalePay + ", currentGrossPay=" + currentGrossPay + ", bankDetail="
				+ bankDetail + ", contactNumber=" + contactNumber + ", address=" + address + "]";
	}
	
	
	
	
}
