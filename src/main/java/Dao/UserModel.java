package Dao;

public class UserModel {
   String user_type;
   String username;
   String address;
   String pincode;
   String email;
   String phone_number;
   String password;
   
   public UserModel(String user_type, String username,String email, String phone_number, String address, String pincode, 
			String password) {
		super();
		this.user_type = user_type;
		this.username = username;
		this.address = address;
		this.pincode = pincode;
		this.email = email;
		this.phone_number = phone_number;
		this.password = password;
	}
	   
	public String getUser_type() {
		return user_type;
	}
	public void setUser_type(String user_type) {
		this.user_type = user_type;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getPincode() {
		return pincode;
	}
	public void setPincode(String pincode) {
		this.pincode = pincode;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPhone_number() {
		return phone_number;
	}
	public void setPhone_number(String phone_number) {
		this.phone_number = phone_number;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}

   
}
