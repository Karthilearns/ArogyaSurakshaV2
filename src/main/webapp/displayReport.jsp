<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.*"%>
    
<!doctype html>
<html lang="en">
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

<style>
    th,td,tr{
        border: 2px solid rgb(83, 81, 81);
    }
  
          .tg  {border-collapse:collapse;border-spacing:0;}
          .tg td{border-color:black;border-style:solid;border-width:1px;font-family:Arial, sans-serif;font-size:14px;
            overflow:hidden;padding:10px 5px;word-break:normal;}
          .tg th{border-color:black;border-style:solid;border-width:1px;font-family:Arial, sans-serif;font-size:14px;
            font-weight:normal;overflow:hidden;padding:10px 5px;word-break:normal;}
          .tg .tg-0pky{border-color:inherit;text-align:left;vertical-align:top}
          .tg .tg-0lax{text-align:left;vertical-align:top}
     
</style>
<body class="bg-light">
<%!
String useremail;
String pulserate;
String temperature;
String oxygen;
String glucose;
String bloodpressure;
String haemo;
String wbc;
String rbc;
String calcium;

%>

<%
useremail=  (String)session.getAttribute("user_email");
Class.forName("com.mysql.jdbc.Driver");
Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/arogya_suraksha","root","Saibaba@09");

PreparedStatement pst = con.prepareStatement("select * from reports where useremail=(?)");
pst.setString(1,useremail);
ResultSet rs = pst.executeQuery();
rs.next();
pulserate = rs.getString(2);
temperature = rs.getString(3);
oxygen = rs.getString(4);
glucose = rs.getString(5);
bloodpressure = rs.getString(6);
haemo = rs.getString(7);
wbc = rs.getString(8);
rbc = rs.getString(9);
calcium = rs.getString(10);

%>
    <div class="container-fluid">
        <div class="row text-center mx-auto">
            <div class="col-12">
                <h4>REPORT</h4>
            </div>
            <div class="col-12"><%="ID = "+ useremail %></div> 
            <div class="col-12 my-2" style="display:flex;justify-content:center;">
           <form method="post" action="editreport">
                <table>
                    <thead>
                        <tr>
                            <th>PARAMETER</th>
                            <th>VALUE</th>
                            <th>UNIT</th>
                        </tr>
                    </thead>
                    <tbody>
                    <tr>
                        <td>PULSE RATE </td>
                        <td class="data-disp"style="display:none;"><%= pulserate %></td>
                        <td class="data-inp"style="display:table-cell;"><input type="text" name="pulse-rate" value=<%= pulserate%>></td>
                         <td>%</td>
                    </tr>
                     <tr>
                        <td>TEMPERATURE</td>
                        <td class="data-disp"style="display:none;"><%= temperature %></td>
                        <td class="data-inp"style="display:table-cell;"><input type="text" name="temperature"value=<%= temperature%>></td>
                        <td>%</td>
                    </tr>
                     <tr>
                        <td>OXYGEN</td>
                        <td class="data-disp"style="display:none;"><%= oxygen %></td>
                        <td class="data-inp"style="display:table-cell;"><input type="text" name="oxygen-level" value=<%= oxygen%>></td>
                        <td>%</td>
                    </tr>
                     <tr>
                        <td>GLUCOSE</td>
                        <td class="data-disp"style="display:none;"><%= glucose %></td>
                        <td class="data-inp"style="display:table-cell;"><input type="text" name="glucose" value=<%= glucose%>></td>
                        <td>%</td>
                    </tr>
                     <tr>
                        <td>BLOOD PRESSURE</td>
                        <td class="data-disp" style="display:none;"><%= bloodpressure %></td>
                        <td class="data-inp"style="display:table-cell;"><input type="text" name="blood-pressure" value=<%= bloodpressure%>></td>
                        <td>%</td>
                    </tr>
                     <tr>
                        <td>HAEMOGLOBIN</td>
                        <td class="data-disp"style="display:none;"><%= haemo %></td>
                        <td class="data-inp"style="display:table-cell;"><input type="text" name="haemo-level" value=<%= haemo%>></td>
                        <td>%</td>
                    </tr>
                    
                     <tr>
                        <td>WBC COUNT</td>
                        <td  class="data-disp"style="display:none;"><%= wbc %></td>
                        <td class="data-inp"style="display:table-cell;"><input type="text" name="wbc" value=<%= wbc%>></td>
                        <td>%</td>
                    </tr>
                     <tr>
                        <td>RBC COUNT</td>
                        <td class="data-disp"style="display:none;"><%= rbc %></td>
                        <td class="data-inp"style="display:table-cell;"><input type="text" name="rbc" value=<%= rbc%>></td>
                        <td>%</td>
                    </tr>
                     <tr>
                        <td>CALCIUM</td>
                        <td class="data-disp"style="display:none;"><%= calcium %></td>
                        <td class="data-inp"style="display:table-cell;"><input type="text" name="calcium" value=<%= calcium%>></td>
                        <td>%</td>
                    </tr>
                    
                    
                    </tbody>
                </table>
                    
                
            </div>
            <div >
                   <span class="btn btn-danger mx-auto " id="edit-btn" onclick="editable()">CANCEL</span>
                   <span><input class="btn btn-primary" href="PatientDashboard.jsp" style="display:inline" id="save-btn" type="submit" value="SAVE"></span>
            </div>
          </form>
        </div>
    </div>
     
</body>


</html>
<script>
   function editable(){
	   let data_inp =document.getElementsByClassName("data-inp");
	   let data_disp =document.getElementsByClassName("data-disp");
	   let save_btn = document.getElementById("save-btn");
	   let edit_btn = document.getElementById("edit-btn");
	   if(data_inp[0].style.display==="table-cell"){
		   for(let i=0; i<data_inp.length;i++){
			   data_inp[i].style.display = 'none';
			   data_disp[i].style.display = "table-cell";
			  
			   
		   }
		   save_btn.style.display="none";
		   edit_btn.textContent ="EDIT";
		
		   
	   }
	   else if(data_inp[0].style.display==='none'){
		   for(let i=0; i<data_inp.length;i++){
			   data_inp[i].style.display= "table-cell";
			   data_disp[i].style.display = 'none';
			  
		   }
		   edit_btn.textContent ="CANCEL";
		   save_btn.style.display="inline";
		 
	   }
	   
	
	 
   }
</script>
