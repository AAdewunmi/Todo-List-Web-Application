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
	
	public boolean equals(Object compared) {
		if (this == compared) {
			return true;
		}
		
		if (!(compared instanceof Todo)) {
			return false;
		}
		
		Todo comparedTodo = (Todo) compared;
		
		if (this.nameString.equals(comparedTodo.nameString)) {
			return true;
		}
		
		return false;
	}
	
	public String toString() {
		return "Todo [name=" + nameString + "]";
	}
}
