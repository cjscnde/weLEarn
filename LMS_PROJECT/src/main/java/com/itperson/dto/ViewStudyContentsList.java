package com.itperson.dto;

import java.sql.Date;

public class ViewStudyContentsList {
	private String coCode;
	private String coName;
	private String caCode;
	private String caName;
	private String subCode;
	private String subName;
	private String code;
	private String title;
	private int importance;
	private Date regDate;
	private int qCount;
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
	public String getCaCode() {
		return caCode;
	}
	public void setCaCode(String caCode) {
		this.caCode = caCode;
	}
	public String getCaName() {
		return caName;
	}
	public void setCaName(String caName) {
		this.caName = caName;
	}
	public String getSubCode() {
		return subCode;
	}
	public void setSubCode(String subCode) {
		this.subCode = subCode;
	}
	public String getSubName() {
		return subName;
	}
	public void setSubName(String subName) {
		this.subName = subName;
	}
	public String getCode() {
		return code;
	}
	public void setCode(String code) {
		this.code = code;
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
	public int getqCount() {
		return qCount;
	}
	public void setqCount(int qCount) {
		this.qCount = qCount;
	}
	public int getImportance() {
		return importance;
	}
	public void setImportance(int importance) {
		this.importance = importance;
	}
	@Override
	public String toString() {
		return "VeiwStudyContentsList [coCode=" + coCode + ", coName=" + coName + ", caCode=" + caCode + ", caName="
				+ caName + ", subCode=" + subCode + ", subName=" + subName + ", code=" + code + ", title=" + title
				+ ", regDate=" + regDate + ", qCount=" + qCount + "]";
	}	
	
}
