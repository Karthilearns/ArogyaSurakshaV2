
package com.arogyasuraksha.filters;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;
import Dao.ArogyaDao;


//@WebFilter("/signin")
public class SignUpFilter implements Filter{
	
   
	public void doFilter(ServletRequest req, ServletResponse res, FilterChain chain) throws IOException, ServletException {
		ArogyaDao db = new ArogyaDao();
		
		try {
			if(db.getType(req.getParameter("username")).equals("doctor")){
				if(db.isAuthenticated(req.getParameter("username"))){
					req.setAttribute("type", "doctorAuthenticated");
				}
				else {
					req.setAttribute("type", "doctorNotAuthenticated");
				}
			
	
			}
			else if(db.getType(req.getParameter("username")).equals("admin")){
				req.setAttribute("type", "admin");;
			}
			else {
				req.setAttribute("type", "patient");
			}
			chain.doFilter(req, res);
		}
		catch (Exception e) {
			
			e.printStackTrace();
		}
		
		
	}
	public void init(FilterConfig arg0) throws ServletException {
		
		
	}
	public void destroy() {
		   
	}
 
}
