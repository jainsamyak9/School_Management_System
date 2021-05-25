
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>  

 <%@ page import = "java.sql.Connection,java.sql.PreparedStatement,java.sql.ResultSet,java.io.PrintWriter,java.sql.Connection,java.sql.DriverManager"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
 <!--css-->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
        <link href="newCascadeStyleSheet.css" rel="stylesheet" type="text/css"/>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <style>
            .banner-background{
                clip-path: polygon(30% 0%, 70% 0%, 100% 0, 100% 91%, 63% 100%, 22% 91%, 0 99%, 0 0);
            }
        </style>
      
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
        
<meta charset="ISO-8859-1">
<title>Student details</title>
</head>
<body>


<sql:setDataSource var="db" driver="com.mysql.jdbc.Driver"  
     url="jdbc:mysql://localhost/samyak_sms?verifyServerCertificate=false&useSSL=true"  
     user="samyak_samyak"  password="9210488110@acp"/>


<sql:query dataSource="${db}" var="rs">  
SELECT s_id, s_name, s_email, c_id, sess_id, gender, age,f_name, m_name, mobile_no
   FROM student_info  

</sql:query>



<%
PrintWriter out2 = response.getWriter();  
String A[]=new String[10];

response.setContentType("text/html");  
try 
{  
    Class.forName("com.mysql.jdbc.Driver");
    Connection con=DriverManager.getConnection("jdbc:mysql://localhost/samyak_sms?verifyServerCertificate=false&useSSL=true","samyak_samyak","9210488110@acp");
 	PreparedStatement ps=con.prepareStatement("select * FROM student_info where s_id =?");
 	ps.setString(1, Integer.toString(j));
 	ResultSet rs = ps.executeQuery();  
    int a=0;

    while (rs.next()) 
    {  
        
     	A[0]=Integer.toString(rs.getInt(1));
     	A[1]=rs.getString(2);
    	A[2]=rs.getString(3);
    	A[3]=Integer.toString(rs.getInt(4));
    	A[4]=Integer.toString(rs.getInt(5));
    	A[5]=rs.getString(6);
    	A[6]=Integer.toString(rs.getInt(7));
    	A[7]=rs.getString(8);
    	A[8]=rs.getString(9);
    	A[9]=Integer.toString(rs.getInt(10));

    }  
    con.close();  
   }  
    catch (Exception e) 
   {  
    	out.print(e);
   }  


%>


        <%@include file="nav_std.jsp" %>

        <main class="primary-background  banner-background"  style="padding-bottom: 80px;">

            <div class="container">

                <div class="col-md-6 offset-md-3">

                    <div class="card">
                        <div class="card-header text-center primary-background text-white">
                            
                            <br>
                            STUDENT PROFILE
                        </div>
                        <div class="card-body">


                         
                         
                           <div class="form-group">
                                    <label > ID :     <h5><% out.print(A[0]); %></h5></label>
                                </div>
                         
                         <div class="form-group">
                                    <label > Name :     <h5><% out.print(A[1]); %></h5></label>
                                </div>
                                <div class="form-group">
                                    <label > Email :     <h5><% out.print(A[2]); %></h5></label>
                                </div>
                                <div class="form-group">
                                    <label > Class Id :     <h5><% out.print(A[3]); %></h5></label>
                                </div>
                                  <div class="form-group">
                                    <label > Session ID :     <h5><% out.print(A[4]); %></h5></label>
                                </div>
                                <div class="form-group">
                                    <label > Gender :     <h5><% out.print(A[5]); %></h5></label>
                                </div>
                              
                                <div class="form-group">
                                    <label > Age :     <h5><% out.print(A[6]); %></h5></label>
                                </div>
                                  <div class="form-group">
                                    <label > Father Name :     <h5><% out.print(A[7]); %></h5></label>
                                </div>
                                <div class="form-group">
                                    <label > Mother Name :     <h5><% out.print(A[8]); %></h5></label>
                                </div>
                              
                                <div class="form-group">
                                    <label > Mobile No :     <h5><% out.print(A[9]); %></h5></label>
                                </div>


               
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