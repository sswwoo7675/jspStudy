package ch11;
import java.util.*;

public class RegisterMgr {
	private final String JDBC_DRIVER = "org.gjf.mm.mysql.Driver";
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
		
	}
}
