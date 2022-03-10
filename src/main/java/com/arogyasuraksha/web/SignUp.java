package com.arogyasuraksha.web;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import Dao.ArogyaDao;
import Dao.UserModel;


@WebServlet("/signup")
public class SignUp extends HttpServlet{
	@Override
	
    public void doPost(HttpServletRequest req, HttpServletResponse res) throws IOException {
		PrintWriter out = res.getWriter();
		
    	String user_type = req.getParameter("user-type");
    	String username = req.getParameter("username");
    	String email = req.getParameter("email");
    	String phone_number = req.getParameter("phone-number");
    	String address = req.getParameter("address");
    	String pincode = req.getParameter("pincode");
    	String password = req.getParameter("password");
    	UserModel  user = new UserModel(user_type,username,email,phone_number,address,pincode,password);
        ArogyaDao db = new ArogyaDao();
        try {
			if(db.userSave(user)) {
				
				res.sendRedirect("signin.jsp");
//				out.print("success");
			}
		} 
        catch (Exception e) 
        {
			
			e.printStackTrace();
		}
    	
    }
}
