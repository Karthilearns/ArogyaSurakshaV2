<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>

<head>
<link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@500&display=swap" rel="stylesheet">

    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css"
      integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">
   
   
    <!-- Latest compiled and minified JavaScript -->
   
</head>

<body>
<nav class="navbar navbar-expand-lg navbar-default" style="background-color: black;" >
    <a href="/"><a class="navbar-brand" href="#" style="color: #8c43cc;  margin-left: '7px';
        font-size:x-large;font-weight: bold; ">AROGYA SURAKSHA</a></Link>

    <button class="navbar-toggler custom-toggler" type="button" data-toggle="collapse" data-target="#navbarText"
        aria-controls="navbarText" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse " id="navbarText">
        <ul class="navbar-nav ml-auto algos">
            <li class="nav-item">
                <a class="nav-link" style="margin-left:3px;" href="#">About</a>
            </li>
            <li class="nav-item">
               
                <a  href='/' style="text-decoration:None;"><button
                    class="nav-link btn btn-outline-success"
                    style="padding:7px;text-decoration:None;">LOGOUT</button></a>

            </li>
        </ul>
    </div>
</nav>
<div class="w-25 text-center ">
<form method ="get" action="signin">
    <input type="text" class="form-control" name="username"/>
    <input type="password" class="form-control" name="password"/>
    <input type="submit"/>
    
</form>
</div>
</body>
<style>
.custom-toggler.navbar-toggler {
  border-color: rgb(226, 236, 236);
}

/* Setting the stroke to green using rgb values (0, 128, 0) */

.custom-toggler .navbar-toggler-icon {
  background-image: url("data:image/svg+xml;charset=utf8,%3Csvg viewBox='0 0 32 32' xmlns='http://www.w3.org/2000/svg'%3E%3Cpath stroke='rgb(226, 236, 236)' stroke-width='2' stroke-linecap='round' stroke-miterlimit='10' d='M4 8h24M4 16h24M4 24h24'/%3E%3C/svg%3E");
}

.nav-item {
  margin-right: 20px;
}
</style>
 <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"
      integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js"
      integrity="sha384-ho+j7jyWK8fNQe+A12Hb8AhRq26LrZ/JpcUGGOn+Y7RsweNrtN/tE3MoK7ZeZDyx" crossorigin="anonymous"></script>
</html>