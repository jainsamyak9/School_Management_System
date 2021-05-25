package Model_Class;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;


public class Admin_Login_Model {
    
    
	private static int a_id;
    private static String a_name;
    private static String a_email;
    private static String a_pass;

    private static String gender;

    
   
    private static int mobile_no;


    public Admin_Login_Model() {
    }

    public Admin_Login_Model(int a_id,String a_name,String a_email,String a_pass,String gender, int mobile_no) {
        this.a_id = a_id;
        this.a_name = a_name;
        this.a_email = a_email;
        this.a_pass = a_pass;
      
   
        this.gender = gender;
 
       
        this.mobile_no = mobile_no;
   
    
    }
    
    
    
    
    
    
 
	public static int validateAdmin(String a_name , String a_pass){
        a_id=0;
        
        try {
System.out.println("1");
        	Class.forName("com.mysql.jdbc.Driver");
            Connection conn=DriverManager.getConnection("jdbc:mysql://localhost/samyak_sms?verifyServerCertificate=false&useSSL=true","samyak_samyak","9210488110@acp");

System.out.println("2");
            PreparedStatement ps = conn.prepareStatement("select a_id, a_name,a_email,a_pass,gender,mobile_no from teacher_info where a_name=? and a_pass=?");
            ps.setString(1, a_name);
            ps.setString(2, a_pass);

System.out.println("3");
            ResultSet rs = ps.executeQuery();
            System.out.println("5");
            try {
				while (rs.next()) {
					System.out.println("6");
				    a_id = rs.getInt(1);
				    a_name = rs.getString(2);
				    a_email = rs.getString(3);
				    a_pass = rs.getString(4);
				
				    gender = rs.getString(5);
   
				 
      
				    mobile_no = rs.getInt(6);
				 


				    
				    
				    Admin_Login_Model st= new Admin_Login_Model(a_id, a_name, a_email,a_pass,  gender, mobile_no);
				    

				}
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}

        } catch (Exception e) {

System.out.println(e);
        }
    
        return a_id;
                
    }

	public static int getA_id() {
		return a_id;
	}

	public static String getA_name() {
		return a_name;
	}


	public static String getA_email() {
		return a_email;
	}

	public static String getGender() {
		return gender;
	}

	public static int getMobile_no() {
		return mobile_no;
	}

	public static String getA_pass() {
		// TODO Auto-generated method stub
		return a_pass;
	}

	

	
	
	
    
    
    
}

