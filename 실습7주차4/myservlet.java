package test;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.PrintWriter;

@WebServlet("/myservlet")
public class myservlet extends HttpServlet{
	private static final long serialVersionUID = 1L;

	public myservlet() {
		super();
	}
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
		response.sendRedirect("mylogin.do");
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html;charset=UTF-8");
		
		String id = request.getParameter("id");
		String pwd = request.getParameter("pwd");
		
		PrintWriter out = response.getWriter();
		
		out.println("<html>");
		out.println("<head></head>");
		out.println("<body>");
		if(id.equals("hong")&&pwd.equals("1234")) {
			out.println(id+"님이 등장");
		}
		else {
			out.println("아이디 또는 비밀번호를 다시 확인하세요");
		}
		out.println("</body>");
		out.println("</html>");
	}
}
