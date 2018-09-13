package student.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import student.dao.StudentImpl;
import student.entity.Student;

@WebServlet("/UpdateStudent")
public class UpdateServlet extends HttpServlet {
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		request.setCharacterEncoding("utf-8");
		String i = request.getParameter("id");
		int id = Integer.valueOf(i);
		String name = request.getParameter("name");
		String sex = request.getParameter("sex");
		String age = request.getParameter("age");
		String school = request.getParameter("school");
		String info = request.getParameter("info");

		Student student = new Student();
		student.setId(id);
		student.setName(name);
		student.setSex(sex);
		student.setAge(age);
		student.setSchool(school);
		student.setInfo(info);

		StudentImpl st = new StudentImpl();
		if (st.updateStudent(student)) {
			response.sendRedirect("index.jsp");
		} else {
			response.sendRedirect("index.jsp");
		}
	}

}
