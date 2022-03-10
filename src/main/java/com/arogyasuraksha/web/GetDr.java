package com.arogyasuraksha.web;

import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.JSONArray;
import org.json.JSONObject;

import Dao.ArogyaDao;
//@WebServlet("/getdoctors")
public class GetDr extends HttpServlet{
    ArogyaDao db =  new ArogyaDao();
	public void doGet(HttpServletResponse res, HttpServletRequest req) throws IOException, ClassNotFoundException, SQLException {
		String doctor_type = req.getParameter("doctor-type");
			ArrayList<String> doctors = (ArrayList<String>) db.getDoctors(doctor_type);
			
			JSONArray array = new JSONArray();
	         
	        JSONObject user1 = new JSONObject();
	        user1.put("doctors",doctors);
	    
	        array.put(user1);
	        
	         
	        res.setContentType("application/json");
	        res.getWriter().write(array.toString());
}

}
