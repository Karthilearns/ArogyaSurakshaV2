package com.arogyasuraksha.web;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Dao.ArogyaDao;
@WebServlet("/acceptAppointment")
public class AcceptAppointment extends HttpServlet{
      public void doGet( HttpServletRequest req,HttpServletResponse res) throws IOException {
    	  String doctor_name = req.getParameter("doctor-name");
    	  String user_name = req.getParameter("user-name");
    	  ArogyaDao db = new ArogyaDao();
    	  try {
			if(db.acceptAppointment(doctor_name, user_name)) {
				 res.sendRedirect("doctorDashboard.jsp");
			  }
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
    	  
      }
}
