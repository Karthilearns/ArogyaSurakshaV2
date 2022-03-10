package com.arogyasuraksha.web;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import Dao.ArogyaDao;
@WebServlet("/reset")
public class ResetPassword extends HttpServlet{
	ArogyaDao db = new ArogyaDao();
	public void doPost(HttpServletRequest req, HttpServletResponse res) throws IOException {
		HttpSession session = req.getSession();
		PrintWriter out = res.getWriter();
		String username = req.getParameter("username");
		String password = req.getParameter("password");
		try {
			if(db.resetPass(username, password)) {
				out.print("password changed");
				//res.sendRedirect("signin.html");
			}
		} 
		catch (Exception e) {
			
			e.printStackTrace();
		}
	}

}
