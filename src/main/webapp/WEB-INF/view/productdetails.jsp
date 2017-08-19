
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
<link href="resources/css/firstpagecss.css" rel="stylesheet">
<link href="resources/css/style.css" rel="stylesheet">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<title>Insert title here</title>
</head>
<body>
<%@include file="header.jsp" %>

<form action="/EcommerceDemo2/cart/${product.productid}">
<center><h2><u>${product.productname} Details</u></h2></center>
<div class="container">    
 
  <div class="row">
    <div class="col-sm-4 well" style="height:480px;width:300px;">
     <img src="${z}/${product.productid}.jpg" alt="" style="height:100%;width:100%;"/>
   
    </div>
    <div class="col-md-6">
   
          <div class="row" >
        
        <div class="col-xs-12 col-height">
          <div class="well">
           Product id: ${product.productid}
           </div>
           </div>
           <div class="col-xs-12 col-height">
          <div class="well">
           Product name: ${product.productname}
           </div>
           </div>
           <div class="col-xs-12 col-height">
             <div class="row">
               <div class="col-xs-6 col-height">
                  <div class="well">
                   Product price:  ${product.productprice}
               </div>
               </div>
               <div class="col-xs-6 col-height">
                  <div class="well">
                   Product Brand:  ${product.productbrand}
               </div>
               </div>
             </div>
           </div>
           <div class="col-xs-12 col-height">
          <div class="well">
          Quantity:<input type="number" name="quantity"  value="1"/>
        
         </div>
           </div>
           <div class="col-xs-12 col-height">
          <div class="well">
         
         Product color:  ${product.productcolor}
         </div>
           </div>
           <div class="col-xs-12 col-height">
          <div class="well">
         
         Product description:  ${product.description}
         </div>
           </div>
          </div>
        </div>
        
        <div class="col-sm-2 well">

        
      <div class="well">
        <input type="submit" value="ADD TO CART"/>
      </div>
      
    
  </div>
        
      </div>
      
         
         
</div>
</form>

</body>
</html>