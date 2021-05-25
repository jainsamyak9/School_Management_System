
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>  

 <%@ page import = "java.sql.Connection,java.sql.PreparedStatement,java.sql.ResultSet,java.io.PrintWriter,java.sql.Connection,java.sql.DriverManager"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
      <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css" integrity="sha512-dTfge/zgoMYpP7QbHy4gWMEGsbsdZeCXz7irItjcC3sPUFtf0kuFbDz/ixG7ArTxmDjLXDmezHubeNikyKGVyQ==" crossorigin="anonymous">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
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
<body style="background-color:powderblue;">


<sql:setDataSource var="db" driver="com.mysql.jdbc.Driver"  
     url="jdbc:mysql://localhost/samyak_sms?verifyServerCertificate=false&useSSL=true"  
     user="samyak_samyak"  password="9210488110@acp"/>


<sql:query dataSource="${db}" var="rs">  
SELECT f_id,  submitted ,total ,remaining 
   FROM student_info s, fees p  
   WHERE p.f_id =<%=j%> LIMIT 1;    
</sql:query>



<%
PrintWriter out2 = response.getWriter();  
response.setContentType("text/html");  
try 
{  
    Class.forName("com.mysql.cj.jdbc.Driver");
    Connection con=DriverManager.getConnection("jdbc:mysql://localhost/samyak_sms?verifyServerCertificate=false&useSSL=true","samyak_samyak","9210488110@acp");
 	PreparedStatement ps=con.prepareStatement("select SUM(submitted) FROM fees ");
    ResultSet rs = ps.executeQuery();  
    int a=0;
    while (rs.next()) 
    {  
         a = rs.getInt(1);  
     
       // out.println( "<h1>"+ " Total Fee Received :  " + a + "</h1>" );   
    }  
     
    
	PreparedStatement ps2=con.prepareStatement("select SUM(remaining) FROM fees ");
    ResultSet rs2 = ps2.executeQuery();  
    int b=0;
    while (rs2.next()) 
    {  
        b= rs2.getInt(1);  
     
       // out.println( "<h1>"+ " Total Fee remaining :  " + a + "</h1>" );   
    }  
  //  out.println("<h1>"+ " Total Fee Received :  " +  a +"</h1>"+   "<h1>"+ " Total Fee remaining :  " + b+ "</h1>" );   

    
    con.close();  
   }  
    catch (Exception e) 
   {  
   }  



%>


<div class="container ">
<table class="table table-bordered table-striped table-hover">
<tr>  
<th>Student ID</th>  
 

<th>total</th>  
<th>remaining</th>  
<th>submitted</th>  
 
</tr>  

<c:forEach var="table" items="${rs.rows}"  >  
<tr class="info">  
<td><c:out value="${table.f_id}"/></td>  


 <td><c:out value="${table.total}"/></td> 
  <td><c:out value="${table.remaining}"/></td> 
 <td><c:out value="${table.submitted}"/></td> 
 

 
</tr>  
</c:forEach>  

</table>  

  </div>


</body>
</html>