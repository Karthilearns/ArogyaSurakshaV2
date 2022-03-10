<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.util.*" %>
      <%@ page import="Dao.ArogyaDao" %>
<!DOCTYPE html>
<html>

<head>
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Festive&display=swap" rel="stylesheet">
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
  
    <!-- Bootstrap CSS -->
    <link href="./css/bootstrap.min.css" rel="stylesheet">
    <!-- google fonts -->
    <link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Qahiri&display=swap" rel="stylesheet">
    <!-- font awesome -->
    <script src="https://kit.fontawesome.com/c775521d05.js" crossorigin="anonymous"></script>
    <title>DETAILS</title>
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Ephesis&display=swap" rel="stylesheet">
</head>

<body>
<%! 
String username;
String email;
String doctor;
String doctor_type;
String rows;
String meet_link ;
ArrayList<ArrayList<String>>myappointments;
%>
 <div class="container">
        <br>
        <br>
        <div class="row">
            <div class="col-md-6">
                <h2>Hello <%= username %>!</h2>
                <br>
                <form method="get" action="getdoctors">
                    <div class="form-group">
                        <label for="select1">Select your preferred specialization</label>
                        <select class="form-control" name="doctor-type" id="select1">
                            <option>cardio</option>
                            <option>ortho</option>
                            <option>ent</option>
                            <option>gaenagology</option>
                        </select>
                    </div>
                   <input type='submit' >
                </form>
   
            </div>
           
            
            <div class="col-md-6">
                <table class="table">
                    <thead>
                        <tr>
                            <th scope="col">Doctor's name</th>
                        </tr>
                    </thead>
                    <tbody>
                       
                        
                    </tbody>

                </table>

            </div>
        </div>
    </div>
    
    <%
    ArogyaDao db = new ArogyaDao();
    username =(String) session.getAttribute("user_name");
    email = (String) session.getAttribute("user_email");                    		
   
	myappointments = (ArrayList<ArrayList<String>>) db.getMyAppointments(username, email);
	
     rows = "";
	for(ArrayList<String> appointment:myappointments){
	 String each =	"<form ><tr id='first-row'><td><h4>"+appointment.get(0)+"   ("+appointment.get(1)+")"+"</h4> <a class='btn btn-primary' href='"+ db.getMeetLink(appointment.get(0))+"' type='button' > Start Meeting </a><a class='btn btn-primary' href=deleteappointment?user-name="+username +"&doctor-name="+appointment.get(0)+" type='button' > cancel </a></td></tr></form>";
	 rows+=each;
	}
    %>
     <table class="table">
                    <thead>
                        <tr>
                            <th scope="col-6">Doctor's name</th>
                        </tr>
                    </thead>
                    <tbody>
                        
                         <%=rows %>
                        
                    </tbody>

                </table>
</body>

</html>
<style>
* {
  font-family: "Montserrat", sans-serif;
}