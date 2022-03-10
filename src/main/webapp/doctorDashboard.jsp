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
    <link href="./css/bootstrap.min.css" rel="stylesheet" >
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
 <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"
        integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj"
        crossorigin="anonymous"></script>
 <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-ho+j7jyWK8fNQe+A12Hb8AhRq26LrZ/JpcUGGOn+Y7RsweNrtN/tE3MoK7ZeZDyx"
        crossorigin="anonymous"></script>
  
 <style>
        * {
        font-family: "Montserrat", sans-serif;
        }

    </style> 
    
   <%! 
       String doctor_name;
      ArrayList<ArrayList<String>> appointments;
      ArrayList<ArrayList<String>> accepted_appointments;
   %>
   <%
       ArogyaDao db = new ArogyaDao();
       doctor_name =(String) session.getAttribute("user_name");
       appointments = db.getAppointmentsNotAccepted(doctor_name);
       System.out.println(appointments);
       accepted_appointments = db.getAppointmentsAccepted(doctor_name);
       
       String rows ="";
       for(ArrayList<String> appointment:appointments){
    	   String each =" <div class='card' style='width:20rem; background-color: #e1f0f5; margin-top: 6px; box-shadow: 0 5px 10px rgba(0,0,0,.2);' ><div class='card-body'><h5>"+appointment.get(0) +'('+appointment.get(1)+')'+"<a href=acceptAppointment?doctor-name="+doctor_name+'&'+"user-name="+appointment.get(0)+" class='btn btn-success' style='width: 110px; height: 40px; float: right; ' type:'submit'>Accept</a></h5></div></div>";
    	   rows+=each;
       }
       
       String rows_2 ="";
       for(ArrayList<String> appointment:accepted_appointments){
    	   String each=" <div class='card' style='width:20rem; background-color: #e1f0f5; margin-top: 6px; box-shadow: 0 5px 10px rgba(0,0,0,.2);'> <div class='card-body '<h5>"+appointment.get(0) +'('+appointment.get(1)+')'+"<a href=DrShowReport.jsp?user-email="+appointment.get(1)+" class='btn btn-success' style='width: 110px; font-size:13px; height: 40px; float: right; 'type:'submit'>View report</a><a href=consultcomplete?doctor-name="+doctor_name+"&email="+appointment.get(1)+" class='btn btn-success'>completed</a></h5></div></div>";
           rows_2+=each;
       }
       
   %>
<body>
 <div class="container" style="padding: 30px;">
        <br>
        <br>
        <h2>Hello <%=doctor_name %></h2>
        <br>
        <div class="row">
            
            
            <div class="col-md-6">
              
               <%= rows %>
                
            </div>
           
            <div class="col-md-6" style="margin-top: 20px;">

                <h3>Your Patients</h3>
                
                <%=rows_2 %>
                
                
                

            </div>
            
        </div>

        <div class="row" style="margin-top: 30px;">
            <div class=" col-lg-12 col-xs-6">
                <div class="card" style="margin-top: 6px; background-color: #95a2a6;  align-items: center;">
                    <div class="card-body">
                        <h5>Your meeting link : <a style="color: blue;" href="https://meet.google.com/iht-kstz-kho">click here</a> </h5>
        
                    </div>
        
                </div>
        
            </div>
        </div>
        
        
    </div>
    
</body>
</html>