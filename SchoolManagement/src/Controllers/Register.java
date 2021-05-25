
package Controllers;
import java.io.IOException;
import java.io.PrintWriter;
//import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
/*import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;*/

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class Register
 */
@WebServlet("/Register")
public class Register extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Register() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
		System.out.println("1");
		//PrintWriter out = response.getWriter();
		PrintWriter out = response.getWriter();
        
        String sname = request.getParameter("userName");
        String semail = request.getParameter("userId");
        String gender = request.getParameter("gender");
        String pass = request.getParameter("userPass");
    
        String pass1 = request.getParameter("userConfPass");
        
        String cty = request.getParameter("userCty");
 
        String add =request.getParameter("userAdd");
        String city =request.getParameter("userCity");
        
        if(pass.equals(pass1)){
	    try {
	      Class.forName("com.mysql.jdbc.Driver");
          Connection con=DriverManager.getConnection("jdbc:mysql://localhost/samyak_sms?verifyServerCertificate=false&useSSL=true","samyak_samyak","9210488110@acp");
	      PreparedStatement ps = con.prepareStatement
                  ("insert into student_info(userName,userId,userPass,gender,userAdd,userCity,userCty) values(?,?,?,?,?,?,?)");
	  	System.out.println("3");
	      ps.setString(1, sname);

          ps.setString(2, semail);
          ps.setString(3, pass);
          ps.setString(5, add);
          ps.setString(4, gender);
       
          ps.setString(6, city);
          ps.setString(7, cty);
        
    
          
      	System.out.println("4");
      int i = ps.executeUpdate();
  	System.out.println("5");
      if(i > 0) {
         response.sendRedirect("Login.jsp");
      }
      else {
 out.print("invalid");
  }
	    }
  catch(Exception se) {
      se.printStackTrace();
	      
	      
	    }
	  
	    }
	    
	  else {
	    	System.out.println("Password and COnfirm password mismatch");
       
	}
}
}