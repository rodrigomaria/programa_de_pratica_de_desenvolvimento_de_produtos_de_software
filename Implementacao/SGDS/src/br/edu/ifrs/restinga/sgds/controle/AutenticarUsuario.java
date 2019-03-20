package br.edu.ifrs.restinga.sgds.controle;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import br.edu.ifrs.restinga.sgds.modelo.Servidor;
import br.edu.ifrs.restinga.sgds.modelo.ServidorDAO;
import sun.text.normalizer.UBiDiProps;

/**
 * Servlet implementation class AutenticaUsuario
 */
@WebServlet(name = "AutenticarUsuario", urlPatterns = { "/AutenticarUsuario" })
public class AutenticarUsuario extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		try {
			request.setCharacterEncoding("UTF-8");
			// String login = request.getParameter("usuario");
			// String password = request.getParameter("senha");
			// request.getRequestDispatcher("main.jsp").forward(request, response);
			Logar(request, response);
		} catch (Exception e) {
			request.setAttribute("erro", "Não chama o jsp");
			request.getRequestDispatcher("erro.jsp").forward(request, response);
		}
	}

	protected void Logar(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		try {
			String matricula = request.getParameter("usuario");
			String senha = request.getParameter("senha");
			ServidorDAO dao = new ServidorDAO();
			Servidor usuario = dao.efetuarLogin(matricula, senha);
			
			if(usuario != null) {
				request.getSession().setAttribute("usuarioLogado", usuario);
				request.getRequestDispatcher("main.jsp").forward(request, response);
			} else {
				request.setAttribute("msg", "Usuario ou senha incorreto.");
				request.getRequestDispatcher("autenticar.jsp").forward(request, response);
			}
		} catch (Exception e) {
			request.setAttribute("msg", e.getMessage());
			request.getRequestDispatcher("index.html").forward(request, response);
		}
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		// response.getWriter().append("Served at:
		// ").append(request.getContextPath());
		service(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		// doGet(request, response);
		service(request, response);
	}

}
