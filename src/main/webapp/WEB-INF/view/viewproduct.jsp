<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page isELIgnored="false" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- Bootstrap Core CSS -->
    

<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<!-- Latest compiled JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

<title>Insert title here</title>
</head>
<body>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<jsp:include page="adminheader.jsp"></jsp:include>
  
<center><h1>Product List</h1></center>
<div class="table table-responsive table-bordered">          
  <table class="table">
    <thead>
      <tr>
        <th>Product Id</th>
        <th>Name</th>
        <th>Price</th>
        <th>Brand</th>
        <th>Colour</th>
        <th>Quantity</th>
        <th>Size</th>
        <th>Description</th>
        <th>Category Name</th>
        <th>Supplier Name</th>
        <th>Action</th>
	    <th>info</th>

				</tr>  
    </thead>
    <tbody>  
   <c:forEach var="x" items="${productlist}">   
   <tr>  
   <td>${x.productid}</td>  
   <td>${x.productname}</td>  
   <td>${x.productprice}</td>
   <td>${x.productbrand}</td>
   <td>${x.productcolor}</td>
   <td>${x.productquantity}</td> 
   <td>${x.womensize}</td>
   <td>${x.description}</td>
   <td>${x.categoryname}</td>
   <td>${x.suppliername}</td>  
   <td><a href="editproduct/${x.productid}"> <span class="glyphicon glyphicon-edit"></span></a> 
   <a href="delete/${x.productid}"><span class="glyphicon glyphicon-trash"></span></a> 
   </td><td>
   <a href="productdetails/${x.productid}"><span class="glyphicon glyphicon-info-sign"></span></a>
   </td>  
      
</tr>  
   </c:forEach>  
   </table>  
   </div>
   


</body>
</html>