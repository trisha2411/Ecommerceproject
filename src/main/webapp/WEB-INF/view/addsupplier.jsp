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
   <jsp:include page="adminheader.jsp"></jsp:include>
       <center><h1>Add New Supplier</h1></center> 
       <form:form  action="savesupplier" method="post" class="form-horizontal">
    <div class="form-group">
    <label class="control-label col-sm-2" for="user">Supplier ID:</label>
    <div class="col-sm-8">
      <form:input class="form-control" path="supplierid"  placeholder="Enter Supplier Id" required="required" />
    </div>
    </div>
    <div class="form-group">
    <label class="control-label col-sm-2" for="user">Supplier Name:</label>
    <div class="col-sm-8">
      <form:input class="form-control" path="suppliername"  placeholder="Enter Supplier Name" required="required"/>
    </div>
    </div>
    <div class="form-group">
    <label class="control-label col-sm-2" for="user">Description :</label>
    <div class="col-sm-8">
      <form:input class="form-control" path="description"  placeholder="Enter Description" required="required"/>
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