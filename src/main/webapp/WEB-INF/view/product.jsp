<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page isELIgnored="false" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

<script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.6.4/angular.min.js"></script>
<script>
var app = angular.module('myApp', []);
app.controller('productCtrl', function($scope) {
	$scope.products=${listp}	
   
});
</script>
</head>
<body ng-app="myApp" ng-controller="productCtrl">
<jsp:include page="header.jsp"></jsp:include>
<div class="container">
<input class="form-control" ng-model="searchp" placeholder="Search" type="search" />
</div>
<br>
<div class="table table-responsive table-bordered">
<table class="table">
<thead>
<tr>
<th>PRODUCT ID</th>
<th>PRODUCT NAME</th>
<th>PRODUCT PRICE</th>
<th>PRODUCT BRAND</th>
<th>PRODUCT COLOR</th>
<th>PRODUCT SIZE</th>
<th>DESCRIPTION</th>
<th>CATEGORY NAME</th>
<th>SUPPLIER NAME</th>
<th>INFO</th>
</tr>
</thead>
  <tr ng-repeat="x in products| filter:searchp">
    <td>{{ x.productid }}</td>
    <td>{{ x.productname }}</td>
    <td>{{ x.productprice }}</td>
    <td>{{ x.productbrand }}</td>
    <td>{{ x.productcolor }}</td>
    <td>{{ x.womensize }}</td>
    <td>{{ x.description }}</td>
    <td>{{ x.categoryname }}</a></td>
    <td>{{ x.suppliername }}</td>
    <td><a href="womens">
          <span class="glyphicon glyphicon-info-sign"></span>
        </a>
    </td>
  </tr>
</table>
</div>

</body>
</html>