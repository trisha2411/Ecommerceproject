<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page isELIgnored="false" %>
    <jsp:include page="header.jsp"></jsp:include>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <style>
    
    /* Set height of the grid so .sidenav can be 100% (adjust as needed) */
    .row.content {height: 450px}
    
    /* Set gray background color and 100% height */
    
    /* On small screens, set height to 'auto' for sidenav and grid */
    
      .row.content {height:auto;} 
    }
  </style>
<title>Insert title here</title>
</head>
<body style="background-image: url(resources/images/bb1.jpg);margin-bottom:110px; background-repeat:no-repeat;height:100%;background-position:center;background-size:cover; ">
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>        
  <br><br>
  <div class="form-group">
        <center><h1 style="color:white;">Admin Login</h1> </center> 
        <br><br>
<form action="perform_login" class="form-horizontal" method="post">
  <div class="form-group">
    <label class="control-label col-sm-2" for="user" style="color:white;">Username:</label>
    <div class="col-sm-8">
      <input type="text" class="form-control"  name="username" placeholder="Enter username">
      
    </div>
  </div>
  
  <div class="form-group">
    <label class="control-label col-sm-2" for="pwd" style="color:white;">Password:</label>
    <div class="col-sm-8"> 
      <input type="password" class="form-control"  name="password" placeholder="Enter password">
    </div>
  </div>
  
  <div class="form-group"> 
    <div class="col-sm-offset-2 col-sm-10">
      <input type="submit" value="submit"/>
    </div>
  </div>
</form>
</div>
</body>
</html>