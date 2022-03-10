package Dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
public class ArogyaDao {
    Connection con=null;
    
    public void connect() throws SQLException, ClassNotFoundException {
    	Class.forName("com.mysql.jdbc.Driver");
    	 con = DriverManager.getConnection("jdbc:mysql://localhost:3306/arogya_suraksha","root","Saibaba@09");
    }
    
    public boolean userSave(UserModel user) throws SQLException, ClassNotFoundException {
    	connect();
    	PreparedStatement pst = con.prepareStatement("insert into users(username,usertype,email,phonenumber,address,pincode,password) values(?,?,?,?,?,?,?)");
    	pst.setString(1,user.getUsername());
    	pst.setString(2,user.getUser_type());
    	pst.setString(3,user.getEmail());
    	pst.setString(4,user.getPhone_number());
    	pst.setString(5,user.getAddress());
    	pst.setString(6,user.getPincode());
    	pst.setString(7,user.getPassword());
  
    	if(pst.executeUpdate()>0) {
    		return true;
    	}
    	return false;
    	
    }
    
    public String getType(String username) throws SQLException, ClassNotFoundException {
    	connect();
    	PreparedStatement pst = con.prepareStatement("select usertype from users where username=(?)");
    	pst.setString(1, username);
    	ResultSet rs = pst.executeQuery();
    	rs.next();
    	return rs.getString(1);
    }
    
    public boolean isAuthenticated(String doctor_name) throws SQLException, ClassNotFoundException {
    	connect();
    	PreparedStatement pst = con.prepareStatement("select isauthenticated from users where username=(?) and usertype=(?)");
    	pst.setString(1, doctor_name);
    	pst.setString(2, "doctor");
    	ResultSet rs= pst.executeQuery();
    	rs.next();
    	return (rs.getString(1).equals("1"));
    }
    
    public boolean resetPass(String username,String password) throws SQLException, ClassNotFoundException {
    	connect();
    	PreparedStatement pst = con.prepareStatement("update  users set password=? where username=?");
    	pst.setString(1, password);
    	pst.setString(2, username);
    	
		return pst.executeUpdate()>0;
    }
    
    public boolean authenticatePass(String username, String password) throws SQLException, ClassNotFoundException {
    	connect();
    	PreparedStatement pst = con.prepareStatement("select password from users where username =(?) ");
    	pst.setString(1, username);
        ResultSet rs = pst.executeQuery();
        rs.next();
        
		return rs.getString(1).equals(password);
    	
    }
    
    public boolean savereport(ReportModel report) throws ClassNotFoundException, SQLException {
    	
    	connect();
    	PreparedStatement pst = con.prepareStatement("insert into reports values(?,?,?,?,?,?,?,?,?,?)");
    	pst.setString(1, report.getUser_email());
    	pst.setString(2,report.getPulse_rate());
    	pst.setString(3,report.getTemperature());
    	pst.setString(4,report.getOxygen_level());
    	pst.setString(5,report.getGlucose());
    	pst.setString(6,report.getBlood_pressure());
    	pst.setString(7,report.getHaemo_level());
    	pst.setString(8,report.getWbc());
    	pst.setString(9,report.getRbc());
    	pst.setString(10,report.getCalcium());
    	
    
    	
		return pst.executeUpdate()>0;
    	
    }
    public String getEmail(String username, String password) throws ClassNotFoundException, SQLException {
    	connect();
    	PreparedStatement pst = con.prepareStatement("select email from users where username=(?) and password=(?)");
    	pst.setString(1, username);
    	pst.setString(2, password);
    	ResultSet rs = pst.executeQuery();
    	rs.next();
    	return rs.getString(1);
    }
    
    public List<String> getDoctors(String Type) throws ClassNotFoundException, SQLException{
    	ArrayList<String> doctors = new ArrayList<String>(); 
    	connect();
    	PreparedStatement pst = con.prepareStatement("select username from users where usertype=(?) and specialisation=(?)");
    	pst.setString(1,"doctor");
    	pst.setString(2, Type);
    	ResultSet rs = pst.executeQuery();
    	while(rs.next()) {
    		doctors.add(rs.getString(1));
    	}
    	return doctors;
    	
    }
    
    public ArrayList<ArrayList<String>> getAppointmentsNotAccepted(String doctor) throws SQLException, ClassNotFoundException{
    	ArrayList<ArrayList<String>> patients = new ArrayList<ArrayList<String>>();
    	connect();
    	PreparedStatement pst = con.prepareStatement("select username,email from appointments where doctor_name=(?) and accepted=0 and completed=0;");
    	pst.setString(1, doctor);
    	ResultSet rs= pst.executeQuery();
    	while(rs.next()) {
    		ArrayList<String> arr = new ArrayList<String>();
    		arr.add(rs.getString(1));
    		arr.add(rs.getString(2));
    		patients.add(arr);
    	}
    	return patients;
    }
    
    public boolean replaceReport(ReportModel report) throws SQLException, ClassNotFoundException {
    	connect();
    	PreparedStatement pst = con.prepareStatement("replace into reports values(?,?,?,?,?,?,?,?,?,?)");
    	pst.setString(1,report.getUser_email());
    	pst.setString(2,report.getPulse_rate());
    	pst.setString(3,report.getTemperature());
    	pst.setString(4,report.getOxygen_level());
    	pst.setString(5,report.getGlucose());
    	pst.setString(6,report.getBlood_pressure());
    	pst.setString(7,report.getHaemo_level());
    	pst.setString(8,report.getWbc());
    	pst.setString(9,report.getRbc());
    	pst.setString(10,report.getCalcium());
    	
    	return pst.executeUpdate()>0;
    	
    }
    
    public boolean makeAppointment(AppointmentPojo appointment) throws SQLException, ClassNotFoundException {
    	connect();
    	PreparedStatement pst = con.prepareStatement("insert into appointments(doctor_name,specialisation,time,date,username,email) values(?,?,?,?,?,?)");
    	pst.setString(1,appointment.getDoctor_name());
    	pst.setString(2,appointment.getDoctor_type());
    	pst.setString(3,appointment.getTime());
    	pst.setString(4,appointment.getDate());
    	pst.setString(5,appointment.getUsername());
    	pst.setString(6,appointment.getUseremail());
    	
    	return pst.executeUpdate()>0;
    }
    

    
     
    public ArrayList<ArrayList<String>> getAppointmentsAccepted(String doctor) throws SQLException, ClassNotFoundException
    {
    	connect();
    	ArrayList<ArrayList<String>> patients = new ArrayList<ArrayList<String>>();
    	PreparedStatement pst = con.prepareStatement("select username,email from appointments where doctor_name=(?) and accepted=1 and completed=0;");
    	pst.setString(1, doctor);
    	ResultSet rs = pst.executeQuery();
    	rs.next();
    	while(rs.next()) {
    		ArrayList<String> arr = new ArrayList<String>();
    		arr.add(rs.getString(1));
    		arr.add(rs.getString(2));
    		patients.add(arr);
    	}
    	return patients;
    }
    
    public boolean acceptAppointment(String doctor_name, String username) throws ClassNotFoundException, SQLException {
    	connect();
    	
    	PreparedStatement pst = con.prepareStatement("update appointments set accepted=1 where doctor_name=(?) and username=(?)");
    	pst.setString(1, doctor_name);
    	pst.setString(2, username);
    	return pst.executeUpdate()>0;
    	
    }
    
    public boolean checkIfExists(String useremail) throws ClassNotFoundException, SQLException {
    	connect();
    	PreparedStatement pst = con.prepareStatement("select * from reports where useremail=(?)");
    	pst.setString(1, useremail);
    	ResultSet rs = pst.executeQuery();
    	return rs.next();
    }
    
    public ArrayList<ArrayList<String>> getMyAppointments(String username, String email) throws ClassNotFoundException, SQLException{
    	ArrayList<ArrayList<String>> myappointments = new ArrayList<ArrayList<String>>();
    	connect();
    	PreparedStatement pst = con.prepareStatement("select doctor_name , specialisation from appointments where username=(?) and email =(?) and completed=0");
    	pst.setString(1, username);
    	pst.setString(2,email);
    	ResultSet rs = pst.executeQuery();
    while(rs.next()) {
    	ArrayList<String> arr = new ArrayList<String>();
    	arr.add(rs.getString(1));
    	arr.add(rs.getString(2));
    	myappointments.add(arr);
    }
    	return myappointments;
    }
    
    public String getMeetLink(String doctor_name) throws SQLException, ClassNotFoundException {
    	connect();
    	PreparedStatement pst = con.prepareStatement("select meet_link from users where username=(?) and usertype='doctor'");
    	pst.setString(1, doctor_name);
    	ResultSet rs = pst.executeQuery();
    	rs.next();
    	return rs.getString(1);
    	
    }
    
    public boolean  deleteAppointment(String username,String doctor) throws ClassNotFoundException, SQLException {
    	connect();
    	PreparedStatement pst = con.prepareStatement("delete from appointments where username=(?) and doctor_name=(?)  order by sno limit 1");
    	pst.setString(1, username);
    	pst.setString(2, doctor);
    	return pst.executeUpdate()>0;
    	
    	
    }
    
    public boolean consultcompleted(String email, String doctorname) throws SQLException, ClassNotFoundException {
    	connect();
    	PreparedStatement pst =  con.prepareStatement("update  appointments set completed=1 where doctor_name =(?) and email=(?) ");
    	pst.setString(1, doctorname);
    	pst.setString(2, email);
    	return pst.executeUpdate()>0;
    }
    
    
    public boolean getDoctorsNotAuthenticated() throws ClassNotFoundException, SQLException{
    	connect();
    	PreparedStatement pst = con.prepareStatement("select username , specialization from users where usertype=doctor and isauthenticated=0 ");
		return false;
    	
    	
    }
    
}
