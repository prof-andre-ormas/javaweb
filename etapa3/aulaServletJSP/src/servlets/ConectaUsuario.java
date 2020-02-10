package servlets;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import pojos.Usuario;

/**
 * Servlet implementation class ConectaUsuario
 */
@WebServlet("/ConectaUsuario")
public class ConectaUsuario extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		Usuario usr = new Usuario();
		
		usr.setEmail(request.getParameter("mail"));
		usr.setSenha(request.getParameter("password"));
		
		if (usr.getSenha().compareTo("admin") == 0) {
			request.setAttribute("user", usr);
			RequestDispatcher rd = request.getRequestDispatcher("login-success.jsp");
			rd.forward(request, response);			
		}
		else {
			
		}
	}

}
