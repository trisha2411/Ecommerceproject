<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>        
  <jsp:include page="header.jsp"></jsp:include>
       <center><h1>Shipping Address</h1></center> 
       <form:form  action="saveshipping" commandName="command" method="post" class="form-horizontal">
    <div class="form-group">
    <label class="control-label col-sm-2" for="user">Address:</label>
    <div class="col-sm-8">
      <form:input class="form-control" path="address"  placeholder="Enter username" />
    </div>
    </div> 
    <div class="form-group">
    <label class="control-label col-sm-2" for="user">Landmark:(Optional)</label>
    <div class="col-sm-8">
      <form:input class="form-control" path="landmark"  placeholder="Enter username" />
    </div>
    </div> 
    <div class="form-group">
    <label class="control-label col-sm-2" for="user">City:</label>
    <div class="col-sm-8">
      <form:input class="form-control" path="cityname"  placeholder="Enter username" />
    </div>
    </div> 
    <div class="form-group">
    <label class="control-label col-sm-2" for="user">Country:</label>
    <div class="col-sm-8">
      <form:input class="form-control" path="countryname"  placeholder="Enter username" />
    </div>
    </div> 
    <div class="form-group">
    <label class="control-label col-sm-2" for="user">State:</label>
    <div class="col-sm-8">
      <form:input class="form-control" path="state"  placeholder="Enter username" />
    </div>
    </div>  
    <div class="form-group">
    <label class="control-label col-sm-2" for="user">PinCode:</label>
    <div class="col-sm-8">
      <form:input class="form-control" path="pincode"  placeholder="Enter username" />
    </div>
    </div>    
     <div class="form-group"> 
    <div class="col-sm-offset-2 col-sm-10">
      <input type="submit" class="btn btn-default" value="Save"/>
    </div>
  </div>    
       </form:form> 

</body>
</html>