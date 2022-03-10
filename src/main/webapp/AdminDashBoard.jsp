<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
   
<%@ page import ="java.io.IOException"  %>    
<%@ page import="java.io.PrintWriter" %>
<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.PreparedStatement" %>
<%@ page import="java.sql.ResultSet" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="javax.servlet.ServletException" %>
<%@ page import="javax.servlet.annotation.WebServlet" %>
<%@ page import="javax.servlet.http.HttpServlet" %>
<%@ page import="javax.servlet.http.HttpServletRequest" %>
<%@ page import="javax.servlet.http.HttpServletResponse" %>
<%@ page import="javax.servlet.http.Cookie" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.Arrays" %>


<%! ArrayList<String>DoctorName = new ArrayList<String>(); %>
<%! ArrayList<String> DoctorField = new ArrayList<String>(); %>
<%! int notAuthenticated = 0; %>


<!DOCTYPE html>
<html>
<head>
<script>

function printChecked(){

var items = document.getElementsByName('chbx');
var selecteditems = "";
for(var i=0;i<items.length;i++){
if(items[i].checked == true){
selecteditems+=items[i].value+",";
}
}
alert(selecteditems);
window.location.replace("AdminDashBoard.jsp?names="+selecteditems);
}

</script>
<style>
table, td {
  border: 1px solid black;
}
</style>
<meta charset="ISO-8859-1">
<title>ADMIN</title>
</head>
<body>
<%
try{
Class.forName("com.mysql.jdbc.Driver");
Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/arogya_suraksha","root","Saibaba@09");
String query = "select * from users where isAuthenticated=0";
PreparedStatement pstmt = con.prepareStatement(query);
ResultSet rst = pstmt.executeQuery();
if(rst.next()==false){
out.println("No Records Found");
}
else{%>
<table>
<tr><th>Doctor's Name</th><th>Field</th><th>Authentication Status</th></tr><%
do{%>
<tr><td class="<%=rst.getString(1) %>" ><%=rst.getString(1)%></td><td><%=rst.getString(2)%></td><td><%=rst.getString(3)%><input type="checkbox" name="chbx" value="<%=rst.getString(1) %>" class="cbx" onclick="fun()"> </td></tr><%
}while(rst.next());%>
</table><%
}
}
catch(Exception e){
e.getStackTrace();
}

%>
<input type="submit" onclick="printChecked()" value="Authenticate" >
<%
String names = request.getParameter("names");
System.out.println(names);
if(names!=null){
String dummy[] = names.split(",");
List<String>updateList = new ArrayList<String>();
updateList = Arrays.asList(dummy);
for(int i=0;i<updateList.size();i++){
System.out.println(updateList.get(i));
}
try{
for(int j=0;j<updateList.size();j++){
Class.forName("com.mysql.jdbc.Driver");
Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/arogya_suraksha","root","Saibaba@09");
String query = "update users set isauthenticated=? where username=?";
PreparedStatement pstmt = con.prepareStatement(query);
pstmt.setInt(1, 1);
pstmt.setString(2,updateList.get(j));
if(pstmt.executeUpdate()>0){
	response.sendRedirect("AdminDashBoard.jsp");
}

}
out.println("<br><h1> Doctors Authenticated Successfully</h1>");
}
catch(Exception e){
e.getStackTrace();
}
}
%>
</body>

</html>

