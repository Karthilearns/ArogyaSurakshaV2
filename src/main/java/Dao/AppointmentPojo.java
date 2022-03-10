package Dao;

public class AppointmentPojo {
   String doctor_name;
   String doctor_type;
   String username;
   String useremail;
   String date;
   String time;
   int accepted;
   int completed;

   
   
public AppointmentPojo(String doctor_name, String doctor_type, String username, String useremail, String date,
		String time) {
	super();
	this.doctor_name = doctor_name;
	this.doctor_type = doctor_type;
	this.username = username;
	this.useremail = useremail;
	this.date = date;
	this.time = time;
	
}
public int getAccepted() {
	return accepted;
}
public void setAccepted(int accepted) {
	this.accepted = accepted;
}
public int getCompleted() {
	return completed;
}
public void setCompleted(int completed) {
	this.completed = completed;
}

public String getDoctor_name() {
	return doctor_name;
}
public void setDoctor_name(String doctor_name) {
	this.doctor_name = doctor_name;
}
public String getDoctor_type() {
	return doctor_type;
}
public void setDoctor_type(String doctor_type) {
	this.doctor_type = doctor_type;
}
public String getUsername() {
	return username;
}
public void setUsername(String username) {
	this.username = username;
}
public String getUseremail() {
	return useremail;
}
public void setUseremail(String useremail) {
	this.useremail = useremail;
}
public String getDate() {
	return date;
}
public void setDate(String date) {
	this.date = date;
}
public String getTime() {
	return time;
}
public void setTime(String time) {
	this.time = time;
}

  
}
