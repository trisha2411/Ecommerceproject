<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script>

<!-- Latest compiled JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

<title>Insert title here</title>
</head>
<body>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>        
  <jsp:include page="adminheader.jsp"></jsp:include>
       <center> <h1>Edit Supplier</h1></center>
       <form:form  action="/EcommerceDemo2/editsavesupplier" method="post" class="form-horizontal">
  <div class="form-group">
    <label class="control-label col-sm-2" for="user">Supplier ID:</label>
    <div class="col-sm-8">
      <form:input class="form-control" path="supplierid"  placeholder="Enter supplier Id" />
    </div>
    </div>  
    <div class="form-group">
    <label class="control-label col-sm-2" for="user">Supplier Name:</label>
    <div class="col-sm-8">
      <form:input class="form-control" path="suppliername"  placeholder="Enter Supplier Name" />
    </div>
    </div>  
    <div class="form-group">
    <label class="control-label col-sm-2" for="user">Description:</label>
    <div class="col-sm-8">
      <form:input class="form-control" path="description"  placeholder="Enter Supplier Description" />
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