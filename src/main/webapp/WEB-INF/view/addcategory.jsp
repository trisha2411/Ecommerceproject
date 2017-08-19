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
       <center><h1>Add New category</h1></center> <br>
       <form:form  action="savecategory" method="post" class="form-horizontal">
    <div class="form-group">
    <label class="control-label col-sm-2" for="user">Category ID:</label>
    <div class="col-sm-8">
      <form:input class="form-control" path="categoryid"  placeholder="Enter Category Id" required="required"/>
    </div>
    </div> 
    <div class="form-group">
    <label class="control-label col-sm-2" for="user">Category Name:</label>
    <div class="col-sm-8">
      <form:input class="form-control" path="categoryname"  placeholder="Enter category Name" required="required"/>
    </div>
    </div> 
    <div class="form-group">
    <label class="control-label col-sm-2" for="user">Category Section:</label>
    <div class="col-sm-8">
    <select id="country" name="categorysection" class="form-control" style="width:30%;" required="required">
   <option value="Clothing">Clothing</option>
   <option value="Electronics">Electronics</option>
   <option value="Accessories">Accessories</option>
   <option value="Book">Book</option>
   <option value="Furniture">Furniture</option>
     </select>
     </div>
     </div>
    <div class="form-group">
    <label class="control-label col-sm-2" for="user">Description:</label>
    <div class="col-sm-8">
      <form:input class="form-control" path="description"  placeholder="Enter  category Description" required="required"/>
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