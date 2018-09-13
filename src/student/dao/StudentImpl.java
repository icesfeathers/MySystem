package student.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import student.entity.Student;
import util.DBconn;

public class StudentImpl implements StudentDao {

	@Override
	public  List<Student> getStudentAll() {
		// TODO Auto-generated method stub
		List<Student> List = new ArrayList<Student>();
		try {
			DBconn.init();
			ResultSet rs = DBconn.selectSql("select * from student");		
			while(rs.next()) {
				Student student = new Student();
				student.setId(rs.getInt("id"));
				student.setName(rs.getString("name"));
				student.setSex(rs.getString("sex"));
				student.setAge(rs.getString("age"));
				student.setSchool(rs.getString("school"));
				student.setInfo(rs.getString("info"));
				List.add(student);
			}
			DBconn.closeConn();
			return List;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return null;
	}

	@Override
	public boolean addStudent(Student student) {
		// TODO Auto-generated method stub
		boolean flag = false;
		DBconn.init();
		String sql = "insert into student(name,sex,age,school,info)"
				+"values('"+student.getName()+"','"
				           +student.getSex()+"','"
				           +student.getAge()+"','"
				           +student.getSchool()+"','"
				           +student.getInfo()+"')";
		int i = DBconn.addUpDel(sql);
		if(i>0){flag = true;}
		return flag;
	}

	@Override
	public boolean updateStudent(Student student) {
		// TODO Auto-generated method stub
		boolean flag = false;
		DBconn.init();
		String sql = "update student set name ='"+student.getName()+"',sex = '"+student.getSex()+"',age ='"+student.getAge()+"',school ='"+student.getSchool()+"',info ='"+student.getInfo()+"' where id ="+student.getId();
		int i = DBconn.addUpDel(sql);
		if(i>0){flag = true;}
		return flag;
	}

	@Override
	public boolean deleteStudent(int id) {
		// TODO Auto-generated method stub
		boolean flag = false;
		DBconn.init();
		String sql = "delete from student where id="+id;
		int i = DBconn.addUpDel(sql);
		if(i>0){flag = true;}
		return flag;
	}

	@Override
	public Student getStudent(int id) {
		Student student = new Student();
			DBconn.init();
			String sql = "select * from student where id ="+id;
			try {
				ResultSet rs = DBconn.selectSql(sql);		
				while(rs.next()) {
					student.setId(rs.getInt("id"));
					student.setName(rs.getString("name"));
					student.setSex(rs.getString("sex"));
					student.setAge(rs.getString("age"));
					student.setSchool(rs.getString("school"));
					student.setInfo(rs.getString("info"));
					}
				DBconn.closeConn();
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			return student;
	}
	
	
	

}
