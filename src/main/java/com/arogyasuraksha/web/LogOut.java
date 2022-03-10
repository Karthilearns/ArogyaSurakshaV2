package com.arogyasuraksha.web;

import java.io.IOException;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
@WebServlet("/logout")
public class LogOut extends HttpServlet
{
	public void doGet(HttpServletRequest req , HttpServletResponse res) throws IOException {
		HttpSession session = req.getSession();
		session.removeAttribute("type");
		session.removeAttribute("user_name");
		session.removeAttribute("user_email");
		session.invalidate();
		
		try {
			res.sendRedirect("signin.jsp");
		} 
		
		catch (IOException e) {
						e.printStackTrace();
		}
		
	}
}
