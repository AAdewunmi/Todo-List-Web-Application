package com.application;


import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet(urlPatterns = "/login.do")
public class LoginServlet extends HttpServlet {

	private static final long serialVersionUID = 6886933344657784107L;
	UserValidationService userValidationService = new UserValidationService();
	TodoService todoService = new TodoService();

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
		request.getRequestDispatcher("WEB-INF/views/Login.jsp").forward(request, response);
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException{
		String name = request.getParameter("name");
		String password = request.getParameter("password");
		
		boolean isUserValid = userValidationService.isUserValid(name, password);
		
		if (isUserValid) {
			request.setAttribute("name", name);
			request.setAttribute("password", password);
			request.setAttribute("todos", todoService.retrieveTodos());
			request.getRequestDispatcher("WEB-INF/views/Welcome.jsp").forward(request, response);
		}else {
			request.setAttribute("errorMessage", "Invalid Credentials!");
			request.getRequestDispatcher("WEB-INF/views/Login.jsp").forward(request, response);
		}
		
		
	}

}