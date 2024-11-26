package com.user.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.dao.UserDao;
import com.db.DBConnect;
import com.entity.User;


<<<<<<< HEAD



=======
>>>>>>> 71b044ebac4d3d540efdaac9db0d5337b6cd5eed
@WebServlet("/user_register")
public class UserRegister extends HttpServlet {

	@Override
<<<<<<< HEAD
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws IOException {
=======
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
>>>>>>> 71b044ebac4d3d540efdaac9db0d5337b6cd5eed

		try {
			String fullName = req.getParameter("fullname");
			String email = req.getParameter("email");
			String password = req.getParameter("password");

			User u = new User(fullName, email, password);

			UserDao dao = new UserDao(DBConnect.getConn());

			HttpSession session = req.getSession();

			boolean f = dao.register(u);

			if (f) {
<<<<<<< HEAD

				session.setAttribute("sucMsg", "Register Sucessfully");
=======
				session.setAttribute("sucMsg", "Register Succesfull");
>>>>>>> 71b044ebac4d3d540efdaac9db0d5337b6cd5eed
				resp.sendRedirect("signup.jsp");

			} else {
				session.setAttribute("errorMsg", "Something wrong on server");
				resp.sendRedirect("signup.jsp");
			}
<<<<<<< HEAD

=======
>>>>>>> 71b044ebac4d3d540efdaac9db0d5337b6cd5eed
		} catch (Exception e) {
			e.printStackTrace();
		}

	}

}