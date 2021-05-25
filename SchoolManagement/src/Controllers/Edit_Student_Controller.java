package Controllers;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/Edit_Student_Controller")
public class Edit_Student_Controller extends HttpServlet {

	
	
    /**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
       
      int result;
		
        try {
        	
        	 PrintWriter out = response.getWriter();
             session.getAttribute("s_id");
           String tid = request.getParameter("s_id");
           int sid= Integer.parseInt(tid);
             String sname = request.getParameter("s_name");
             String semail = request.getParameter("s_email");
             String gender = request.getParameter("gender");
             String cid = request.getParameter("c_id");
             int classid= Integer.parseInt(cid);
             String sessid = request.getParameter("sess_id");
             int sessionid= Integer.parseInt(sessid);
             String sage = request.getParameter("age");
             int age= Integer.parseInt(sage);
             String fname =request.getParameter("f_name");
             String mname =request.getParameter("m_name");
             
             String mobi = request.getParameter("mobile_no");
             int mobileno= Integer.parseInt(mobi);

         
        	Class.forName("com.mysql.jdbc.Driver");
            Connection conn=DriverManager.getConnection("jdbc:mysql://localhost/samyak_sms?verifyServerCertificate=false&useSSL=true","samyak_samyak","9210488110@acp");
			
			PreparedStatement ps = conn.prepareStatement("update student_info set s_name=?,s_email=?,c_id=?,sess_id=?,gender=?,age=?,f_name=?,m_name=?,mobile_no=? where s_id=?");

        
				 
			ps.setInt(10, sid);
	            
			ps.setString(1, sname);

            ps.setString(2, semail);
            ps.setInt(3, classid);
            ps.setInt(4, sessionid);
            ps.setString(5, gender);
         
            ps.setInt(6, age);
            ps.setString(7, fname);
            ps.setString(8, mname);
      
            ps.setInt(9, mobileno);
                        

         
           result= ps.executeUpdate();
        

       	
            if (ps.executeUpdate() == 1) {
            	  out.println("Update Successful");
          response.sendRedirect("Student_Dashboard.jsp");
                
            } else {
                out.println("Invalid");
            }

        } catch (Exception e) {
        	e.printStackTrace();
        }

    }

    }