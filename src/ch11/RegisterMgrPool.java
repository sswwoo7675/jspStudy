package ch11;

import java.sql.*;
import java.util.*;

public class RegisterMgrPool {
	
	private DBConnectionMgr pool = null;
	
	public RegisterMgrPool() {
		try {
			pool = DBConnectionMgr.getInstance();
		} catch(Exception e) {
			System.out.println("Error : 커넥션 얻어오기 실패");
		}
	}
	
	public Vector<RegisterBean> getRegisterList(){
		Connection conn = null;
		Statement stmt = null;
		ResultSet rs = null;
		
		Vector<RegisterBean> vlist = new Vector<RegisterBean>();
		
		try {
			conn = pool.getConnection();
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
			pool.freeConnection(conn);
		}
	return vlist;
	}
}
