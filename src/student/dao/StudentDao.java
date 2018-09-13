package student.dao;

import java.util.List;

import student.entity.Student;

public interface StudentDao {
	
	
	
	public List<Student> getStudentAll();
	public Student getStudent(int id);
	public boolean addStudent(Student student);
	public boolean updateStudent(Student student);
	public boolean deleteStudent(int id);
}
