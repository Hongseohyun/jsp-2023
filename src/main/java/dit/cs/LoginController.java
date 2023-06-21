package dit.cs;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class HelloServlet
 */
@WebServlet("*.do")
public class LoginController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
		response.setContentType("text/html; charset=UTF-8");
		PrintWriter out = response.getWriter();
		
		request.setCharacterEncoding("utf-8");
		String viewPage = null;
		String uri = request.getRequestURI();
		System.out.println(uri);
		
		String com = uri.substring(uri.lastIndexOf("/")+1,uri.indexOf(".do"));
		System.out.println();
		System.out.println(com);
		
		if(com.equals("list") && com != null) {
			LoginDAO dao = new LoginDAO();
			
			ArrayList<LoginDTO> dtos = dao.list();
			request.setAttribute("dtos", dtos);
			viewPage = "/Dao-Dto/list.do";
		}if(com.equals("insertForm") && com != null) {
			viewPage = "/Dao-Dto/inserForm.jsp";
		}if(com.equals("insert") && com != null) {
			String id = request.getParameter("id");
			String name = request.getParameter("name");
			String pwd = request.getParameter("pwd");
			
			LoginDTO dto = new LoginDTO(id, name, pwd);
			LoginDAO dao = new LoginDAO();
			dao.insertLogin(dto);
			viewPage = "/Dao-Dto/list.do";
		}if(com.equals("index") && com != null) {
			
			viewPage = "/WEB-INF/view/index.jsp";
		}
		

		RequestDispatcher rd = request.getRequestDispatcher("/Dao-Dto/list.jsp");
		rd.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
