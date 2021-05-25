package Model_Class;


import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class Database_Connection {

	private static Connection conn=null;
	public static Connection getCon() throws ClassNotFoundException, SQLException
	{
		if(conn==null)
		{
			Class.forName("com.mysql.cj.jdbc.Driver");
            Connection conn=DriverManager.getConnection("jdbc:mysql://localhost/samyak_sms?verifyServerCertificate=false&useSSL=true","samyak_samyak","9210488110@acp");
			
		}
		return conn;
	}
}