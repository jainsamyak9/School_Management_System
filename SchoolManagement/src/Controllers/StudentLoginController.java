package Controllers;

import Model_Class.Student_Login_Model;
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
@WebServlet("/StudentLoginController")

    /**
     * @see HttpServlet#HttpServlet()
     */
    
  /**
   * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
   */
  

  /**
   * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
   */


public class StudentLoginController extends HttpServlet {

    /**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	@Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    	 
    	  //  int s_id= Integer.parseInt(tid);
    	    String s_name = request.getParameter("s_name");
    	    String s_email = request.getParameter("s_email");

        if (Student_Login_Model.validateStudent(s_name, s_email) != 0) {

            HttpSession session = request.getSession();

            Date lastvisit = new Date();
            session.setAttribute("s_id", Student_Login_Model.getS_id());

            session.setAttribute("s_name", Student_Login_Model.getS_name());

            
            session.setAttribute("gender", Student_Login_Model.getGender());
            session.setAttribute("f_name", Student_Login_Model.getF_name());
            session.setAttribute("m_name", Student_Login_Model.getM_name());
            session.setAttribute("c_id", Student_Login_Model.getC_id());
            session.setAttribute("s_email", Student_Login_Model.getS_email());
            session.setAttribute("mobile_no", Student_Login_Model.getMobile_no());
           
            session.setAttribute("sess_id", Student_Login_Model.getSess_id());
       
            session.setAttribute("age", Student_Login_Model.getAge());
           

            session.setAttribute("lastvisit", lastvisit.toString());

            //response.sendRedirect("http://localhost:8080/SchoolManagement/studentdashboard.jsp");
            RequestDispatcher rd = request.getRequestDispatcher("Student_Dashboard.jsp");
           // RequestDispatcher rd = request.getRequestDispatcher("WelcomeUser.jsp");
            rd.forward(request, response);
        } else {
            //RequestDispatcher rd = request.getRequestDispatcher("studentlogin.jsp");
            //rd.include(request, response);
          System.out.println("invalid");
        }

    }

}
