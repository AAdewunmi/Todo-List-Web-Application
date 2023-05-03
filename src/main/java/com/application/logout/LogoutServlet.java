package com.application.logout;


import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.application.todo.TodoService;

@WebServlet(urlPatterns = "/login.do")
public class LogoutServlet extends HttpServlet {

	private static final long serialVersionUID = 6886933344657784107L;
	LoginService userValidationService = new LoginService();

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
		request.getRequestDispatcher("WEB-INF/views/Login.jsp").forward(request, response);
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException{
		String name = request.getParameter("name");
		String password = request.getParameter("password");
		
		boolean isUserValid = userValidationService.isUserValid(name, password);
		
		if (isUserValid) {
			request.getSession().setAttribute("name", name);
			response.sendRedirect("/todo.do");
		}else {
			request.setAttribute("errorMessage", "Invalid Credentials!");
			request.getRequestDispatcher("WEB-INF/views/Login.jsp").forward(request, response);
		}
		
		
	}

}