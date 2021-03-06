package com.itperson.dto;

import java.sql.Date;

public class ViewStudyLogCalculation{
	private String stuCode;
	private String memId;
	private int stuCount;
	private long elapsedTime;
	private String coCode;
	private String coName;
	private String title;
	private Date regDate;
	public String getStuCode() {
		return stuCode;
	}
	public void setStuCode(String stuCode) {
		this.stuCode = stuCode;
	}
	public String getMemId() {
		return memId;
	}
	public void setMemId(String memId) {
		this.memId = memId;
	}
	public int getStuCount() {
		return stuCount;
	}
	public void setStuCount(int stuCount) {
		this.stuCount = stuCount;
	}
	public long getElapsedTime() {
		return elapsedTime;
	}
	public void setElapsedTime(long elapsedTime) {
		this.elapsedTime = elapsedTime;
	}
	public String getCoCode() {
		return coCode;
	}
	public void setCoCode(String coCode) {
		this.coCode = coCode;
	}
	public String getCoName() {
		return coName;
	}
	public void setCoName(String coName) {
		this.coName = coName;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	
	public Date getRegDate() {
		return regDate;
	}
	public void setRegDate(Date regDate) {
		this.regDate = regDate;
	}
	@Override
	public String toString() {
		return "ViewStudyLogCalculation [stuCode=" + stuCode + ", memId=" + memId + ", stuCount=" + stuCount
				+ ", elapsedTime=" + elapsedTime + "]";
	}
	
	public double getMemoryRate() {
		return 100 * 1.84 / (1.25*Math.log10(this.getElapsedTime()+1)/this.getStuCount() + 1.84);
	}
}
