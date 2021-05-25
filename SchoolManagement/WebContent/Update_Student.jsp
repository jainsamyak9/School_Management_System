<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Accountant</title>


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

                <div class="col-md-6 offset-md-3">

                    <div class="card">
                        <div class="card-header text-center primary-background text-white">
                         
                            <br>
                           Update Student
                        </div>
                        <div class="card-body">
                            <form id="reg-form" action="Edit_Student_Controller" method="POST">



                                
                                  <div class="form-group">
                                    <label for="exampleInputPassword1">Student Id</label>
                                    <input value="<% out.println(session.getAttribute("s_id")); %>" name="s_id" type="text" class="form-control" id="exampleInputPassword1" placeholder="Roll number">
                                </div>
                              
                                
                                <div class="form-group">
                                    <label for="namexyz">Name</label>
                                    <input value="<% out.println(session.getAttribute("s_name")); %>" name="s_name" type="text" class="form-control" id="namexyz" aria-describedby="emailHelp" placeholder="Enter name">
                                </div>

                                <div class="form-group">
                                    <label for="user_mail">Email address</label>
                                    <input value="<% out.println(session.getAttribute("s_email")); %>" name="s_email" type="text" class="form-control" id="user_mail"  placeholder="Enter email">
                                    
                                </div>
                                
                                <div class="form-group">
                                    <label for="exampleInputPassword2">Class Id</label>
                                    <input value="<% out.println(session.getAttribute("c_id")); %>" name="c_id" type="text" class="form-control" id="exampleInputPassword2" placeholder="Class id">
                                </div>
                                
                                  <div class="form-group">
                                    <label for="exampleInputPassword3">Session Id</label>
                                    <input value="<% out.println(session.getAttribute("sess_id")); %>" name="sess_id" type="text" class="form-control" id="exampleInputPassword3" placeholder="Session Id">
                                </div>
                                
                                <div class="form-group">
                                    <label for="exampleInputPassword4">Age</label>
                                    <input value="<% out.println(session.getAttribute("age")); %>" name="age" type="text" class="form-control" id="exampleInputPassword4" placeholder="Age">
                                </div>
                                
                                <div class="form-group">
                                    <label for="exampleInputPassword5">Mobile No</label>
                                    <input value="<% out.println(session.getAttribute("mobile_no")); %>" name="mobile_no" type="text" class="form-control" id="exampleInputPassword5" placeholder="Mobile no">
                                </div>



                                <div class="form-group">
                                    <label for="father_name">Father Name</label>
                                    <input  value="<% out.println(session.getAttribute("f_name")); %>" name="f_name" type="text" class="form-control" id="father_name" placeholder="father name">
                                </div>
                                <div class="form-group">
                                    <label for="mother_name">Mother Name</label>
                                    <input value="<% out.println(session.getAttribute("m_name")); %>" name="m_name" type="text" class="form-control" id="mother_name" placeholder="mother name">
                             </div> 
                              

                                <div class="form-group">
                                    <label for="gender">Select Gender</label>
                                    <br>
                                    <input type="radio"  id="gender" name="gender" value="male" >Male
                                    <input type="radio"  id="gender" name="gender" value="famale">Female
                                </div>

      


                    <!--             <div class="form-check">
                                    <input name="check" type="checkbox" class="form-check-input" id="exampleCheck1">
                                    <label class="form-check-label" for="exampleCheck1">agree terms and conditions</label>
                                </div>
 --><!-- 
                                <br>

                                <div class="container text-center" id="loader" style="display: none;">
                                    <span class="fa fa-refresh fa-spin fa-4x"></span>
                                    <h4>Please wait..</h4>
                                </div> -->

                                <button id="sumbimt-btn" type="submit" class="btn btn-primary">Submit</button>
                            </form>

                        </div>


                    </div>




                </div>
            </div>

        </main>


        <!--javascripts-->
        <script
            src="https://code.jquery.com/jquery-3.4.1.min.js"
            integrity="sha256-CSXorXvZcTkaix6Yvo6HppcZGetbYMGWSFlBw8HfCJo="
        crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
        <script src="js/myjs.js" type="text/javascript"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/2.1.2/sweetalert.min.js"></script>
          </body>
</html>
        