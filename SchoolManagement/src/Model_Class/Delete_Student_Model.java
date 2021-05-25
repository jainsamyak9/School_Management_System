package Model_Class;

import java.sql.Connection;
import java.sql.PreparedStatement;


public class Delete_Student_Model {

    static int x;

    public static int deleteStudentById(int id) {

        try {
            Connection conn = Database_Connection.getCon();
            PreparedStatement ps = conn.prepareStatement("delete from tbl_student where id=?");

            ps.setInt(1, id);
            x = ps.executeUpdate();

        } catch (Exception e) {

        }

        return x;

    }

}