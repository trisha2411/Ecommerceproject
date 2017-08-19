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
<body style="background-image: url(resources/images/bb10.jpg);margin-bottom:90px; background-repeat:no-repeat;height:100%;background-position:center;background-size:cover;">
<jsp:include page="header.jsp"></jsp:include>

<div class="container-fluid bg-grey">
  <h2 class="text-center" style="color:white;">CONTACT</h2><br><br>
  <div class="row">
    <div class="col-sm-5">
      <p style="color:white;">Contact us and we'll get back to you within 24 hours.</p>
      <p style="color:white;"><span class="glyphicon glyphicon-map-marker"></span> New Delhi, India</p>
      <p style="color:white;"><span class="glyphicon glyphicon-phone"></span> +91 9899630747</p>
      <p style="color:white;"><span class="glyphicon glyphicon-envelope"></span>trisha.trisha2411@gmail.com</p> 
    </div>
    <div class="col-sm-7">
     <form action="mailsend">
      <div class="row">
        <div class="col-sm-6 form-group">
          <input class="form-control" id="name" name="name" placeholder="Name" type="text" required>
        </div>
        <div class="col-sm-6 form-group">
          <input class="form-control" id="email" name="email" placeholder="Email" type="email" required>
        </div>
      </div>
      <textarea class="form-control" id="comments" name="comments" placeholder="Comment" rows="5"></textarea><br>
      <div class="row">
        <div class="col-sm-12 form-group">
          <button class="btn btn-default pull-right" type="submit">Send</button>
        </div>
      </div> 
      </form>
    </div>
  </div>
</div>
</body>
</html>