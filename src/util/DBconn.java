package util;

import java.sql.*;

public class DBconn {
	
	static String dirver = "com.mysql.jdbc.Driver";
	static String url = "jdbc:mysql://localhost:3306/test?useunicuee=true&characterEncoding=utf-8"; 
	static String username = "root"; 
	static String password = "root"; 
	static Connection  conn = null;
	static ResultSet rs = null;
	static PreparedStatement ps =null;

	/* 加载驱动 
	 * 输入登入数据库的用户名和密码
	 */
	public static void init() {	
		try {
			Class.forName(dirver);
			conn =DriverManager.getConnection(url, username, password);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	/* 数据库操作：增加、更新、删除
	 * i返回收影响条数
	 */
	public static int addUpDel(String sql) {
		int i = 0;
		try {
			ps = conn.prepareStatement(sql);
			i = ps.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return i;		
	}
	
	/* 数据库操作：选择
	 * rs返回结果列表
	 */
	public static ResultSet selectSql(String sql) {
		try {
			ps = conn.prepareStatement(sql);
			rs = ps.executeQuery(sql);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return rs;
	} 
	
	/* 断开数据库连接
	 */
	public static void closeConn() {
		try {
			conn.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}


}
