<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page isELIgnored="false" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" 
	"http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
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
<title>Login</title>
<style>
	.error { 
		color: red; font-weight: bold; 
	}
</style>
</head>
<body>
<jsp:include page="adminheader.jsp"></jsp:include>
	<div class="form-group">
		     <center><h1>Add New Product</h1> </center> 
        <br>
        
       <form:form method="post" action="saveproduct" commandName="command" class="form-horizontal" enctype="multipart/form-data">    
        <div class="form-group">
          <label class="control-label col-sm-2" for="user">Product ID:</label>
             <div class="col-sm-8">    
             
              <form:input class="form-control" path="productid" placeholder="Enter Product Id" required="required"/>
              <form:errors path="productid" cssClass="error"/> 
         </div>
       </div> 
        <div class="form-group">
          <label class="control-label col-sm-2" for="user">Product Name:</label>
             <div class="col-sm-8">   
            
          <form:input class="form-control" path="productname" placeholder="Enter Product Name" required="required" />
          <form:errors path="productname" cssClass="error"/> 
        </div>
       </div> 
        <div class="form-group">
          <label class="control-label col-sm-2" for="user">Product Price:</label>
             <div class="col-sm-8">   
              
          <form:input class="form-control" path="productprice" placeholder="Enter Product Price"  required="required"/>
          <form:errors path="productprice" cssClass="error"/> 
        </div>
       </div> 
        <div class="form-group">
          <label class="control-label col-sm-2" for="user">Product Brand:</label>
             <div class="col-sm-8">    
              
          <form:input class="form-control" path="productbrand" placeholder="Enter Product Brand" required="required"/> 
          <form:errors path="productbrand" cssClass="error"/>
        </div>
       </div> 
        <div class="form-group">
          <label class="control-label col-sm-2" for="user">Product Color:</label>
             <div class="col-sm-8">     
              
          <form:input class="form-control" path="productcolor" placeholder="Enter Product Color" required="required"/>
          <form:errors path="productcolor" cssClass="error"/>  
         </div>
       </div> 
       <div class="form-group">
          <label class="control-label col-sm-2" for="user">Product quantity:</label>
             <div class="col-sm-8">     
              
          <form:input class="form-control" path="productquantity" placeholder="Enter Product Quantity" required="required"/>
          <form:errors path="productquantity" cssClass="error"/>  
         </div>
       </div> 
       
        <div class="form-group">
          <label class="control-label col-sm-2" for="user">Description:</label>
             <div class="col-sm-8">    
              
          <form:input class="form-control" path="description" placeholder="Enter Product Description" required="required"/> 
          <form:errors path="description" cssClass="error"/> 
         </div>
       </div> 
       <div class="form-group">
          <label class="control-label col-sm-2" for="user">Size:</label>
             <div class="col-sm-8">    
          
          <form:select path="womensize">
          <form:option value="NONE" label="--- Select ---"/>
           <form:options items="${listSize}" />
          </form:select>
          <form:errors path="womensize" cssClass="error"/> 
          </div>
          </div> 
        <div class="form-group">
          <label class="control-label col-sm-2" for="user">Category Name:</label>
             <div class="col-sm-8">    
          
         <form:select path="categoryname" required="required">
          <form:option value="NONE" label="--- Select ---"/>
           <form:options items="${listCategory}" />
          </form:select>
          <form:errors path="categoryname" cssClass="error"/> 
          </div>
          </div> 
        <div class="form-group">
          <label class="control-label col-sm-2" for="user">Supplier Name:</label>
             <div class="col-sm-8">     
              
          <form:select path="suppliername" required="required">
          <form:option value="NONE" label="--- Select ---"/>
           <form:options items="${listSupplier}" />
          </form:select>  
          <form:errors path="suppliername" cssClass="error"/>
          </div> 
          </div>
        <div class="form-group">
          <label class="control-label col-sm-2" for="user">Upload Image:</label>
             <div class="col-sm-8">       
               <input type="file" name="file" required="required"/>   
         </div>
         </div> 
          <div class="form-group"> 
             <div class="col-sm-offset-2 col-sm-10">  
          <input type="submit" value="Save" />    
           </div>
           </div> 		</form:form>
		
	</div>
</body>
</html>