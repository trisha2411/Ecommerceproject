<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>   
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
<title>Sign up here</title>
<style>
	.error { 
		color: red; font-weight: bold; 
	}
</style>
</head>
<body style="background-image: url(resources/images/bb2.jpg);margin-bottom:90px; background-repeat:no-repeat;height:100%;background-position:center;background-size:cover; ">
<jsp:include page="header.jsp"></jsp:include><br>
<h3 ><p align="center"><a href="login" style="color:white;" >Already a User</a></p></h3>
<div class="form-group">
  <center><h1 >Edit your Account </h1> </center> 
        <br>
        
  
<form:form  action="/EcommerceDemo2/editdata" method="post"  class="form-horizontal" >
  <div class="form-group">
    <label class="control-label col-sm-2"  for="user">Username:</label>
    <div class="col-sm-8">
      <form:input class="form-control" path="username"  placeholder="Enter username" />
      </div>
    </div>
    <div class="form-group">
    <label class="control-label col-sm-2"  for="user">Firstname:</label>
    <div class="col-sm-8">
      <form:input  class="form-control" path="firstname" placeholder="Enter firstname" maxlength="32" pattern="[A-Za-z]{1,32}"  />
       
    </div>
    </div>
    <div class="form-group">
    <label class="control-label col-sm-2"  for="user">Lastname:</label>
    <div class="col-sm-8">
      <form:input  class="form-control" path="lastname" placeholder="Enter lastname"  />
    </div>
  </div>
  <div class="form-group">
    <label class="control-label col-sm-2"  for="email">Email:</label>
    <div class="col-sm-8">
      <form:input  class="form-control" path="email" placeholder="Enter email" pattern="[a-zA-Z0-9!#$%&'*+\/=?^_`{|}~.-]+@[a-zA-Z0-9-]+(\.[a-zA-Z0-9-]+)*"  required="required"/>
    </div>
  </div>
  <div class="form-group">
    <label class="control-label col-sm-2"  for="pwd">Password:</label>
    <div class="col-sm-8"> 
      <form:password  class="form-control" path="password" placeholder="Enter password"  />
    </div>
    </div>
    
  
  <div class="form-group">
    <label class="control-label col-sm-2"  for="pwd">Gender:</label>
    <div class="col-sm-8"> 
      <form:radiobutton path="gender" style="color:white;" class="checkbox-inline" value="female" label="Female" />
    <form:radiobutton path="gender" style="color:white;" value="male" class="checkbox-inline" label="Male" />
    </div>
    </div>
  
  <div class="form-group">
    <label class="control-label col-sm-2"  for="pwd">Phone No.:</label>
    <div class="col-sm-8"> 
      <form:input  class="form-control" path="phonenumber" placeholder="Enter phone no." maxlength="10"  pattern="[0-9]{10}" />
    </div>
    </div>
    <div class="form-group">
    <label class="control-label col-sm-2"  for="pwd">Address:</label>
    <div class="col-sm-8"> 
      <form:textarea  class="form-control" path="address"   placeholder="Enter address" pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z])" />
    </div>
    </div>
    
    <div class="form-group"> 
    <div class="col-sm-offset-2 col-sm-10">
      <button type="submit" class="btn btn-default">Save</button>
    </div>
  </div>
</form:form>
</div>
</body>
</html>