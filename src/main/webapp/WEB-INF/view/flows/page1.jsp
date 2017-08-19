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
  <style>
    
    /* Set height of the grid so .sidenav can be 100% (adjust as needed) */
    .row.content {height: 450px}
    
    /* Set gray background color and 100% height */
    
    /* On small screens, set height to 'auto' for sidenav and grid */
    
      .row.content {height:auto;} 
    }
  </style>
<title>Insert title here</title>
</head>
<body style="background-image: url(resources/images/bb5.jpg);margin-bottom:120px; background-repeat:no-repeat;height:100%;background-position:center;background-size:cover; ">
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>        
  <jsp:include page="flowsheader.jsp"></jsp:include><br><br>
       <center><h1>Shipping Address</h1></center> 
       <form:form  action="${flowExecutionUrl}&_eventId=event1" modelAttribute="shippingAddress" method="post" class="form-horizontal">
    <div class="form-group">
    <label class="control-label col-sm-2" for="user">Address:</label>
    <div class="col-sm-8">
      <form:input class="form-control" path="address"  placeholder="Enter address" required="required" />
    </div>
    </div> 
    <div class="form-group">
    <label class="control-label col-sm-2" for="user">Landmark:(Optional)</label>
    <div class="col-sm-8">
      <form:input class="form-control" path="landmark"  placeholder="Enter landmark" />
    </div>
    </div> 
    <div class="form-group">
    <label class="control-label col-sm-2" for="user">City:</label>
    <div class="col-sm-8">
      <form:input class="form-control" path="cityname"  placeholder="Enter city" maxlength="32" pattern="[A-Za-z]{1,32}" required="required"  />
    </div>
    </div> 
    <div class="form-group">
    <label class="control-label col-sm-2" for="user">Country:</label>
    <div class="col-sm-8">
      <form:input class="form-control" path="countryname"  placeholder="Enter country" maxlength="32" pattern="[A-Za-z]{1,32}" required="required"  />
    </div>
    </div> 
    <div class="form-group">
    <label class="control-label col-sm-2" for="user">State:</label>
    <div class="col-sm-8">
      <form:input class="form-control" path="state"  placeholder="Enter state" maxlength="32" pattern="[A-Za-z]{1,32}" required="required" />
    </div>
    </div>  
    <div class="form-group">
    <label class="control-label col-sm-2" for="user">PinCode:</label>
    <div class="col-sm-8">
      <form:input class="form-control" path="pincode"  placeholder="Enter pincode" maxlength="6"  pattern="[0-9]{6}"  required="required" />
    </div>
    </div>    
     <div class="form-group"> 
    <div class="col-sm-offset-2 col-sm-10">
      <input type="submit" class="btn btn-default" value="Send"/>
    </div>
  </div>    
       </form:form> 

</body>
</html>