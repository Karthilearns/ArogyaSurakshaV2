package com.arogyasuraksha.web;
import java.sql.SQLException;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import Dao.ArogyaDao;
import Dao.ReportModel;
@WebServlet("/savereport")
public class ReportSave extends HttpServlet{
	ReportModel report = new ReportModel();
	
    public void doPost(HttpServletRequest req, HttpServletResponse res) {
    	ArogyaDao db = new ArogyaDao();
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
    	try {
    		if(db.savereport(report)) {
    			res.sendRedirect("PatientDashboard.jsp");
    		}
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} 
    	
    	
    }
}
