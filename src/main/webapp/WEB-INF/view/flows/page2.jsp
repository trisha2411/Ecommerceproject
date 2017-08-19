<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page isELIgnored="false" %>
   
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link href="resources/css/style.css" rel="stylesheet">
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
<body style="background-image: url(resources/images/bb9.jpg);margin-bottom:120px; background-repeat:no-repeat;height:100%;background-position:center;background-size:cover; ">
page 2
<a href="${flowExecutionUrl}&_eventId=event2">next page</a>
<jsp:include page="flowsheader.jsp"></jsp:include><br><br>
	  <div class="form-group " align="center">
		     <center><h1 style="color:white;">Payment Mode</h1> </center> 
        <br>
        
    <form:form method="post" action="${flowExecutionUrl}&_eventId=event2" modelAttribute="paymentMode" class="form-horizontal" enctype="multipart/form-data">    
        
        <table border="2">
            <tr>
               <td><label class="control-label col-sm-3" style="color:white;" for="pwd">Card Number:</label></td>
               <td><form:input  path="cardnumber" placeholder="Enter card no." maxlength="16"  pattern="[0-9]{16}" required="required"/></td>
            </tr>
            <tr>
               <td><label class="control-label col-sm-3" style="color:white;" for="pwd">CCV:</label></td>
               <td><form:input  path="ccvnumber" placeholder="Enter ccv no." maxlength="3"  pattern="[0-9]{3}" required="required"/></td>
            </tr>
            <tr>
               <td><label class="control-label col-sm-3" style="color:white;"for="pwd">Expire Date:</label></td>
               <td><form:input type="date" path="expiredate" placeholder="Enter expire date "  required="required"/></td>
            </tr>
            
			<tr>
				<td><label class="control-label col-sm-3" style="color:white;" for="pwd">Mode:</label></td>
				<td style="color:white;"><form:radiobutton path="payment" value="debitcredit" required="required"  />Debit/Credit</td>
			</tr>
			<tr>
				<td></td><td style="color:white;" ><form:radiobutton path="payment" value="cashondelivery"  required="required"/>Cash On Delivery</td>
			</tr>
			<tr>
				<td></td><td style="color:white;"><form:radiobutton path="payment" value="netbanking"  required="required"/>Net Banking</td>
			</tr>
			<tr>
				<td></td><td style="color:white;"><form:radiobutton path="payment" value="paymentwallet" required="required"/>Payment Wallet</td>
			</tr>
			<tr>
				<td></td><td colspan="3"><input type="submit" value="Save"/></td>
			</tr>
		</table>
          
      	</form:form>
		
	</div>


</body>
</html>