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
<!-- Bootstrap Core CSS -->
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
  </style>

  <script type="text/javascript">
  $(document).ready(function () {
      $('.dropdown-toggle').dropdown();
  });
</script>
<title>Insert title here</title>
</head>
<body>
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
    
  </div>
</nav> 

</body>
</html>