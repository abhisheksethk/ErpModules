package com.entity;

import java.sql.Date;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Table
@Entity(name="acadmicDetails")
public class AcadmicDetail
{
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private int acadmicId;
	@ManyToOne
	@JoinColumn(name="empId")
	private EmpPerDetail empPerDetail;
	private int serial;
	private String certifiedDegree ;
	private String discipline;
	private String boardUniversity ;
	private Date   passingYear ;
	private String marksObtained ;
	private String totalMarks ;
	private String cgpaOrPercentange;
	/**
	 * 
	 */
	public AcadmicDetail() {
	}
	/**
	 * @return the acadmicId
	 */
	public int getAcadmicId() {
		return acadmicId;
	}
	/**
	 * @param acadmicId the acadmicId to set
	 */
	public void setAcadmicId(int acadmicId) {
		this.acadmicId = acadmicId;
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
	 * @return the certifiedDegree
	 */
	public String getCertifiedDegree() {
		return certifiedDegree;
	}
	/**
	 * @param certifiedDegree the certifiedDegree to set
	 */
	public void setCertifiedDegree(String certifiedDegree) {
		this.certifiedDegree = certifiedDegree;
	}
	/**
	 * @return the discipline
	 */
	public String getDiscipline() {
		return discipline;
	}
	/**
	 * @param discipline the discipline to set
	 */
	public void setDiscipline(String discipline) {
		this.discipline = discipline;
	}
	/**
	 * @return the boardUniversity
	 */
	public String getBoardUniversity() {
		return boardUniversity;
	}
	/**
	 * @param boardUniversity the boardUniversity to set
	 */
	public void setBoardUniversity(String boardUniversity) {
		this.boardUniversity = boardUniversity;
	}
	/**
	 * @return the passingYear
	 */
	public Date getPassingYear() {
		return passingYear;
	}
	/**
	 * @param passingYear the passingYear to set
	 */
	public void setPassingYear(Date passingYear) {
		this.passingYear = passingYear;
	}
	/**
	 * @return the marksObtained
	 */
	public String getMarksObtained() {
		return marksObtained;
	}
	/**
	 * @param marksObtained the marksObtained to set
	 */
	public void setMarksObtained(String marksObtained) {
		this.marksObtained = marksObtained;
	}
	/**
	 * @return the totalMarks
	 */
	public String getTotalMarks() {
		return totalMarks;
	}
	/**
	 * @param totalMarks the totalMarks to set
	 */
	public void setTotalMarks(String totalMarks) {
		this.totalMarks = totalMarks;
	}
	/**
	 * @return the cgpaOrPercentange
	 */
	public String getCgpaOrPercentange() {
		return cgpaOrPercentange;
	}
	/**
	 * @param cgpaOrPercentange the cgpaOrPercentange to set
	 */
	public void setCgpaOrPercentange(String cgpaOrPercentange) {
		this.cgpaOrPercentange = cgpaOrPercentange;
	}
	/* (non-Javadoc)
	 * @see java.lang.Object#toString()
	 */
	@Override
	public String toString() {
		return "AcadmicDetail [acadmicId=" + acadmicId + ", empPerDetail=" + empPerDetail + ", serial=" + serial
				+ ", certifiedDegree=" + certifiedDegree + ", discipline=" + discipline + ", boardUniversity="
				+ boardUniversity + ", passingYear=" + passingYear + ", marksObtained=" + marksObtained
				+ ", totalMarks=" + totalMarks + ", cgpaOrPercentange=" + cgpaOrPercentange + "]";
	}
	
}
