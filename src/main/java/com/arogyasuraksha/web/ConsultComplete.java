package com.arogyasuraksha.web;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Dao.ArogyaDao;
@WebServlet("/consultcomplete")
public class ConsultComplete extends HttpServlet{
	ArogyaDao db = new ArogyaDao();	
  public void doGet(HttpServletRequest req,HttpServletResponse res) throws IOException {
	  String doctor_name = req.getParameter("doctor-name");
	  String email = req.getParameter("email");
	  try {
		if(db.consultcompleted(email, doctor_name)) {
			  res.sendRedirect("doctorDashboard.jsp");
		  }
	} catch (ClassNotFoundException e) {
		
		e.printStackTrace();
	} catch (SQLException e) {
		
		e.printStackTrace();
	} catch (IOException e) {
		
		e.printStackTrace();
	}
  }
}
