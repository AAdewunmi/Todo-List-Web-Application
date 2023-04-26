package com.application.todo;

public class Todo {
	
	private String nameString;
	
	public Todo(String name) {
		this.nameString = name;
	}
	
	public void setName(String name) {
		this.nameString = name;
	}
	
	public String getName() {
		return nameString;
	}
	
	public String toString() {
		return "Todo [name=" + nameString + "]";
	}
}
