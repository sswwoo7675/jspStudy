package ch11;
import java.sql.*;
import java.util.*;

public class RegisterMgr {
	private final String JDBC_DRIVER = "org.gjt.mm.mysql.Driver";
	private final String JDBC_URL = "jdbc:mysql://localhost:3306/mydb";
	private final String USER = "root";
	private final String PASS = "swo0836@@";
	
	public RegisterMgr() {
		try {
			Class.forName(JDBC_DRIVER);
		} catch(Exception e) {
			System.out.println("Error : JDBC 드라이버 로딩 실패");
		}
	}
	
	public Vector<RegisterBean> getRegisterList(){
		Connection conn = null;
		Statement stmt = null;
		ResultSet rs = null;
		
		Vector<RegisterBean> vlist = new Vector<RegisterBean>();
		
		try {
			conn = DriverManager.getConnection(JDBC_URL,USER,PASS);
			String strQuery = "select * from tblregister";
			stmt = conn.createStatement();
			rs = stmt.executeQuery(strQuery);
			while(rs.next()) {
				RegisterBean registerBean = new RegisterBean();
				registerBean.setId(rs.getString("id"));
				registerBean.setPwd(rs.getString("pwd"));
				registerBean.setName(rs.getString("name"));
				registerBean.setNum1(rs.getString("num1"));
				registerBean.setNum2(rs.getString("num2"));
				registerBean.setEmail(rs.getString("email"));
				registerBean.setPhone(rs.getString("Phone"));
				registerBean.setZipcode(rs.getString("zipcode"));
				registerBean.setAddress(rs.getString("address"));
				registerBean.setJob(rs.getString("job"));
				vlist.add(registerBean);
			}
		} catch(Exception e) {
			System.out.println("Exception: " + e);
		} finally {
			if(rs!=null) try {rs.close();} catch(SQLException e){}
			if(stmt!=null) try {stmt.close();} catch(SQLException e){}
			if(conn!=null) try {conn.close();} catch(SQLException e){}
		}
	return vlist;
	}
}
