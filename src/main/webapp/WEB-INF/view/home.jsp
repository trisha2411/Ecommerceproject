<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
<%@page isELIgnored="false" %>  
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- Bootstrap Core CSS -->
    <link href="css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom CSS -->
    <link href="resources/css/design.css" rel="stylesheet">

<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link rel="stylesheet" href="css/design.css">
<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<!-- Latest compiled JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<title>Insert title here</title>
<style>
    /* Remove the navbar's default rounded borders and increase the bottom margin */ 
    .navbar {
      margin-bottom: 50px;
      border-radius: 0;
    }
    
    /* Add a gray background color and some padding to the footer */
    footer {
      background-color: #f2f2f2;
      padding: 25px;
    }
  </style>
</head>
<body>
<jsp:include page="header.jsp"></jsp:include>

<div id="myCarousel" class="carousel slide" data-ride="carousel">
  <!-- Indicators -->
  <ol class="carousel-indicators">
    <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
    <li data-target="#myCarousel" data-slide-to="1"></li>
    <li data-target="#myCarousel" data-slide-to="2"></li>
  </ol>

  <!-- Wrapper for slides -->
  <div class="carousel-inner">
    <div class="item active">
      <img src="resources/images/8.jpg" alt="Chania" height="20%" width="100%">
      <div class="carousel-caption">
        <h3>Los Angeles</h3>
        <p>LA is always so much fun!</p>
      </div>
    </div>

    <div class="item">
      <img src="resources/images/banner3.png" alt="Chicago" height="20%" width="100%">
      <div class="carousel-caption">
        <h3>Chicago</h3>
        <p>Thank you, Chicago!</p>
      </div>
    </div>

    <div class="item">
      <img src="resources/images/7.jpg" alt="New York" height="20%" width="100%">
      <div class="carousel-caption">
        <h3>New York</h3>
        <p>We love the Big Apple!</p>
      </div>
    </div>
  </div>

  <!-- Left and right controls -->
  <a class="left carousel-control" href="#myCarousel" data-slide="prev">
    <span class="glyphicon glyphicon-chevron-left"></span>
    <span class="sr-only">Previous</span>
  </a>
  <a class="right carousel-control" href="#myCarousel" data-slide="next">
    <span class="glyphicon glyphicon-chevron-right"></span>
    <span class="sr-only">Next</span>
  </a>
</div><br>
<div class="row">
  <div class="col-md-3 col-sm-6 hero-feature">
                <div class="thumbnail">
                  <center> <h5><b>Electronics</b></h5></center>
                    <img src="resources/images/12.jpg" alt="">
                    <div class="caption">
                         <table style="width:100%">
                          <tr> <td align="center"> <a href="#" >Mobile</a></td>
                          <td>  <a href="#" >Laptops</a></td>
                           </tr>
                          <tr><td align="center">  <a href="#" >Televisions</a></td> 
                            <td><a href="#" >More Info</a></td>
                          </tr>
                        </table>
                    </div>
                </div>
            </div>
  <div class="col-md-3 col-sm-6 hero-feature">
                <div class="thumbnail">
                <center> <h5><b>Appliances</b></h5></center>
                    <img src="resources/images/11.jpg" alt="">
                    <div class="caption">
                        <table style="width:100%">
                          <tr> <td align="center"> <a href="#" >Refrigerator</a></td>
                          <td>  <a href="#" >Television</a></td>
                           </tr>
                          <tr><td align="center">  <a href="#" >Washing Machine</a></td>
                            <td><a href="#" >More</a></td>
                          </tr>
                        </table>
                    </div>
                </div>
            </div>

  <div class="col-md-3 col-sm-6 hero-feature">
                <div class="thumbnail">
                <center> <h5><b>Books and Furniture</b></h5></center>
                    <img src="resources/images/13.jpg" alt="">
                    <div class="caption">
                        <table style="width:100%">
                          <tr> <td align="center"> <a href="#" >Kitchen and Dining</a></td>
                          <td>  <a href="#" >Furniture</a></td>
                           </tr>
                          <tr><td align="center">  <a href="#">Books</a></td> 
                            <td><a href="#" >Stationary</a></td>
                          </tr>
                        </table>
                    </div>
                </div>
            </div>
<div class="col-md-3 col-sm-6 hero-feature">
                <div class="thumbnail">
                <center> <h5><b>Clothing</b></h5></center>
                    <img src="resources/images/9.jpg" alt="">
                    <div class="caption">
                        <table style="width:100%">
                          <tr> <td align="center"> <a href="#" >Womens</a></td>
                          <td>  <a href="#" >Mens</a></td>
                           </tr>
                          <tr><td align="center">  <a href="#" >Kids</a></td> 
                            <td><a href="#">More Info</a></td>
                          </tr>
                        </table>
                    </div>
                </div>
            </div>

</div>
<div class="container text-center">
   <div class="col-sm-4">
      <div class="well">
       <p>Some text..</p>
      </div>
      <div class="well">
       <p>Some text..</p>
      </div>
  </div>
  <div class="col-md-3 col-sm-6 hero-feature">
                <div class="thumbnail">
                <center> <h5><b>Clothing</b></h5></center>
                    <img src="resources/images/9.jpg" alt="">
                    <div class="caption">
                        <table style="width:100%">
                          <tr> <td align="center"> <a href="#" >Womens</a></td>
                          <td>  <a href="#" >Mens</a></td>
                           </tr>
                          <tr><td align="center">  <a href="#" >Kids</a></td> 
                            <td><a href="#">More Info</a></td>
                          </tr>
                        </table>
                    </div>
                </div>
            </div>

  <div class="col-md-3 col-sm-6 hero-feature">
                <div class="thumbnail">
                <center> <h5><b>Clothing</b></h5></center>
                    <img src="resources/images/9.jpg" alt="">
                    <div class="caption">
                        <table style="width:100%">
                          <tr> <td align="center"> <a href="#" >Womens</a></td>
                          <td>  <a href="#" >Mens</a></td>
                           </tr>
                          <tr><td align="center">  <a href="#" >Kids</a></td> 
                            <td><a href="#">More Info</a></td>
                          </tr>
                        </table>
                    </div>
                </div>
            </div>
</div>
<footer class="container-fluid ">
  <div class="footer">
   	  <div class="wrap">	
			 <div class="footer-nav">
		        <a href="#">Terms of Use</a>&nbsp|&nbsp
		   		<a href="#">Privacy Policy</a>&nbsp|&nbsp 
		   		<a href="contact.html">Contact Us</a>&nbsp|&nbsp 
		   		<a href="#">Sitemap</a>
		   	  <div class="copy_right text-right">
				<p>Copy rights (c). All rights Reseverd </p>
		   </div>	
		   </div>	
	  </div>
    </div>
</footer>


</body>
</html>
