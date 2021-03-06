<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">

  <head>
    <%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title> Home page</title>

    <!-- Bootstrap core CSS -->
    <link rel="stylesheet" href="<%= request.getContextPath() %>/resources/css/bootstrap.min.css">

    <!-- Custom styles for this template -->

    <link rel ="stylesheet" href="<%= request.getContextPath() %>/resources/css/homepage.css">

    <!-- Bootstrap core JavaScript -->
    <script src="<%= request.getContextPath() %>/resources/js/bootstrap.min.css"></script>
    <script src="<%= request.getContextPath() %>/resources/js/bootstrap.bundle.min.js"></script>
    <script src="<%= request.getContextPath() %>/resources/jquery/jquery.slim.js"></script>
  </head>

  <body>

    <!-- Navigation -->
   
      <div class="container">
       <nav class="navbar navbar-dark bg-dark">
        <a class="navbar-brand" href="${pageContext.request.contextPath}/newhomepage">Logo</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarResponsive">
          <ul class="navbar-nav ml-auto">
            <li class="nav-item dropdown">
              <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
               What are you looking for?
              </a>
             <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                 <a class="dropdown-item" href="${pageContext.request.contextPath}/productsbycategory?category=Electronics">Electronics</a>
                <a class="dropdown-item" href="${pageContext.request.contextPath}/productsbycategory?category=Books">Books</a>
                <a class="dropdown-item" href="${pageContext.request.contextPath}/productsbycategory?category=Laptops">Laptops</a>
             </div>
            </li>
            <li class="nav-item active">
              <a class="nav-link" href="${pageContext.request.contextPath}/newhomepage">Home
                <span class="sr-only">(current)</span>
              </a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="${pageContext.request.contextPath}/showcart">Cart</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="#">About</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="#">Contact</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="${pageContext.request.contextPath}/logout">Sign Out</a>
            </li>
          </ul>
        </div>
      </div>
    </nav>

    <!-- Page Content -->
    
    <div class="container">
    
    	

     <!--   <div class="row">

        <div class="col-lg-3">

          <h1 class="my-4">Shop Name</h1>
          <div class="list-group">
            <a href="#" class="list-group-item">Category 1</a>
            <a href="#" class="list-group-item">Category 2</a>
            <a href="#" class="list-group-item">Category 3</a>
          </div>

        </div> -->
        <!-- /.col-lg-3 -->
			<div class="jumbotron jumbotron-fluid">
 			 <div class="container">
   				 <center><h1 class="display-4">Ecommerce Website</h1><center>
    			<p class="lead">One stop for all.</p>
 				 </div>
				</div>
        <div class="col-lg">

          <div id="carouselExampleIndicators" class="carousel slide my-4" data-ride="carousel">
            <ol class="carousel-indicators">
              <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
              <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
              <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
            </ol>
            <div class="carousel-inner" role="listbox">
              <div class="carousel-item active">
                <img class="d-block w-100 img-fluid" src="${pageContext.request.contextPath}/resources/images/Electronics.png"alt="First slide">
                <div class="carousel-caption">
                <h3>One stop for Electronics</h3>
                </div>
              </div>
              <div class="carousel-item">
                <img class="d-block w-100 img-fluid" src="${pageContext.request.contextPath}/resources/images/books.jpg" alt="Second slide">
                <div class="carousel-caption">
                <h3>One stop for Books.</h3></div>
              </div>
              <div class="carousel-item">
                <img class="d-block w-100 img-fluid" src="${pageContext.request.contextPath}/resources/images/laptops.jpg" alt="Third slide">
                <div class="carousel-caption">
                <h3>One stop for Laptops.</h3></div>
              </div>
            </div>
            <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
              <span class="carousel-control-prev-icon" aria-hidden="true"></span>
              <span class="sr-only">Previous</span>
            </a>
            <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
              <span class="carousel-control-next-icon" aria-hidden="true"></span>
              <span class="sr-only">Next</span>
            </a>
          </div>

          <div class="row">
<!--  
            <div class="col-lg-4 col-md-6 mb-4">
              <div class="card h-100">
                <a href="#"><img class="card-img-top" src="http://placehold.it/700x400" alt=""></a>
                <div class="card-body">
                  <h4 class="card-title">
                    <a href="#">Item One</a>
                  </h4>
                  <h5>&#x20b9; X</h5>
                  <p class="card-text">Some Kind of Description about product!</p>
                </div>
                <div class="card-footer">
                  <small class="text-muted"></small>
                </div>
              </div>
            </div>

           
-->
           
        <c:forEach items="${products}" var="products">
           <div class="col-lg-4 col-md-6 mb-4">
              <div class="card h-100">
                <a href="${pageContext.request.contextPath}/resources/images/${products.productId}.jpg"><img height="350" width="100" class="card-img-top" src="${pageContext.request.contextPath}/resources/images/${products.productId}.jpg" alt=""></a>
                <div class="card-body">
                  <h4 class="card-title">
                    <a href="${pageContext.request.contextPath}/viewproduct?productId=${products.productId}"><c:out value="${products.productName}" /></a>
                  </h4>
                  <h5>&#x20b9; <c:out value="${products.unitPrice}" /></h5>
                </div>
                <div class="card-footer">
                  <small class="text-muted"><c:out value="In ${products.category}" /></small>
                </div>
              </div>
            </div>
          </c:forEach>  
          </div>
          <!-- /.row -->

        </div>
        <!-- /.col-lg-9 -->

      </div>
      <!-- /.row -->
     <center> <h2>What our customers say</h2> </center>
<div id="myCarousel" class="carousel slide text-center" data-ride="carousel">
  <!-- Indicators -->
  <ol class="carousel-indicators">
    <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
    <li data-target="#myCarousel" data-slide-to="1"></li>
    
  </ol>

  <!-- Wrapper for slides -->
  <div class="carousel-inner" role="listbox">
    <div class="item active">
    <h4>"This website is the best. I am so happy with the result!"<br><span style="font-style:normal;">Michael Roe, Vice President, Comment Box</span></h4>
    </div>
    <div class="item">
      <h4>"One word... WOW!!"<br><span style="font-style:normal;">John Doe, Salesman, Rep Inc</span></h4>
    </div>
    
  </div>

  <!-- Left and right controls -->
  <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
    <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
    <span class="sr-only">Previous</span>
  </a>
  <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
    <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
    <span class="sr-only">Next</span>
  </a>
</div>
      
      <div class="container-fluid bg-grey">
  <h2 class="text-center">CONTACT</h2>
  <div class="row">
    <div class="col-sm-5">
      <p>Contact us and we'll get back to you within 24 hours.</p>
      <p><span class="glyphicon glyphicon-map-marker"></span> Chicago, US</p>
      <p><span class="glyphicon glyphicon-phone"></span> +00 1515151515</p>
      <p><span class="glyphicon glyphicon-envelope"></span> myemail@something.com</p> 
    </div>
    <div class="col-sm-7">
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
    </div>
  </div>
</div>
      

  
    <!-- /.container  -->
    
    <!-- Footer -->
    <footer class="py-5 bg-dark">
      <div class="container">
        <p class="m-0 text-center text-white">Copyright &copy; Your Website 2019</p>
      </div>
      <!-- /.container -->
    </footer>

    <!-- Bootstrap core JavaScript -->
    <script src="<%= request.getContextPath() %>/resources/jquery/jquery.min.js"></script>
    <script src="<%= request.getContextPath() %>/resources/js/bootstrap.bundle.min.js"></script>

  </body>

</html>
