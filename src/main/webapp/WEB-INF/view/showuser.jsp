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
app.controller('userCtrl', function($scope) {
	$scope.users=${listp}	
   
});
</script>
<title>Insert title here</title>
</head>
<body ng-app="myApp" ng-controller="userCtrl">
<jsp:include page="adminheader.jsp"></jsp:include><br><br><br>
<div class="container">
<input class="form-control" ng-model="searchp" placeholder="Search" type="search" />
</div>
<br>
<div class="table table-responsive table-bordered">
<table class="table">
<thead>
<tr>
<th>USER NAME</th>
<th>ADDRESS</th>
<th>EMAIL</th>
<th>ENABLED</th>
<th>FIRSTNAME</th>
<th>GENDER</th>
<th>LASTNAME</th>
<th>PASSWORD</th>
<th>NUMBER</th>
<th>ROLE</th>
<th>INFO</th>
</tr>
</thead>
  <tr ng-repeat="x in users| filter:searchp">
    <td>{{ x.username }}</td>
    <td>{{ x.address}}</td>
    <td>{{ x.email }}</td>
     <td>{{ x.enabled }}</td>
    <td>{{ x.firstname}}</td>
    <td>{{ x.gender }}</td>
    <td>{{ x.lastname}}</td>
    <td>{{ x.password }}</td>
    <td>{{ x.phonenumber }}</td>
    <td>{{ x.role }}</td>
    <td><a href="showuser">
          <span class="glyphicon glyphicon-edit"></span>
        </a>
        <a href="deleteuser/{{x.username }}">
          <span class="glyphicon glyphicon-trash"></span>
        </a>
    </td>
  </tr>
</table>
</div>

</body>
</html>