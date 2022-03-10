package com.arogyasuraksha.web;

import java.sql.SQLException;
import java.util.ArrayList;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import Dao.ArogyaDao;

public class doctorappointments extends HttpServlet{
	ArogyaDao db =new ArogyaDao();
      public void doGet(HttpServletRequest req, HttpServletResponse res) {
    	    HttpSession session = req.getSession();
    	    String doctorname = (String) session.getAttribute("user_name");
    	    try {
				ArrayList<ArrayList<String>> arr=db.getAppointmentsNotAccepted(doctorname);
			} catch (ClassNotFoundException e) {
			
				e.printStackTrace();
			} catch (SQLException e) {
				
				e.printStackTrace();
			}
      }
}
