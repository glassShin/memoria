package common;

import java.sql.Connection; 
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.ServletContext;

public class JDBCConnect {
	public Connection con = null;
	public Connection getConnection() {

		try {
			Class.forName("com.mysql.cj.jdbc.Driver");

			String url = "jdbc:mysql://localhost:3306/memoriadb";
			String id = "root";
			String pwd = "1234";

			con = DriverManager.getConnection(url, id, pwd);
			System.out.println("연결성공");
		} catch (SQLException e) {
			System.out.println("연결실패");
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return con;

	}
	public static void main(String[] args) {
		new JDBCConnect().getConnection();
	}

}
