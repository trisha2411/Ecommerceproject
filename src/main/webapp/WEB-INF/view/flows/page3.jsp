<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page isELIgnored="false" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link href="resources/css/style.css" rel="stylesheet">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
 
<title>Insert title here</title>
</head>
<body style="background-image: url(resources/images/bb9.jpg);margin-bottom:120px; background-repeat:no-repeat;height:100%;background-position:center;background-size:cover; ">
<jsp:include page="flowsheader.jsp"></jsp:include><br><br>
<div class="container" align="center" style="margin-left:350px;">    
  <div class="row" >
    <div class="col-sm-4" style="height:400px;width:600px;">
    
      <table class="table" border="2">
         <tr>
            <center><h3 style="color:white;">Shipping Details</h3></cneter>
        </tr>
        
        <tr>
            
            <td colspan="2" style="color:white;"><%=session.getAttribute("username") %></td>
        <tr>
        
        <tr>
            <td colspan="2" style="color:white;">ADDRESS:${orders.shippingaddress.address}
            ${orders.shippingaddress.landmark}
            ${orders.shippingaddress.cityname} ${orders.shippingaddress.countryname}
            ${orders.shippingaddress.state} ${orders.shippingaddress.pincode}
            </td>
        </tr>
        
         <tr>
            <td style="color:white;"> PAYMENT MODE:${orders.paymentmode.payment}</td>
            <td style="color:white;"> Total Amount:<h3><%=session.getAttribute("grandtotal") %></h3></td>
         </tr>
         <tr>
         <td colspan="2">
         <div class="col-sm-3"style="float:right;" >
      <a href="${flowExecutionUrl}&_eventId=event3" class="btn btn-info"   role="button">CONFIRM</a>
      
    </div>
         </td>
         
         </tr>
     </table>
    </div>
    
    
    
  </div>
</div>



</body>
</html>