package Dao;

import java.util.ArrayList;

public class DoctorDetails {
  ArrayList<String> doctor_name;
  String doctor_type;
public ArrayList<String> getDoctor_name() {
	return doctor_name;
}
public void setDoctor_name(ArrayList<String> doctor_name) {
	this.doctor_name = doctor_name;
}
public String getDoctor_type() {
	return doctor_type;
}
public void setDoctor_type(String doctor_type) {
	this.doctor_type = doctor_type;
}
public DoctorDetails(ArrayList<String> doctor_name, String doctor_type) {
	super();
	this.doctor_name = doctor_name;
	this.doctor_type = doctor_type;
}



}
