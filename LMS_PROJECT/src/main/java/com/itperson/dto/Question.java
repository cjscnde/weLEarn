package com.itperson.dto;

import java.util.ArrayList;

public class Question {
	private String code;
	private String question;
	private String stuCode;
	private String type;
	
	public Question() {};
	public Question(String code, String question, String stuCode, String type) {
		this.code = code;
		this.question = question;
		this.stuCode = stuCode;
		this.type = type;
	}
	public String getCode() {
		return code;
	}
	public void setCode(String code) {
		this.code = code;
	}
	public String getQuestion() {
		return question;
	}
	public void setQuestion(String question) {
		this.question = question;
	}
	public String getStuCode() {
		return stuCode;
	}
	public void setStuCode(String stuCode) {
		this.stuCode = stuCode;
	}
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	
	@Override
	public String toString() {
		return "MQuestion [code=" + code + ", question=" + question + ", stuCode=" + stuCode + ", type=" + type + "]";
	}
	
	public ArrayList<MAnswer> getAnswerList(){
		return null;		
	}
	
	public String getAnswer() {
		return null;
	}
}
