package com.arogyasuraksha.web;

import java.sql.SQLException;
import java.util.ArrayList;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Dao.ArogyaDao;

public class AcceptedAppointments extends HttpServlet{
   public void doGet(HttpServletRequest req, HttpServletResponse res) {
	   ArogyaDao db = new ArogyaDao();
	   try {
		ArrayList<ArrayList<String>> arr =
				db.getAppointmentsAccepted(req.getParameter("doctor"));
		
		
		
	} catch (ClassNotFoundException e) {
		
		e.printStackTrace();
	} catch (SQLException e) {
	    e.printStackTrace();
	}
   }
}
