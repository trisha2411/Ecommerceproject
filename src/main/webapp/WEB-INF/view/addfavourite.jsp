<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page isELIgnored="false" %>
     <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<c:url value="/resources/images" var="z"/>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link href="resources/css/style.css" rel="stylesheet">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.6.4/angular.min.js"></script>
<script>
var app = angular.module('myApp', []);
app.controller('productCtrl', function($scope) {
	$scope.favproducts=${favlist}	
var total=0;	
	
});

</script>
<title>Insert title here</title>
</head>
<body ng-app="myApp" ng-controller="productCtrl" style="background-image: url(resources/images/bb3.jpg);margin-bottom:210px; background-repeat:no-repeat;height:100%;background-position:center;background-size:cover; ">
<jsp:include page="header.jsp"></jsp:include><br><br>
<div class="container">
<input class="form-control" ng-model="searchp" placeholder="Search" type="search" /><br>

</div> 
<br>
 
  <div class="row" ng-repeat="x in favproducts| filter:searchp">
  <div class="container">

    <div class="col-sm-4"  style="height:350px;width:280px;">
      <div class="panel panel-primary">
       <div class="panel-heading">{{ x.productname }}</div>
        <div class="panel-body">
          <img src="${z}/{{x.productid}}.jpg" alt="" class="img-responsive" style="width:220px;height:220px;object-fit:contain;"/>
   
         </div>
          
        <div class="panel-footer">Rs. {{ x.productprice }}</div>
        
          
      </div>
      
    </div>
    <div class="row">
    <div class="col-xs-4 col-height">
          <div class="well">
           Product id: {{x.productid}}<br><br>
            Product brand: {{x.productbrand }}<br><br>
            Product color: {{x.productcolor }}<br><br>
            Product size: {{x.womensize }}<br><br>
           
            
           </div>
           </div>
    <div class="col-xs-3 col-height">
          <div class="well">
          <center><h5>Remove From Favourite</h5>
           <a href="deletefav/{{x.productid}}"><span class="glyphicon glyphicon-trash"></span></a>
           
           </center>
           </div>
           <div class="well">
          <center><h5>Add to Cart</h5>
           <a href="productdetails/{{x.productid}}"><span class="glyphicon glyphicon-trash"></span></a>
           
           </center>
           </div>
           </div>
    
    </div>
    <br>
    </div>
</div><br><br>

</body>
</html>