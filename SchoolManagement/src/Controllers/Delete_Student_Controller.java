package Controllers;

import Model_Class.Delete_Student_Model;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class Delete_Student_Controller extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        
        PrintWriter out = response.getWriter();
        String studentId = request.getParameter("id");
        int id = Integer.parseInt(studentId);

        if (Delete_Student_Model.deleteStudentById(id) == 1) {
        	out.println("Successfully Deleted");
            
            response.sendRedirect("admindashboard.jsp");
            
        }
        else{
            out.println("Failed");
        }

    }

}