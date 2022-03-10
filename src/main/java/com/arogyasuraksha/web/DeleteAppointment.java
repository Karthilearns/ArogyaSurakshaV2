package com.arogyasuraksha.web;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Dao.ArogyaDao;
@WebServlet("/deleteappointment")
public class DeleteAppointment extends HttpServlet{
    public void doGet(HttpServletRequest req, HttpServletResponse res) throws IOException {
    	ArogyaDao db = new ArogyaDao();
    	String username = req.getParameter("user-name");
    	String doctor =req.getParameter("doctor-name");
    	try {
    		if(db.deleteAppointment(username,doctor)) {
    			res.sendRedirect("PatientDashboard.jsp");
    		}
			
		} catch (ClassNotFoundException e) {
			
			e.printStackTrace();
		} catch (SQLException e) {
			
			e.printStackTrace();
		}
    	
    }
}
