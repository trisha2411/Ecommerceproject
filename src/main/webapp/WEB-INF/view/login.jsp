<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page isELIgnored="false" %>
    <jsp:include page="header.jsp"></jsp:include><br><br><br><br><br><br>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script>

<!-- Latest compiled JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<title>Login here</title>
</head>
<body style="background-image: url(resources/images/bb4.jpg);margin-bottom:90px; background-repeat:no-repeat;height:100%;background-position:center;background-size:cover; ">

<div class="form-group">
${err}
<form action="LoginPage" class="form-horizontal" method="post">
  <div class="form-group">
    <label class="control-label col-sm-2" style="color:white;" for="user">Username:</label>
    <div class="col-sm-8">
      <input type="text" class="form-control"  name="username" placeholder="Enter username">
    </div>
  </div>
  
  <div class="form-group">
    <label class="control-label col-sm-2" style="color:white;" for="pwd">Password:</label>
    <div class="col-sm-8"> 
      <input type="password" class="form-control"  name="password" placeholder="Enter password">
    </div>
  </div>
  <div class="form-group"> 
    <div class="col-sm-offset-2 col-sm-10">
      <div class="checkbox">
        <label style="color:white;"><input type="checkbox"> Remember me</label>
      </div>
    </div>
  </div>
  <div class="form-group"> 
    <div class="col-sm-offset-2 col-sm-10">
      <button type="submit" class="btn btn-default">Submit</button>
    </div>
  </div>
</form>
</div>
</body>
</html>