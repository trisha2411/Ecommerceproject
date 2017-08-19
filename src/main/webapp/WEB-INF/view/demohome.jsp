<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<link href="resources/css/style.css" rel="stylesheet">
<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<!-- Latest compiled JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

<title>Insert title here</title>
</head>
<body>
<nav class="trisha-navbar navbar navbar-default">
  <div class="container">
    <!-- Brand and toggle get grouped for better mobile display -->
    <div class="navbar-header">
      <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
        <span class="sr-only">Toggle navigation</span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </button>
      <a class="navbar-brand" href="#">Trisha</a>
    </div>

    <!-- Collect the nav links, forms, and other content for toggling -->
    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
      
      <form class="navbar-form navbar-right">
        <div class="form-group">
          <input type="text" class="form-control" placeholder="Search">
        </div>
        
        <button type="submit" class="trisha-form-btn btn btn-default">Submit</button>
        <div class="trisha-cart form-group">
        <a href="#" class="trisha-btn-car btn "><span class="glyphicon glyphicon-shopping-cart"></span></a>
      </div>
      </form>
      
      <ul class="nav navbar-nav navbar-right">
        <li class="active"><a href="#">Home <span class="sr-only">(current)</span></a></li>
        
        <li class="dropdown">
          <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Pages
           <span class="caret"></span>
          </a>
          <ul class="dropdown-menu">
            <li><a href="#">Mens</a></li>
            <li><a href="#">Womens</a></li>
            <li><a href="#">Kids</a></li>
            <li role="separator" class="divider"></li>
            <li><a href="#">Accessories</a></li>
            <li role="separator" class="divider"></li>
            <li><a href="#">Shoes</a></li>
          </ul>
        </li>
        <li><a href="#">Contact</a></li>
        <li><a href="#">Blog</a></li>
      </ul>
      
      
      
    </div><!-- /.navbar-collapse -->
  </div><!-- /.container-fluid -->
</nav>

 <div class="trisha-slider">
   <div class="container">
      <div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
  <!-- Indicators -->
  <ol class="carousel-indicators">
    <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
    <li data-target="#carousel-example-generic" data-slide-to="1"></li>
    <li data-target="#carousel-example-generic" data-slide-to="2"></li>
  </ol>

  <!-- Wrapper for slides -->
  <div class="carousel-inner" role="listbox">
    <div class="item active">
      <img src="resources/images/adv1.jpg" style="width:100%; height:400px;" alt="loren dolor si amet">
      
    </div>
    <div class="item">
      <img src="resources/images/adv4.jpg" style="width:100%; height:400px;" alt="loren dolor si amet">
    </div>
    <div class="item">
      <img src="resources/images/9.jpg" style="width:100%; height:400px;" alt="loren dolor si amet">
    </div>
  </div>

  <!-- Controls -->
  <a class="left carousel-control" href="#carousel-example-generic" role="button" data-slide="prev">
    <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
    <span class="sr-only">Previous</span>
  </a>
  <a class="right carousel-control" href="#carousel-example-generic" role="button" data-slide="next">
    <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
    <span class="sr-only">Next</span>
  </a>
</div>
   </div>
 </div>

<div class="trisha-content">
 <div class="container">
   <div class="row">
      
         <div class="col-md-4">
            <div class="list-group">
             <a href="#" class="list-group-item disabled">Book Categories</a>
             <a href="#" class="list-group-item">Book1<span class="badge">14</span></a>
             <a href="#" class="list-group-item">Book2<span class="badge">12</span></a>
             <a href="#" class="list-group-item">Book3<span class="badge">4</span></a>
             <a href="#" class="list-group-item">Book4<span class="badge">8</span></a>
            </div>
            <div class="list-group">
             <a href="#" class="list-group-item disabled">Electronic Categories</a>
             <a href="#" class="list-group-item">Book1<span class="badge">14</span></a>
             <a href="#" class="list-group-item">Book2<span class="badge">12</span></a>
             <a href="#" class="list-group-item">Book3<span class="badge">4</span></a>
             <a href="#" class="list-group-item">Book4<span class="badge">8</span></a>
             <a href="#" class="list-group-item">Book2<span class="badge">12</span></a>
             <a href="#" class="list-group-item">Book3<span class="badge">4</span></a>
             <a href="#" class="list-group-item">Book4<span class="badge">8</span></a>
             <a href="#" class="list-group-item">Book3<span class="badge">4</span></a>
             <a href="#" class="list-group-item">Book4<span class="badge">8</span></a>
            </div>
         </div>
         
         <div class="col-md-8">
            <div class="tr-item col-md-4">
             <a href=""><h4>Cool football-Shape cup</h4> <img src="resources/images/p05.jpg" style="width:100%; height:230px;" class="tr-item-img img-responsive"/></a>
             <div class="text-center"><a href="#">T-shirt</a></div>
              <p class="text-center">700.00</p>
            </div>
            <div class="tr-item col-md-4">
             <a href=""><h4>Cool football-Shape cup</h4> <img src="resources/images/p06.jpg" style="width:100%; height:230px;" class="tr-item-img img-responsive"/></a>
             <div class="text-center"><a href="#">T-shirt</a></div>
              <p class="text-center">700.00</p>
            </div>
            <div class=" tr-item col-md-4">
             <a href=""><h4>Cool football-Shape cup</h4> <img src="resources/images/p07.jpg" style="width:100%; height:230px;" class="tr-item-img img-responsive"/></a>
             <div class="text-center"><a href="#">T-shirt</a></div>
              <p class="text-center">700.00</p>
            </div>
            <div class=" tr-item col-md-4">
             <a href=""><h4>Cool football-Shape cup</h4> <img src="resources/images/p08.jpg" style="width:100%; height:230px;" class="tr-item-img img-responsive"/></a>
             <div class="text-center"><a href="#">T-shirt</a></div>
              <p class="text-center">700.00</p>
            </div>
            <div class=" tr-item col-md-4">
              <a href=""><h4>Cool football-Shape cup</h4><img src="resources/images/p09.jpg" style="width:100%; height:230px;" class="tr-item-img img-responsive"/></a>
             <div class="text-center"><a href="#">T-shirt</a></div>
              <p class="text-center">700.00</p>
            </div>
            <div class="tr-item col-md-4">
              <a href=""><h4>Cool football-Shape cup</h4><img src="resources/images/p10.jpg" style="width:100%; height:230px;" class="tr-item-img img-responsive"/></a>
             <div class="text-center"><a href="#">T-shirt</a></div>
              <p class="text-center">700.00</p>
            </div>
        </div>
        <nav aria-label="Page navigation" class="text-center">
            <ul class="pagination">
            <li>
              <a href="#" aria-label="Previous">
                  <span aria-hidden="true">&laquo;</span>
              </a>
            </li>
               <li><a href="#">1</a></li>
               <li><a href="#">2</a></li>
    			<li><a href="#">3</a></li>
    			<li><a href="#">4</a></li>
    			<li><a href="#">5</a></li>
    		<li>
      <a href="#" aria-label="Next">
        <span aria-hidden="true">&raquo;</span>
      </a>
    </li>
  </ul>
</nav>
       
    </div>
 </div>
</div>

<div class="trisha-footer">
  <div class="container">
   <div class="col-md-12">
     <p class="text-center">@copyright TRISHA</p>
   </div>
  </div>
</div>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="js/bootstrap.min.js"></script>
</body>
</html>