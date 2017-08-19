<%@page import="com.niit.model.Category"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
<%@page isELIgnored="false" %>  
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link href="resources/css/firstpagecss.css" rel="stylesheet">
<link href="resources/css/style.css" rel="stylesheet">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <link href="https://fonts.googleapis.com/css?family=Lato" rel="stylesheet" type="text/css">
  <link href="https://fonts.googleapis.com/css?family=Montserrat" rel="stylesheet" type="text/css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

<title>Insert title here</title>
<style>
    
    /* Add a gray background color and some padding to the footer */
    footer {
      background-color: #f2f2f2;
      padding: 25px;
    }
  </style>
  <script type="text/javascript">
  $(document).ready(function () {
      $('.dropdown-toggle').dropdown();
  });
  
  
  $(document).ready(function(){
	  // Initialize Tooltip
	  $('[data-toggle="tooltip"]').tooltip(); 
	  
	  // Add smooth scrolling to all links in navbar + footer link
	  $(".navbar a, footer a[href='#myPage']").on('click', function(event) {

	    // Make sure this.hash has a value before overriding default behavior
	    if (this.hash !== "") {

	      // Prevent default anchor click behavior
	      event.preventDefault();

	      // Store hash
	      var hash = this.hash;

	      // Using jQuery's animate() method to add smooth page scroll
	      // The optional number (900) specifies the number of milliseconds it takes to scroll to the specified area
	      $('html, body').animate({
	        scrollTop: $(hash).offset().top
	      }, 900, function(){
	   
	        // Add hash (#) to URL when done scrolling (default click behavior)
	        window.location.hash = hash;
	      });
	    } // End if
	  });
	})
</script>
 <style>
  
   
 
  
 
  
  
  
  .navbar {
      font-family: Montserrat, sans-serif;
      margin-bottom: 0;
      background-color: #2d2d30;
      border: 0;
      font-size: 11px !important;
      letter-spacing: 4px;
      opacity: 0.9;
  }
  .navbar li a, .navbar .navbar-brand { 
      color: #d5d5d5 !important;
  }
  .navbar-nav li a:hover {
      color: #fff !important;
  }
  .navbar-nav li.active a {
      color: #fff !important;
      background-color: #29292c !important;
  }
  .navbar-default .navbar-toggle {
      border-color: transparent;
  }
  .open .dropdown-toggle {
      color: #fff;
      background-color: #29292c !important;
  }
  .dropdown-menu li a {
      color: #000 !important;
  }
  .dropdown-menu li a:hover {
      background-color: red !important;
  }
  footer {
      background-color: #2d2d30;
      color: #f5f5f5;
      padding: 32px;
  }
  footer a {
      color: #f5f5f5;
  }
  footer a:hover {
      color: #777;
      text-decoration: none;
  }  
  
  </style>
</head>
<body >
<nav class="navbar navbar-inverse ">
  <div class="container-fluid">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>                        
      </button>
      <div id="logo">
	  <a href="/EcommerceDemo2/home"><img src="resources/images/icon5.png"/></a>
	  </div>
    </div>
    <div class="collapse navbar-collapse" id="myNavbar">
      <ul class="nav navbar-nav navbar-right">
      <li> <a href="aboutus">About us</a></li>
  <c:if test="${empty username}">
  <li><a href="admin"style="color:#ffffff" ><span class="glyphicon glyphicon-user"></span>ADMIN</a><li>
  <li><a href="signup" style="color:#ffffff"><span class="glyphicon glyphicon-user"></span> SIGN UP</a></li>
  <li><a href="login" style="color:#ffffff"><span class="glyphicon glyphicon-log-in"></span> LOGIN</a></li>
      </c:if>
      <c:if test="${not empty username}">
        <li><a href="#" style="color:#ffffff" ><span class="glyphicon glyphicon-user"></span><b>Hi, <%=session.getAttribute("username") %></b></a></li>
     <li> <a href="logout" style="color:#ffffff"><span class="glyphicon glyphicon-log-in"></span> LOGOUT</a></li>
      </c:if>
          <li><a href="contactus">Contact</a><li>
  <li> <a href="viewcart" style="color:#ffffff"><span class="glyphicon glyphicon-shopping-cart"></span><b> Cart</b></a><li>
 
        
        
      </ul><br><br><br>
      <ul class="nav navbar-nav ">
         
		 <li class="dropdown">
          <a class="dropdown-toggle"  class="text-primary" style="color:#ffffff"  data-toggle="dropdown" href="#">CLOTHING
            <span class="caret"></span>
          </a>
          <ul class="dropdown-menu">
            
              <c:forEach var="category" items="${categories}">
              <li> <a href="<c:url value='/${category }'/>">${category}</a><li>
          </c:forEach>
           
          </ul>
        </li>
		 <li class="dropdown">
          <a class="dropdown-toggle" style="color:#ffffff"   data-toggle="dropdown" href="#">ELECTRONICS
            <span class="caret"></span>
          </a>
          <ul class="dropdown-menu">
          <c:forEach var="electronic" items="${electronics}">
               <li><a href="<c:url value='/${electronic}'/>" >${electronic}</a><li>
          </c:forEach>
          </ul>
        </li>
		 <li class="dropdown">
             <a class="dropdown-toggle"  style="color:#ffffff"  data-toggle="dropdown" href="#">ACCESSORIES
            <span class="caret"></span>
          </a>
              <ul class="dropdown-menu">
              <c:forEach var="accessories" items="${accessories}">
             <li> <a href="<c:url value='/${accessories }'/>">${accessories}</a><li>
          </c:forEach>
             </ul>
         
         </li>
		 <li><a href="books" style="color:#ffffff">BOOKS</a></li>
		 <li><a href="furnitures " style="color:#ffffff">FURNITURES</a></li>
		
		 
   </ul>
 
    </div>
  </div>

 
    
  
</nav>
 
</body>
</html>