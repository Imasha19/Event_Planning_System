package com.inquiry;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class updateInqServlet
 */
@WebServlet("/updateInqServlet")
public class updateInqServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		// Retrieving data from the request parameters.
		String type = request.getParameter("type");
		String name = request.getParameter("name");
		String phone = request.getParameter("phone");
		String email = request.getParameter("email");
		String nic = request.getParameter("nic");
		String title = request.getParameter("title");
		String inquiry = request.getParameter("inquiry");
	
		// Calling a utility method to update
		List<Inquiry> inqDetails = inqDBUtil.updateInquiry(type, name, phone, email,nic, title, inquiry);
		request.setAttribute("inqDetails",inqDetails);
		
		// Forwarding the request to a "success.jsp"
		RequestDispatcher dis = request.getRequestDispatcher("successs.jsp");
		dis.forward(request,response);
		
		
	}

}
