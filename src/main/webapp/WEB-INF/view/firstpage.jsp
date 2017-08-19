<%@page import="com.niit.model.Category"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
<%@page isELIgnored="false" %>  
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<c:url value="/resources/images" var="z"/>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link href="resources/css/firstpagecss.css" rel="stylesheet">
<!-- Latest compiled and minified CSS -->

<link href="resources/css/style.css" rel="stylesheet">
<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/js/bootstrap.min.js"></script>
<link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap.min.css" rel="stylesheet">

<title>Insert title here</title>
<script type="text/javascript">
  $(document).ready(function () {
      $('.dropdown-toggle').dropdown();
  });
  
  
  
</script>
 <style>
  .navbar {
      font-family: Montserrat, sans-serif;
      margin-bottom: 0;
      background-color: #380016;
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
      background-color: red;
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
<body>

 <nav class="navbar navbar-inverse ">
  <div class="container-fluid">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar1">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>                        
      </button>
      <div id="logo">
	  <a href="/EcommerceDemo2/home"><img src="${z}/icon5.png"/></a>
	  </div>
    </div>
    <div class="collapse navbar-collapse" id="myNavbar1">
      <ul class="nav navbar-nav navbar-right">
      <li> <a href="aboutus">About us</a></li>
  <c:if test="${empty username}">
  <li><a href="admin"style="color:#ffffff" ><span class="glyphicon glyphicon-user"></span>ADMIN</a><li>
  <li><a href="signup" style="color:#ffffff"><span class="glyphicon glyphicon-user"></span> SIGN UP</a></li>
  <li><a href="firstloginpage" style="color:#ffffff"><span class="glyphicon glyphicon-log-in"></span> LOGIN</a></li>
   <li><a href="addfavourite" style="color:#ffffff"><span class="glyphicon glyphicon-heart"></span> Favourite</a></li>
   
      </c:if>
      <c:if test="${not empty username}">
        <li><a href="#" style="color:#ffffff" ><span class="glyphicon glyphicon-user"></span><b>Hi, <%=session.getAttribute("username") %></b></a></li>
     <li> <a href="logout" style="color:#ffffff"><span class="glyphicon glyphicon-log-in"></span> LOGOUT</a></li>
      <li><a href="addfavourite" style="color:#ffffff"><span class="glyphicon glyphicon-heart"></span> Favourite</a></li>
   <li><a href="editaccount/${username}" style="color:#ffffff"><span class="glyphicon glyphicon-edit"></span>Edit Account</a></li>
   
      </c:if>
          <li><a href="contactus">Contact</a><li>
  <li> <a href="viewcart" style="color:#ffffff"><span class="glyphicon glyphicon-shopping-cart"></span><b> Cart</b></a><li>
 
        
        
      </ul>
     
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
 
  <div class="bodyleft">
    <h2>DEAL OF THE DAY</h2>
   <div class="trisha-slider">
   <div class="container">
      <div id="carousel-example-generic" class=" tr-caro carousel slide" data-ride="carousel">
  <!-- Indicators -->
  <ol class="carousel-indicators">
    <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
    <li data-target="#carousel-example-generic" data-slide-to="1"></li>
    <li data-target="#carousel-example-generic" data-slide-to="2"></li>
  </ol>

  <!-- Wrapper for slides -->
  <div class="carousel-inner" role="listbox">
    <div class="item active">
      <img src="resources/images/slider2.jpg" style="width:100%; height:400px;" alt="loren dolor si amet">
      
    </div>
    <div class="item">
      <img src="resources/images/slider3.jpg" style="width:100%; height:400px;" alt="loren dolor si amet">
    </div>
    <div class="item">
      <img src="resources/images/slider6.jpg" style="width:100%; height:400px;" alt="loren dolor si amet">
    </div>
  </div>

  <!-- Controls -->
  <a class="left carousel-control" href="#carousel-example-generic" role="button" data-slide="prev">
    <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
    <span class="sr-only">Previous</span>
  </a>
  <a class="right carousel-control" href="#carousel-example-generic" role="button" data-slide="next">
    <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
    <span class="sr-only">Next</span>
  </a>
</div>
   </div>
 </div>
	<h3>CLOTHING</h3>
	<ul>
	  <li>
	    <a href="womens">
		  <center><h4>Womens</h4></center>
		  <img src="resources/images/p01.jpg" style="height:200px;width:60%;"/>
		
		</a>
	   </li>
	   <li>
	    <a href="mens">
		  <center><h4>Mens</h4></center>
		  <img src="resources/images/p05.jpg"/>
		
		</a>
	   </li>
	   <li>
	    <a href="kids">
		  <center><h4>Kids</h4></center>
		  <img src="resources/images/p09.jpg"/>
		
		</a>
	   </li><br clear="all">
	</ul>
	   <h3>ELECTRONIC</h3>
	<ul>
	  <li>
	    <a href="Mobiles">
		  <center><h4>Mobiles</h4></center>
		  <img src="resources/images/p16.jpg" style="height:230px; width:70%;"/>
		
		</a>
	   </li>
	   <li>
	    <a href="laptops">
		  <center><h4>laptops</h4></center>
		  <img src="resources/images/p21.jpg"/>
		
		</a>
	   </li>
	   <li>
	    <a href="Televisions">
		  <center><h4>Televisions</h4></center>
		  <img src="resources/images/p25.jpg"/>
		
		</a>
	   </li>
     </ul>
	
  </div>
  <div id="bodyright">
  <h3> GREAT DEAL </h3>
    <ul>
         <li>
		    <a href="# "><img src="resources/images/slider.jpg"/></a>
		 </li>
		 
		 <li>
		    <a href="# "><img src="resources/images/slider3.jpg"/></a>
		 </li>
		 <li>
		    <a href="# "><img src="resources/images/offer.jpg"/></a>
		 </li>
		 <li>
		    <a href="# "><img src="resources/images/offer2.png"/></a>
		 </li>
		 <li>
		    <a href="# "><img src="resources/images/offer3.jpg"/></a>
		 </li>
		 
   </ul>
  </div><br clear="all">
  <div id="footer">
   <h4>copyright 2017 &copy; Trisha</h4>
  </div>
   
</body>
</html>
