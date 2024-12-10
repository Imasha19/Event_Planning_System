package com.inquiry;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class DeleteInqServlet
 */
@WebServlet("/DeleteInqServlet")
public class DeleteInqServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		// Retrieving the nic from the request parameter
		String nic = request.getParameter("nic");
		boolean isTrue = inqDBUtil.deleteInquiry(nic);
		
		
		// Checking if the deletion was successful
		if(isTrue == true) {
			RequestDispatcher dis = request.getRequestDispatcher("customerinsert.jsp");
			dis.forward(request, response);
			
		}
		else {
			RequestDispatcher dis2 = request.getRequestDispatcher("unsuccess.jsp");
			dis2.forward(request, response);
		}
		
	}

}
