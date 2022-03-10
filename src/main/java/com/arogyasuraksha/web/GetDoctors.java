package com.arogyasuraksha.web;

import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Dao.ArogyaDao;
@WebServlet("/getdoctors")
public class GetDoctors extends HttpServlet{
	  ArogyaDao db = new ArogyaDao();
	private Object gson;
      public void doGet(HttpServletRequest req, HttpServletResponse res) {
    	  
    	  try {
    	    String doctortype = req.getParameter("doctor-type");
			//ArrayList<String> doctors = (ArrayList<String>) db.getDoctors(doctortype);
//			PrintWriter out = res.getWriter();
//			for(String doctor:doctors) {
//				out.println(doctor);
//			}
			RequestDispatcher rdp = req.getRequestDispatcher("patientdashboard-2.jsp");
			req.setAttribute("doctor-type", doctortype);
			rdp.forward(req,res);
			
//			
//				DoctorDetails details = new DoctorDetails(doctors,doctortype);
//				String detailsjson =new Gson().toJson(details);
//		        res.setContentType("application/json");
//		        res.setCharacterEncoding("UTF-8");
//		        out.print(detailsjson);
//		        out.flush();   
			
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
      }
}
