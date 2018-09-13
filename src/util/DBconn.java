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

	/* �������� 
	 * ����������ݿ���û���������
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
	
	/* ���ݿ���������ӡ����¡�ɾ��
	 * i������Ӱ������
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
	
	/* ���ݿ������ѡ��
	 * rs���ؽ���б�
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
	
	/* �Ͽ����ݿ�����
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
