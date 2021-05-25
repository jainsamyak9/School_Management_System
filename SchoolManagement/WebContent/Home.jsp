<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<link href="newCascadeStyleSheet.css" rel="stylesheet" type="text/css">
 <style>
            .banner-background{
                clip-path: polygon(30% 0%, 70% 0%, 100% 0, 100% 91%, 63% 100%, 22% 91%, 0 99%, 0 0);
            }
        </style>
    <title>Home</title>
  </head>
  <body>
  <%@include file="navbar.jsp" %>
  <main class="primary-background  banner-background"  style="padding-bottom: 80px;">

  <div class="container">
  <div class="row">
  <br><br><br>
   <div class="col-md-2">
        <br><br>
        <div class="btn-group-vertical">
<a class="btn btn-danger" href="#" role="button">Events</a>
<a class="btn btn-warning" href="#" role="button">Our Faculty </a>

<a class="btn btn-dark" href="#" role="button">Achievements</a>
<!-- <a class="btn btn-dark" href="http://localhost:8080/SchoolManagement/view_result.jsp" role="button">View Result</a>
<a class="btn btn-secondary" href="http://localhost:8080/SchoolManagement/Fees_Details.jsp" role="button">View Fees Details</a>
<a class="btn btn-primary" href="http://localhost:8080/SchoolManagement/Update_Student.jsp" role="button">Edit Profile</a>
 --></div>
</div>
    <div class="col-md-8">
   <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
  <ol class="carousel-indicators">
    <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
    <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
    <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
  </ol>
  <div class="carousel-inner">
    <div class="carousel-item active">
      <img class="d-block w-100" src="https://source.unsplash.com/1600x960/?student,uniform" alt="First slide">
    </div>
    <div class="carousel-item">
      <img class="d-block w-100" src="https://source.unsplash.com/1600x960/?college,function" alt="Second slide">
    </div>
    <div class="carousel-item">
      <img class="d-block w-100" src="https://source.unsplash.com/1600x960/?class,teaching" alt="Third slide">
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
</div>
 <!-- <div class="col-md-2">
 <p>This is our school few pics.</p>
</div> -->

    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
  </div>
  </div>
  </main>
  </body>
</html>