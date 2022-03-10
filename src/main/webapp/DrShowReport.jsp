<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import ="java.sql.*"%>
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
String useremail =request.getParameter("user-email");

Class.forName("com.mysql.jdbc.Driver");
Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/arogya_suraksha","root","Saibaba@09");
PreparedStatement pst = con.prepareStatement("select * from reports where useremail=(?)");
pst.setString(1,useremail);
ResultSet rs = pst.executeQuery();
rs.next();
useremail = rs.getString(1);
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
<body>
      <div class="container-fluid">
        <div class="row text-center ">
            <div class="col-12">
                <h4>REPORT</h4>
            </div>
            <div class="col-12" style="display:flex;justify-content:center;">
                <table>
                    <thead>
                        <tr>
                            <th>PARAMETER</th>
                            <th>VALUE</th>
                        </tr>
                    </thead>
                    <tbody>
                    <tr>
                        <td>PULSERATE</td>
                        <td style="display:tab;"><%= pulserate %></td>
                    </tr>
                    <tr>
                        <td>TEMPERATURE</td>
                        <td style="display:tab;"><%= temperature %></td>
                    </tr>
                    <tr>
                        <td>OXYGEN</td>
                        <td style="display:tab;"><%= oxygen %></td>
                    </tr>
                    <tr>
                        <td>GLUCOSE</td>
                        <td style="display:tab;"><%= glucose %></td>
                    </tr>
                    <tr>
                        <td>BLOOD PRESSURE</td>
                        <td style="display:tab;"><%= bloodpressure %></td>
                    </tr>
                    <tr>
                        <td>HAEMOGLOBIN</td>
                        <td style="display:tab;"><%= haemo %></td>
                    </tr>
   
                    <tr>
                        <td>WBC</td>
                        <td style="display:tab;"><%= wbc %></td>
                    </tr>
                    <tr>
                        <td>RBC</td>
                        <td style="display:tab;"><%= rbc %></td>
                    </tr>
                    <tr>
                        <td>CALCIUM</td>
                        <td style="display:tab;"><%= calcium %></td>
                    </tr> 
                    
                    </tbody>
                </table>
            </div>
        </div>
    </div>
</body>
</html>