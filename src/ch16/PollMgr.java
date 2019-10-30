package ch16;

import java.sql.*;
import java.util.*;

public class PollMgr {
	private DBConnectionMgr pool;
	
	public PollMgr() {
		try {
			pool = DBConnectionMgr.getInstance();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	//투표 리스트 전체 출력
	public Vector<PollListBean> getAllList(){
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String sql = null;
		Vector<PollListBean> vlist = new Vector<PollListBean>();
	}
}
