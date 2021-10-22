package user;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import common.JDBCUtil;

public class UserDAO {
	
	//DB 관련 변수 선언
	private Connection con = null;
	private PreparedStatement pstmt = null;
	private ResultSet rs = null;
	
	//sql 명령어
	private final String USER_GET = "select id, password from users where id=? and password=?";
	
	//로그인 user 조회(select) 
	public UserDO getUser(UserDO userObj) {
		UserDO user = null;
		
		try {
			System.out.println("===> JDBC로 getUser() 가능 처리!");
			
			//JDBCUtil=>연결객체 받아오기
			con = JDBCUtil.getConnection();
			pstmt = con.prepareStatement(USER_GET);
			pstmt.setString(1, userObj.getId());
			pstmt.setString(2, userObj.getPassword());
			
			//select 문장은 executeQuery()
			rs = pstmt.executeQuery();
			
			//rs가 가르키는 거 가져오기
			if(rs.next()) {
			//userDO 객체 생성
				user = new UserDO();
				user.setId(rs.getString("ID"));
				user.setPassword(rs.getString("PASSWORD"));
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			JDBCUtil.close(rs,pstmt,con);
		}
		
		return user;
	}
	
}
