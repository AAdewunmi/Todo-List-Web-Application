package com.application.todo;

import java.util.ArrayList;
import java.util.List;

import com.application.todo.Todo;

public class TodoService {
	
	private static List<Todo> todos = new ArrayList<Todo>();
	
	static {
		todos.add(new Todo("Learn Web Application Development"));
		todos.add(new Todo("Learn Spring MVC"));
		todos.add(new Todo("Learn Spring REST Services"));
	}
	
	public List<Todo> retrieveTodos(){
		return todos;
	}

}