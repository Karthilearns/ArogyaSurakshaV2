package com.arogyasuraksha.web;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.RequestDispatcher;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import Dao.AppointmentPojo;
import Dao.ArogyaDao;
@WebServlet("/createappointment")
public class CreateAppointment extends HttpServlet{
	 Date dt = new Date();
	 ArogyaDao db = new ArogyaDao();
   public void doGet(HttpServletRequest req, HttpServletResponse res) throws IOException{
	   
	   try {
		   HttpSession session = req.getSession();
		   String[] doctor_name_type = req.getParameter("doctor-name-type").split("-");
		   String doctor_name = doctor_name_type[0];
		   String doctor_type = doctor_name_type[1];
		   String user_name = (String) session.getAttribute("user_name");
		   String user_email =(String) session.getAttribute("user_email");
		  
		   SimpleDateFormat sdate = new SimpleDateFormat("dd.MM.yyyy");
		   String date = sdate.format(dt);
		   SimpleDateFormat stime = new SimpleDateFormat("hh:mm:ss a");
		   String time = stime.format(dt);
		   AppointmentPojo appointment = new  AppointmentPojo(doctor_name,doctor_type,user_name,user_email,date,time);
		   if(!db.makeAppointment(appointment)) {
			   PrintWriter out = res.getWriter();
			   out.print("error occured, please try after sometime");
		   }
		   else {
			   if(db.checkIfExists(user_email)) {
				   
				   RequestDispatcher rdp = req.getRequestDispatcher("displayReport.jsp");
				 
				   res.sendRedirect("displayReport.jsp");
			   }
			   else {
				   RequestDispatcher rdp = req.getRequestDispatcher("displayReport.jsp");
				
				   res.sendRedirect("report.html");
			   }
			 
		   }
	} catch (ClassNotFoundException e) {
		
		e.printStackTrace();
	} catch (SQLException e) {
		
		e.printStackTrace();
	}
	   
 }
}
