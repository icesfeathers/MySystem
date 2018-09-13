package student.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import student.dao.StudentImpl;

@WebServlet("/DeleteStudent")
public class DeleteServlet extends HttpServlet {

		public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			doPost(request, response);
		}

		public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

			String i = request.getParameter("id");
			int id = Integer.valueOf(i);

			StudentImpl st = new StudentImpl();
			if (st.deleteStudent(id)) {
				response.sendRedirect("index.jsp");
			} else {
				response.sendRedirect("index.jsp");
			}
		}
	}

