package org.jeju.ctrl;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/pro01")
public class Main extends HttpServlet {
	private static final long serialVersionUID = 1L;
   
    public Main() {
    }
	
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String author = "유정환";
		ServletContext application = request.getServletContext();
		String realPath = request.getSession().getServletContext().getRealPath("/");
		application.setAttribute("realPath",realPath);
		application.setAttribute("title","애월읍 소개");
		
		
		
		request.setAttribute("author",author);
		request.setAttribute("sea","./imgs/sea.jpg");
		RequestDispatcher view = request.getRequestDispatcher("/WEB-INF/index.jsp"); //("/WEB_INF/index.jsp"); ���� ��?
		view.forward(request, response);
	}
}
