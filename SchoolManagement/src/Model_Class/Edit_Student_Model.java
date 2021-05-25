package Model_Class;


import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;


public class Edit_Student_Model {
    
    

	private int s_id;
    private String s_name;
    private String s_email;
    private int c_id;
    private int sess_id;

    private String gender;
  
    private int age;
    private String f_name;
    private String m_name;

    private int mobile_no;
   



    
    
    
    public static List<Edit_Student_Model> getStudentByS_id(int s_id){
        List<Edit_Student_Model> list=new ArrayList<Edit_Student_Model>();
        try {

			Class.forName("com.mysql.jdbc.Driver");
            Connection conn=DriverManager.getConnection("jdbc:mysql://localhost/samyak_sms?verifyServerCertificate=false&useSSL=true","samyak_samyak","9210488110@acp");
            PreparedStatement ps = conn.prepareStatement("select s_id, s_name,s_email,c_id,sess_id,roll_no,gender,dob,age,f_name,m_name,telephone_no,mobile_no,present_address,permanent_address from student_info where s_id="+s_id);
            
            ResultSet rs = ps.executeQuery();

            while (rs.next()) {
                Edit_Student_Model student = new Edit_Student_Model();
                student.setS_id(rs.getInt(1));
                student.setS_name(rs.getString(2));
                student.setS_email(rs.getString(3));
                student.setC_id(rs.getInt(4));
                student.setSess_id(rs.getInt(5));
            
                student.setGender(rs.getString(6));
            
                student.setAge(rs.getInt(7));
                student.setF_name(rs.getString(8));
                student.setM_name(rs.getString(9));
              
                student.setMobile_no(rs.getInt(10));
                
                
               
        
                
                list.add(student);
                
            }
            conn.close();

        } catch (Exception e) {

        }
        
        return list;
    }
    
    
    public String getGender() {
		return gender;
	}


	public void setGender(String gender) {
		this.gender = gender;
	}


	public int getS_id() {
		return s_id;
	}



	public void setS_id(int s_id) {
		this.s_id = s_id;
	}



	public String getS_name() {
		return s_name;
	}



	public void setS_name(String s_name) {
		this.s_name = s_name;
	}



	public String getS_email() {
		return s_email;
	}



	public void setS_email(String s_email) {
		this.s_email = s_email;
	}



	public int getC_id() {
		return c_id;
	}



	public void setC_id(int c_id) {
		this.c_id = c_id;
	}



	public int getSess_id() {
		return sess_id;
	}



	public void setSess_id(int sess_id) {
		this.sess_id = sess_id;
	}





	public int getAge() {
		return age;
	}



	public void setAge(int age) {
		this.age = age;
	}



	public String getF_name() {
		return f_name;
	}



	public void setF_name(String f_name) {
		this.f_name = f_name;
	}



	public String getM_name() {
		return m_name;
	}



	public void setM_name(String m_name) {
		this.m_name = m_name;
	}



	

	public int getMobile_no() {
		return mobile_no;
	}



	public void setMobile_no(int mobile_no) {
		this.mobile_no = mobile_no;
	}



	
    
    
    
}