package Model_Class;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;


public class Student_Login_Model {
    
    
	private static int s_id;
    private static String s_name;
    private static String s_email;
    private static int c_id;
    private static int sess_id;

    private static String gender;

    private static int age;
    private static String f_name;
    private static String m_name;
   
    private static int mobile_no;


    public Student_Login_Model() {
    }

    public Student_Login_Model(int s_id,String s_name,String s_email,int c_id,int sess_id,String gender,int age,String f_name,String m_name,int mobile_no) {
        this.s_id = s_id;
        this.s_name = s_name;
        this.s_email = s_email;
        this.c_id = c_id;
        this.sess_id = sess_id;
      
   
        this.gender = gender;
 
        this.age=age;
        this.f_name=f_name;
        this.m_name=m_name;
       
        this.mobile_no = mobile_no;
   
    
    }
    
    
    
    
    
    
 
	public static int validateStudent(String s_name , String s_email){
        s_id=0;
        
        try {
System.out.println("1");
        	Class.forName("com.mysql.jdbc.Driver");
        	System.out.println("10");
            Connection conn=DriverManager.getConnection("jdbc:mysql://localhost/samyak_sms?verifyServerCertificate=false&useSSL=true","samyak_samyak","9210488110@acp");
    		
System.out.println("2");
            PreparedStatement ps = conn.prepareStatement("select s_id, s_name,s_email,c_id,sess_id,gender,age,f_name,m_name,mobile_no from student_info where s_name=? and s_email=?");
            ps.setString(1, s_name);
            ps.setString(2, s_email);

System.out.println("3");
            ResultSet rs = ps.executeQuery();
            System.out.println("5");
            while (rs.next()) {
            	System.out.println("6");
                s_id = rs.getInt(1);
                s_name = rs.getString(2);
                s_email = rs.getString(3);
                c_id = rs.getInt(4);
                sess_id = rs.getInt(5);
            
                gender = rs.getString(6);
   
                age = rs.getInt(7);
                f_name = rs.getString(8);
                m_name= rs.getString(9);
       
                mobile_no = rs.getInt(10);
             

System.out.println("4");
                
                
                Student_Login_Model st= new Student_Login_Model(s_id, s_name, s_email, c_id, sess_id, gender,  age, f_name, m_name,  mobile_no);
                

            }

        } catch (Exception e) {

System.out.println(e);
        }
    
        return s_id;
                
    }

    public static int getS_id() {
		return s_id;
	}
    
    public static String getGender() {
		return gender;
	}

	

	public static String getS_name() {
		return s_name;
	}

	
	public static String getS_email() {
		return s_email;
	}

	

	public static int getC_id() {
		return c_id;
	}

	
	public static int getSess_id() {
		return sess_id;
	}

	

	

	

	public static int getAge() {
		return age;
	}

	

	public static String getF_name() {
		return f_name;
	}

	

	public static String getM_name() {
		return m_name;
	}

	
	

	public static int getMobile_no() {
		return mobile_no;
	}

	
	
	
	
    
    
    
}

