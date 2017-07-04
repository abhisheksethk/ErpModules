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

import org.hibernate.annotations.Type;
import org.hibernate.validator.constraints.NotBlank;

@Entity
@Table(name="empExpDetails")
public class EmpExpDetail 
{
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private int jobId;
	@ManyToOne
	@JoinColumn(name="empId")
	private EmpPerDetail empPerDetail;
	@NotNull
	private int serial;
    @NotBlank
	private String jobType;
	@NotBlank
	private String designation ;
	@NotBlank
	private String compName;
	@Type(type="text")
	private String compDetail ;
	@NotBlank
	private String empStartingScalePay;
	@NotBlank
	private String empStartingGrossPay;
	@NotBlank
	private String empHighestScalePay;
	@NotBlank
	private String empHighestGrossPay;
	@NotNull
	private Date jobJoiningDate;
	@NotNull
	private Date jobQuitDate;
	private String profession;
	private String specialization;
	
	public EmpExpDetail() {
	}
	/**
	 * @return the jobId
	 */
	public int getJobId() {
		return jobId;
	}
	/**
	 * @param jobId the jobId to set
	 */
	public void setJobId(int jobId) {
		this.jobId = jobId;
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
	 * @return the jobType
	 */
	public String getJobType() {
		return jobType;
	}
	/**
	 * @param jobType the jobType to set
	 */
	public void setJobType(String jobType) {
		this.jobType = jobType;
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
	 * @return the compName
	 */
	public String getCompName() {
		return compName;
	}
	/**
	 * @param compName the compName to set
	 */
	public void setCompName(String compName) {
		this.compName = compName;
	}
	/**
	 * @return the compDetail
	 */
	public String getCompDetail() {
		return compDetail;
	}
	/**
	 * @param compDetail the compDetail to set
	 */
	public void setCompDetail(String compDetail) {
		this.compDetail = compDetail;
	}
	/**
	 * @return the empStartingScalePay
	 */
	public String getEmpStartingScalePay() {
		return empStartingScalePay;
	}
	/**
	 * @param empStartingScalePay the empStartingScalePay to set
	 */
	public void setEmpStartingScalePay(String empStartingScalePay) {
		this.empStartingScalePay = empStartingScalePay;
	}
	/**
	 * @return the empStartingGrossPay
	 */
	public String getEmpStartingGrossPay() {
		return empStartingGrossPay;
	}
	/**
	 * @param empStartingGrossPay the empStartingGrossPay to set
	 */
	public void setEmpStartingGrossPay(String empStartingGrossPay) {
		this.empStartingGrossPay = empStartingGrossPay;
	}
	/**
	 * @return the empHighestScalePay
	 */
	public String getEmpHighestScalePay() {
		return empHighestScalePay;
	}
	/**
	 * @param empHighestScalePay the empHighestScalePay to set
	 */
	public void setEmpHighestScalePay(String empHighestScalePay) {
		this.empHighestScalePay = empHighestScalePay;
	}
	/**
	 * @return the empHighestGrossPay
	 */
	public String getEmpHighestGrossPay() {
		return empHighestGrossPay;
	}
	/**
	 * @param empHighestGrossPay the empHighestGrossPay to set
	 */
	public void setEmpHighestGrossPay(String empHighestGrossPay) {
		this.empHighestGrossPay = empHighestGrossPay;
	}
	/**
	 * @return the jobJoiningDate
	 */
	public Date getJobJoiningDate() {
		return jobJoiningDate;
	}
	/**
	 * @param jobJoiningDate the jobJoiningDate to set
	 */
	public void setJobJoiningDate(Date jobJoiningDate) {
		this.jobJoiningDate = jobJoiningDate;
	}
	/**
	 * @return the jobQuitDate
	 */
	public Date getJobQuitDate() {
		return jobQuitDate;
	}
	/**
	 * @param jobQuitDate the jobQuitDate to set
	 */
	public void setJobQuitDate(Date jobQuitDate) {
		this.jobQuitDate = jobQuitDate;
	}
	/**
	 * @return the profession
	 */
	public String getProfession() {
		return profession;
	}
	/**
	 * @param profession the profession to set
	 */
	public void setProfession(String profession) {
		this.profession = profession;
	}
	/**
	 * @return the specialization
	 */
	public String getSpecialization() {
		return specialization;
	}
	/**
	 * @param specialization the specialization to set
	 */
	public void setSpecialization(String specialization) {
		this.specialization = specialization;
	}
	/* (non-Javadoc)
	 * @see java.lang.Object#toString()
	 */
	@Override
	public String toString() {
		return "EmpExpDetail [jobId=" + jobId + ", empPerDetail=" + empPerDetail + ", serial=" + serial + ", jobType="
				+ jobType + ", designation=" + designation + ", compName=" + compName + ", compDetail=" + compDetail
				+ ", empStartingScalePay=" + empStartingScalePay + ", empStartingGrossPay=" + empStartingGrossPay
				+ ", empHighestScalePay=" + empHighestScalePay + ", empHighestGrossPay=" + empHighestGrossPay
				+ ", jobJoiningDate=" + jobJoiningDate + ", jobQuitDate=" + jobQuitDate + ", profession=" + profession
				+ ", specialization=" + specialization + "]";
	}
	
}
