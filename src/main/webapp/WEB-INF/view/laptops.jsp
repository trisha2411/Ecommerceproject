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
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

<script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.6.4/angular.min.js"></script>
<script>
var app = angular.module('myApp', []);
app.controller('productCtrl', function($scope) {
	$scope.products=${listl}	
   
});
</script>
<title>Insert title here</title>
</head>
<body ng-app="myApp" ng-controller="productCtrl" style="background-image: url(resources/images/bb14.jpg);margin-bottom:120px; background-repeat:no-repeat;height:100%;background-position:center;background-size:cover; ">

<jsp:include page="header.jsp"></jsp:include><br><br>
<div class="container">
<input class="form-control" ng-model="searchp" placeholder="Search" type="search" />
</div>
<br>
<div class="container">    
  <div class="row" >
    <div class="col-sm-4" ng-repeat="x in products| filter:searchp" style="height:350px;width:280px;">
      <div class="panel panel-primary"  >
       <div class="panel-heading">{{ x.productname }}</div>
        <div class="panel-body">
        <a href="productdetails/{{x.productid}}">
          <img src="${z}/{{x.productid}}.jpg" alt=""  style="width:220px;height:220px;object-fit:contain;"/>
        </a>
        </div>
          
        <div class="panel-footer">{{ x.productprice }} 
         <a href="productdetails/{{x.productid}}">
          <span class="glyphicon glyphicon-info-sign"></span>
        </a>
        <a href="addfavourite/{{x.productid}}">
           <span class="glyphicon glyphicon-heart" style="float:right;"></span>
        </a>
        
        </div>
      </div>
    </div>
    
  </div>
</div><br><br>

</body>
</html>