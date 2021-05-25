<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Dashboard</title>
 <!--css-->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
        <link href="newCascadeStyleSheet.css" rel="stylesheet" type="text/css"/>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <style>
            .banner-background{
                clip-path: polygon(30% 0%, 70% 0%, 100% 0, 100% 91%, 63% 100%, 22% 91%, 0 99%, 0 0);
            }
        </style>
</head>
<body>
<%

int j=0;
try{
	j=(Integer)session.getAttribute("s_id");
}
catch(Exception e)
{
	
}

if(j==0)
{
	response.sendRedirect("Student_Login.jsp");
}
System.out.print(j);


%>
 <%@include file="nav_std.jsp" %>

        <main class="primary-background  banner-background"  style="padding-bottom: 80px;">
        <div class="container">
  <div class="row">
 
    <div class="col-md-2">
        <br><br>
        <div class="btn-group-vertical">
<a class="btn btn-warning" href="http://localhost:8080/SchoolManagement/Student_Profile.jsp" role="button">View Profile </a>
<a class="btn btn-danger" href="http://localhost:8080/SchoolManagement/View_Subject2.jsp" role="button">View Subject</a>
<a class="btn btn-secondary" href="http://localhost:8080/SchoolManagement/View_Teacher.jsp" role="button">View Teacher</a>
<a class="btn btn-dark" href="http://localhost:8080/SchoolManagement/view_result.jsp" role="button">View Result</a>
<a class="btn btn-secondary" href="http://localhost:8080/SchoolManagement/Fees_Details.jsp" role="button">View Fees Details</a>
<a class="btn btn-primary" href="http://localhost:8080/SchoolManagement/Update_Student.jsp" role="button">Edit Profile</a>
</div>
</div>
<div class="col-md-8">
<div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
  
  <div class="carousel-inner">
    <div class="carousel-item active">
      <img class="d-block w-100" src="https://source.unsplash.com/1600x900/?nature,water" alt="First Slide">
    </div>
    <div class="carousel-item">
      <img class="d-block w-100" src="https://source.unsplash.com/1600x900/?nature,water" class="d-block w-100" alt="Second Slide">
    </div>
    <div class="carousel-item">
      <img class="d-block w-100" src="https://source.unsplash.com/1600x900/?nature,water"  alt="Third Slide">
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
 <!-- <div class="col-md-2">
 <p>This is our school few pics.</p>
</div> -->
<!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>

</body>
</html>