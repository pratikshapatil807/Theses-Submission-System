/*package com.minds.core;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

*//**
 * Servlet implementation class MailerApp
 *//*
@WebServlet("/MailerApp")
public class MailerApp extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    *//**
     * @see HttpServlet#HttpServlet()
     *//*
    public MailerApp() {
        super();
 
    }

	*//**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 *//*
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        
        String to = request.getParameter("email");
        String message =  request.getParameter("desc");
        System.out.print("Message... "+message);
       
        SendMail.send(to, message);
        out.println("Mail send successfully");
        out.println("<br> <a href='view_thesis.jsp'> Back </a>");
    
	}

	*//**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 *//*
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		
        doGet(request, response);
	}

}
*/









package com.minds.core;

import java.io.IOException;

import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/MailerApp")
public class MailerApp extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
    public MailerApp() {
        super();
       
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        
        String to = request.getParameter("email");
        String message =  request.getParameter("desc");
        System.out.print("Message... "+message);
       
        SendMail.send(to, message);
        out.println("Mail sent successfully");
        out.println("<br> <a href='view_thesis.jsp'> Send Result Report </a>");
       
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		
        doGet(request, response);
	}

}
