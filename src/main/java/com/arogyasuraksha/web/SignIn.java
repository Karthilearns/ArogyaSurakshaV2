package com.arogyasuraksha.web;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;

import javax.servlet.annotation.WebServlet;

import javax.servlet.http.HttpServlet;

import javax.servlet.http.HttpServletRequest;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import Dao.ArogyaDao;

@WebServlet("/signin")
public class SignIn extends HttpServlet{
	
	public void doGet(HttpServletRequest req, HttpServletResponse res) throws IOException {
		ArogyaDao db = new ArogyaDao();
		//HttpSession session = req.getSession();
		
	
		
			try {
				HttpSession session = req.getSession();
				session.setAttribute("user_email",db.getEmail(req.getParameter("username"),req.getParameter("password")));
				session.setAttribute("user_name", req.getParameter("username"));
				
				if(db.getType(req.getParameter("username")).equals("doctor")){
					if(db.isAuthenticated(req.getParameter("username"))){
						req.setAttribute("type", "doctorAuthenticated");
					}
					else {
						req.setAttribute("type", "doctorNotAuthenticated");
					}
				}
				 else if(db.getType(req.getParameter("username")).equals("admin")){
					req.setAttribute("type", "admin");;
				 }
				
				 else {
					req.setAttribute("type", "patient");
				}
			} catch (Exception e1) {
				// TODO Auto-generated catch block
				e1.printStackTrace();
			}
		
		
		
		try {
			if(req.getAttribute("type").equals("doctorAuthenticated") && db.authenticatePass(req.getParameter("username"),req.getParameter("password"))) {
//				PrintWriter out = res.getWriter();
				res.sendRedirect("doctorDashboard.jsp");
			}
			else if(req.getAttribute("type").equals("doctorNotAuthenticated")) {
//				PrintWriter out = res.getWriter();
//				out.print("doc not auth");
				res.sendRedirect("docNotAllowed.html");
			}
			else if(req.getAttribute("type").equals("admin")&& db.authenticatePass(req.getParameter("username"),req.getParameter("password"))) {
//				PrintWriter out = res.getWriter();
//				out.print("admin");
				res.sendRedirect("AdminDashBoard.jsp");
			}
			else if(req.getAttribute("type").equals("patient")&& db.authenticatePass(req.getParameter("username"),req.getParameter("password"))){
//				PrintWriter out = res.getWriter();
//				out.print("patient");
				
				res.sendRedirect("PatientDashboard.jsp");
			}
		
		}  catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} 
	
		}
}