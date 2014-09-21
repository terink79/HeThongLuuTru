package jsp;

import java.sql.*;

public class SignUp{
	
	String URL = ("jdbc:mysql://localhost/sharefile");
	String USERNAME = "root";
	String PASSWORD = "123456";
	Connection connection = null;
	PreparedStatement insertSignUps = null;
	ResultSet resultSet = null;
	public SignUp() {
	try{
		try {
			Class.forName("com.mysql.jdbc.Driver");
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		connection =  DriverManager.getConnection(URL,USERNAME,PASSWORD);
		insertSignUps = connection.prepareStatement(
				"INSERT INTO members (mem_first_name,mem_last_name,mem_email,mem_password"
				+" VALUE (?,?,?,?)");
	}catch(SQLException e){
		e.printStackTrace();
			}
	}	
	public int setSignUp(String first,String last,String email,String password){
		int result = 0;
				try{
					insertSignUps.setString(1, first);
					insertSignUps.setString(2, last);
					insertSignUps.setString(3, email);
					insertSignUps.setString(4, password);
					result = insertSignUps.executeUpdate();
				}catch(SQLException e){
					e.printStackTrace();
					
				}
		return result;
	}
	

}

