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
 * Servlet implementation class inquiryInsert
 */
@WebServlet("/inquiryInsert")
public class inquiryInsert extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		// Retrieve inquiry data
		String type = request.getParameter("type");
		String name = request.getParameter("name");
		String phone = request.getParameter("phone");
		String email = request.getParameter("email");
		String nic = request.getParameter("nic");
		String title = request.getParameter("title");
		String inquiry = request.getParameter("inquiry");
		
		// Insert the data into the database and retrieve the updated details.
		List<Inquiry> inqDetails = inqDBUtil.insertInquiry(type, name, phone, email,nic, title, inquiry);
		request.setAttribute("inqDetails",inqDetails);
		
		 // Forward the request to a "success.jsp"
		RequestDispatcher dis = request.getRequestDispatcher("successs.jsp");
		dis.forward(request,response);
		
	}

}
