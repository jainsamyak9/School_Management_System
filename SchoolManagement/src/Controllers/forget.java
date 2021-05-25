package Controllers;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;



/**
 * Servlet implementation class Forgot
 */
@WebServlet("/Forget")
public class forget extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public forget() {
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
		
		try{
			Class.forName("com.mysql.jdbc.Driver");
            Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/samyak_sms?verifyServerCertificate=false&useSSL=true","samyak_samyak","9210488110@acp");
			
			String s_name=request.getParameter("s_name");
			String s_email=request.getParameter("s_email");
			
			PreparedStatement ps=conn.prepareStatement("update student_info set s_email=? where s_name=?");
			ps.setString(2, s_name);
			ps.setString(1, s_email);
			
			int i=ps.executeUpdate();
			
			if(i>0){
				response.sendRedirect("http://localhost:8080/SchoolManagement/studentlogin.jsp");
			}
			else
			{
				System.out.println("Invalid Id");
			}
		}
		catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		}
		
	}

