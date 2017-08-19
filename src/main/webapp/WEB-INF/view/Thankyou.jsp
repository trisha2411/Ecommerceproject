<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page isELIgnored="false"%>
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
	$scope.cartproducts=${cartlist}
	$scope.cartproductsaddr=${cartaddr}
});

</script>
<title>Insert title here</title>
</head>
<body ng-app="myApp" ng-controller="productCtrl" style="background-image: url(resources/images/bb4.jpg);margin-bottom:290px; background-repeat:no-repeat;height:100%;background-position:center;background-size:cover; ">
<jsp:include page="header.jsp"></jsp:include><br><br>
<center><h3 style="color:white;">Your order will be shipped shortly...</h3></center>
<center><a href="firstpage"><h4>Continue Shopping</h4></a></center>

<div class="container" style="margin-left:90px;">    
  <div class="row" >
    <div class="col-sm-4" style="height:400px;width:400px;">
    
            <center><h3 style="color:white;">Order Review</h3></cneter>
        
    
      <table ng-repeat="x in cartproducts| filter:searchp" class="table" border="2">
                 
        <tr>
            
            <td style="color:white;">Product Name:</td>
            <td  style="color:white;">{{x.productname}}</td>
        <tr>
        <tr>
            <td></td>
            <td style="color:white;">Price:&nbsp{{x.productprice}} &nbsp&nbsp&nbsp&nbsp Quantity:&nbsp{{x.purchasedquantity}}</td>
        </tr>
       </table>
   </div>
    
    <div class="col-sm-4" style="height:400px;width:350px;">
    
            <center><h3 style="color:white;">Shipping Details</h3></cneter>
        
    
      <table ng-repeat="x in cartproductsaddr| filter:searchp" class="table" border="2">
                 
        <tr>
            
            <td colspan="2" style="color:white;"> Name:&nbsp&nbsp<%=session.getAttribute("username") %></td>
        <tr>
        <tr>
            
            <td style="color:white;">Shipping Address:</td>
            <td style="color:white;">{{x.address}}</td>
        </tr>
        <tr>
            
            <td style="color:white;">Mobile Number:</td>
            <td style="color:white;">{{x.phonenumber}}</td>
        </tr>
       </table>
        </div>
    
    <div class="col-sm-4" align="right" style="height:400px;width:400px;">
    
            <center><h3 style="color:white;">Billing Details</h3></cneter>
        
    
      <table ng-repeat="x in cartproductsaddr| filter:searchp" class="table" border="2">
                 
        <tr>
            
            <td colspan="2" style="color:white;"> To :&nbsp&nbsp<%=session.getAttribute("username") %></td>
        <tr>
        <tr>
            
            <td colspan="2" style="color:white;">Billing Address:&nbsp&nbsp&nbsp&nbsp{{x.address}}</td>
        </tr>
        <tr>
            
            <td colspan="2" style="color:white;">Mobile Number:&nbsp&nbsp&nbsp&nbsp{{x.phonenumber}}</td>
        </tr>
        <tr>
           <td style="color:white;"> Total Amount:</td>
           <td><h3 style="color:white;">Rs.<%=session.getAttribute("grandtotal") %></h3></td>
            
        </tr>
       </table>
        </div>
    
    
  
       
    
    
  </div>
</div>


</body>
</html>