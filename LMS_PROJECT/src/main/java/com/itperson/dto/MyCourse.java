package com.itperson.dto;

import java.sql.Date;

public class MyCourse {
	private String coCode;
	private String coName;
	private String memId;
	private int plan;
	private int priority;
	private int daysPerWeeks;
	private Date applyDate;
	private Date expectedEndDate;
	
	public String getCoCode() {
		return coCode;
	}
	public void setCoCode(String coCode) {
		this.coCode = coCode;
	}
	public String getMemId() {
		return memId;
	}
	public void setMemId(String memId) {
		this.memId = memId;
	}
	public int getPlan() {
		return plan;
	}
	public void setPlan(int plan) {
		this.plan = plan;
	}
	public int getPriority() {
		return priority;
	}
	public void setPriority(int priority) {
		this.priority = priority;
	}
	public int getDaysPerWeeks() {
		return daysPerWeeks;
	}
	public void setDaysPerWeeks(int daysPerWeeks) {
		this.daysPerWeeks = daysPerWeeks;
	}
	public Date getApplyDate() {
		return applyDate;
	}
	public void setApplyDate(Date applyDate) {
		this.applyDate = applyDate;
	}
	public Date getExpectedEndDate() {
		return expectedEndDate;
	}
	public void setExpectedEndDate(Date expectedEndDate) {
		this.expectedEndDate = expectedEndDate;
	}
	public String getCoName() {
		return coName;
	}
	public void setCoName(String coName) {
		this.coName = coName;
	}
	@Override
	public String toString() {
		return "MyCourse [coCode=" + coCode + ", memId=" + memId + ", plan=" + plan + ", priority=" + priority + ", daysPerWeeks="
				+ daysPerWeeks + ", applyDate=" + applyDate + ", expectedEndDate=" + expectedEndDate + "]";
	}
}
