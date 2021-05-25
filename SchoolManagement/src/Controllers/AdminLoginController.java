package Controllers;

import Model_Class.Admin_Login_Model;

import java.io.IOException;
import java.util.Date;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
/**
 * Servlet implementation class UserProfile
 */
@WebServlet("/AdminLoginController")

    /**
     * @see HttpServlet#HttpServlet()
     */
    
  /**
   * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
   */
  

  /**
   * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
   */


public class AdminLoginController extends HttpServlet {

    /**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	@Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    	 
    	  //  int s_id= Integer.parseInt(tid);
    	    String a_name = request.getParameter("a_name");
    	    String a_pass = request.getParameter("a_pass");

        if (Admin_Login_Model.validateAdmin(a_name, a_pass) != 0) {
        	System.out.println("6");
            HttpSession session = request.getSession();

          //  Date lastvisit = new Date();
            session.setAttribute("a_id", Admin_Login_Model.getA_id());

            session.setAttribute("a_name", Admin_Login_Model.getA_name());
            session.setAttribute("a_pass", Admin_Login_Model.getA_pass());
            
            session.setAttribute("gender", Admin_Login_Model.getGender());
            session.setAttribute("a_email", Admin_Login_Model.getA_email());
            session.setAttribute("mobile_no", Admin_Login_Model.getMobile_no());
           
            

           // session.setAttribute("lastvisit", lastvisit.toString());
            System.out.println("7");
            //response.sendRedirect("http://localhost:8080/SchoolManagement/studentdashboard.jsp");
            RequestDispatcher rd = request.getRequestDispatcher("Admin_Dashboard.jsp");
           // RequestDispatcher rd = request.getRequestDispatcher("WelcomeUser.jsp");
            rd.forward(request, response);
        } else {
            //RequestDispatcher rd = request.getRequestDispatcher("studentlogin.jsp");
            //rd.include(request, response);
          System.out.println("invalid");
        }

    }

}
