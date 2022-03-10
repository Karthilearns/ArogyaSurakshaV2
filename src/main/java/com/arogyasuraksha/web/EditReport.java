package com.arogyasuraksha.web;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import Dao.ArogyaDao;
import Dao.ReportModel;
@WebServlet("/editreport")
public class EditReport extends HttpServlet{
	
	ArogyaDao db = new ArogyaDao();
	
	public void doPost(HttpServletRequest req, HttpServletResponse res) throws IOException {
		
		
    	try {
    		ReportModel report = new ReportModel();
    	HttpSession session = req.getSession();
    	report.setUser_email((String)session.getAttribute("user_email"));
    	report.setPulse_rate(req.getParameter("pulse-rate"));
    	report.setTemperature(req.getParameter("temperature"));
    	report.setOxygen_level(req.getParameter("oxygen-level"));
    	report.setGlucose(req.getParameter("glucose"));
    	report.setBlood_pressure(req.getParameter("blood-pressure"));
    	report.setHaemo_level(req.getParameter("haemo-level"));

    	report.setWbc(req.getParameter("wbc"));
    	report.setRbc(req.getParameter("rbc"));
    	report.setCalcium(req.getParameter("calcium"));
			if(db.replaceReport(report))
			{
				res.sendRedirect("PatientDashboard.jsp");
						}
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

}
