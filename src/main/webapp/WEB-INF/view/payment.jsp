<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page isELIgnored="false" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
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
<body>
<jsp:include page="header.jsp"></jsp:include>
	<div class="form-group">
		     <center><h1>Payment Mode</h1> </center> 
        <br>
        
       <form:form method="post" action="savepayment" commandName="command" class="form-horizontal" enctype="multipart/form-data">    
        <div class="radio">
          
             <div class="col-sm-8">    
             
              <form:radiobutton class="radio" path="payment" value="debitcredit"/>Debit/Credit card
               </div>
                <div class="col-sm-8"> 
               <form:radiobutton class="radio" path="payment" value="cashondelivery"/>Cash On Delivery
               </div>
                <div class="col-sm-8"> 
               <form:radiobutton class="radio" path="payment" value="netbanking" />Net Banking
                </div>
                 <div class="col-sm-8"> 
              <form:radiobutton class="radio" path="payment" value="paymentwallet" /> Payment Wallet
               </div>
                <div class="col-sm-8"> 
              <form:errors path="debitcredit" cssClass="error"/> 
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