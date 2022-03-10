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
</head>
<body>
 <%!
            ArrayList<String> doctors;
            String username;
 %>
 <div class="container">
        <br>
        <br>
        <div class="row">
            <div class="col-md-6">
                <h2>Hello <%=username  %>!</h2>
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
           
            <%
            ArogyaDao db = new ArogyaDao();
            String doctortype = (String)request.getAttribute("doctor-type");
			doctors = (ArrayList<String>) db.getDoctors(request.getParameter("doctor-type"));
			username =(String) session.getAttribute("user_name");
			String rows = "";
			for(String doctor:doctors){
			 String each =	"<form ><tr id='first-row'><td><h4>"+doctor+"   ("+doctortype+")"+"</h4><a href=createappointment?doctor-name-type="+doctor+"-"+doctortype+" class='btn btn-primary' type='button' >Get appointment</a></td></tr></form>";
			 rows+=each;
			 
			 
			}
            %>
  
            <div class="col-md-6">
                <table class="table">
                    <thead>
                        <tr>
                            <th scope="col">Doctor's name</th>
                        </tr>
                    </thead>
                    <tbody>
                <!--        <tr id="first-row">
                            <td>
                                <h4>Vaidhyanathan</h4>
                                <button class="btn btn-primary" type="submit">Get appointment</button>
                            </td>
                        </tr>
                        -->  
                        <%= rows %>
                    </tbody>

                </table>

            </div>
        </div>
    </div>
    
</body>

</html>