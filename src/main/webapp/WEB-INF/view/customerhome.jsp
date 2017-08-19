<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link rel="stylesheet" href="css/design.css">
<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script>

<!-- Latest compiled JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<title>Insert title here</title>
</head>
<body>
<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="#">EcommerceSite</a>
    </div>
    <ul class="nav navbar-nav">
      <li class="active"><a href="home">Home</a></li>
      <li><a href="aboutus">About Us</a></li>
      <li><a href="contactus">Contact</a></li>
      
    </ul>
    
    <ul class="nav navbar-nav navbar-right">
    
     <% out.print("Welcome"); %>
    
    <li><a href="#"><span class="glyphicon glyphicon-user"></span></a></li>
    <li class="dropdown">
    <%
       String gender = (String)request.getAttribute("mygender"); 
       
      
     %>
     
     
      <a class="dropdown-toggle" data-toggle="dropdown" href="#"> 
      <%
          String name = (String)request.getAttribute("myname"); 
        %>
         
          <%=name %>
       <span  class="caret"></span></a>
      
        
     
  
    
       
        
        <ul class="dropdown-menu">
          <li><a href="#">Logout</a></li>
          <li><a href="#">Settings</a></li>
          <li><a href="#">MyCart</a></li>
        </ul>
      </li>
      
    </ul>
    <br><br>
    <form class="form-inline">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    
    <div class="input-group">
      <input  class="form-control" size="80" placeholder="Search" >
      <div class="input-group-btn">
        <button type="button" class="btn btn-danger">Search</button>
      </div>
    </div>
  </form>
   <div class="collapse navbar-collapse">
   <ul class="nav navbar-nav">
   
    <li class="dropdown">
        <a class="dropdown-toggle" data-toggle="dropdown" href="Electronic.jsp">Electronic
        <span class="caret"></span></a>
        <ul class="dropdown-menu">
          <li><a href="Electronic.jsp">Electronic</a></li>
          <li><a href="Clothing.jsp">Clothing</a></li>
          <li><a href="Accessories.jsp">Accessories</a></li>
        </ul>
      </li>
      <li class="dropdown">
        <a class="dropdown-toggle" data-toggle="dropdown" href="Clothing.jsp">Clothing
        <span class="caret"></span></a>
        <ul class="dropdown-menu">
          <li><a href="Electronic.jsp">Electronic</a></li>
          <li><a href="Clothing.jsp">Clothing</a></li>
          <li><a href="Accessories.jsp">Accessories</a></li>
        </ul>
      </li>
      <li class="dropdown">
        <a class="dropdown-toggle" data-toggle="dropdown" href="Accessories.jsp">Accessories
        <span class="caret"></span></a>
        <ul class="dropdown-menu">
          <li><a href="Electronic.jsp">Electronic</a></li>
          <li><a href="Clothing.jsp">Clothing</a></li>
          <li><a href="Accessories.jsp">Accessories</a></li>
        </ul>
      </li>
      <li class="dropdown">
        <a class="dropdown-toggle" data-toggle="dropdown" href="Appliances.jsp">Appliances
        <span class="caret"></span></a>
        <ul class="dropdown-menu">
          <li><a href="Electronic.jsp">Electronic</a></li>
          <li><a href="Clothing.jsp">Clothing</a></li>
          <li><a href="Accessories.jsp">Accessories</a></li>
        </ul>
      </li>
      <li class="dropdown">
        <a class="dropdown-toggle" data-toggle="dropdown" href="Books.jsp">Books and Furniture
        <span class="caret"></span></a>
        <ul class="dropdown-menu">
          <li><a href="Electronic.jsp">Electronic</a></li>
          <li><a href="Clothing.jsp">Clothing</a></li>
          <li><a href="Accessories.jsp">Accessories</a></li>
        </ul>
      </li>
      </ul>
  </div>
</nav>
</body>
</html>