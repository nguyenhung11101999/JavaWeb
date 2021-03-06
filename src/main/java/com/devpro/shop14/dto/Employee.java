package com.devpro.shop14.dto;

public class Employee {
	private int ID;
	private String name;
	private int scores;
	public Employee(int iD, String name, int scores) {
		super();
		ID = iD;
		this.name = name;
		this.scores = scores;
	}
	public int getID() {
		return ID;
	}
	public void setID(int iD) {
		ID = iD;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public int getScores() {
		return scores;
	}
	public void setScores(int scores) {
		this.scores = scores;
	}
	
	
}
