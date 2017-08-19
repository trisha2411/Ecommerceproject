<%@page import="org.springframework.security.core.context.SecurityContextHolder"%>
<%@page import="org.springframework.security.core.Authentication"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page isELIgnored="false" %>
    
     <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link href="resources/css/firstpagecss.css" rel="stylesheet">
<link href="resources/css/style.css" rel="stylesheet">
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<!-- Latest compiled JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<title>Insert title here</title>
<style>
  body {
      position: relative; 
  }
  
  .affix {
      top:0;
      width: 100%;
      z-index: 9999 !important;
  }
  .navbar {
      margin-bottom: 0px;
  }

  .affix ~ .container-fluid {
     position: relative;
     top: 50px;
  }
  #section1 {padding-top:50px;height:300px;color: #fff; background-color: #1E88E5;}
  #section2 {padding-top:50px;height:300px;color: #fff; background-color: #673ab7;}
  #section3 {padding-top:50px;height:300px;color: #fff; background-color: #ff9800;}
  #section4 {padding-top:50px;height:300px;color: #fff; background-color: #00bcd4;}
  #section5 {padding-top:50px;height:300px;color: #fff; background-color: #009688;}
  #section6 {padding-top:50px;height:300px;color: #fff; background-color: #722f37;}
  </style>
<script type="text/javascript">
  $(document).ready(function () {
      $('.dropdown-toggle').dropdown();
  });
</script>

</head>
<body data-spy="scroll" data-target=".navbar" data-offset="50">
<%!  String currentPrincipalName;%>
<%  Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
 currentPrincipalName = authentication.getName(); 
 System.out.println("logged in "+currentPrincipalName);%>
<div class="container-fluid" style="background-color:#F44336;color:#fff;height:60px;">
     
	   <div id="link" >
	    <ul>
        <li> <a href="#" style="color:#ffffff;" ><span class="glyphicon glyphicon-user"></span><b >Hi,
         <%=currentPrincipalName%></b></a></li>
        <li><a href="adminlogin" style="color:#ffffff;"><span class="glyphicon glyphicon-log-in"></span> LOGOUT</a></li>
      	</ul>
    </div>
</div>
<nav class="navbar navbar-inverse" data-spy="affix" data-offset-top="197">
  <div class="container-fluid">
    <div class="navbar-header">
        <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
          <span class="icon-bar"></span>
          <span class="icon-bar"></span>
          <span class="icon-bar"></span>                        
      </button>
      <a class="navbar-brand" href="admin">Home</a>
    </div>
    <div>
      <div class="collapse navbar-collapse" id="myNavbar">
        <ul class="nav navbar-nav">
          <li><a href="#section1" >Product</a></li>
          <li><a href="#section2" >Category</a></li>
          <li><a href="#section3" >Supplier</a></li>
          <li><a href="#section4" >Cart</a></li>
          <li><a href="#section5" >User</a></li>
          <li><a href="#section6" >Size</a></li>
                    
        </ul>
      </div>
    </div>
  </div>
</nav>    

<div id="section1" class="container-fluid">
<center><h2>Product Section</h2></center><br>
  <div class="row">
    <center><div class="col-xs-6 col-height">
          <div class="well">
           <a href="addproduct" style="color:#000000" >Add Product</a>
         </div>
           </div>
    <div class="col-xs-6 col-height">
          <div class="well">
             <a href="viewproduct" style="color:#000000" >View Product</a>
          </div>
           </div></center>
    </div>
  </div>
<div id="section2" class="container-fluid">
  <center><h2>Category Section</h2></center><br>
  <div class="row">
    <center><div class="col-xs-6 col-height">
          <div class="well">
             <a href="addcategory" style="color:#000000">Add Category</a>
            </div>
           </div>
    <div class="col-xs-6 col-height">
          <div class="well">
             <a href="viewcategory" style="color:#000000">View Category</a>
           </div>
           </div></center>
        </div>
 </div>
<div id="section3" class="container-fluid">
  <center><h2>Supplier Section</h2></center><br>
  <div class="row">
    <center><div class="col-xs-6 col-height">
          <div class="well">
         <a href="addsupplier" style="color:#000000">Add Supplier</a><br>
           </div>
           </div>
    <div class="col-xs-6 col-height">
          <div class="well">
              <a href="viewsupplier" style="color:#000000">View Supplier</a>
         </div>
           </div></center>
   </div>
  </div>
<div id="section4" class="container-fluid">
 <center><h2>Cart Section</h2></center><br>
  <div class="row">
  <div class="col-xs-12 col-height">
          <div class="well">
            <center><a href="addtocart" style="color:#000000">View Cart</a></center>
          </div>
           </div>
   </div>
</div>
<div id="section5" class="container-fluid">
  <center><h2>User Section</h2></center><br>
  <div class="row">
  <center><div class="col-xs-6 col-height">
          <div class="well">
             <a href="home" style="color:#000000">View Users Home Page</a>
           </div>
           </div>
    <div class="col-xs-6 col-height">
          <div class="well">
             <a href="showuser" style="color:#000000">Show Users</a>
          </div>
           </div></center>
    </div>
</div>
<div id="section6" class="container-fluid">
  <center><h2>Size Section</h2></center><br>
  <div class="row">
  <div class="col-xs-12 col-height">
          <div class="well">
             <center> <a href="size" style="color:#000000">Add Size</a></center>
           </div>
           </div>
        </div>
</div>

</body>
</html>