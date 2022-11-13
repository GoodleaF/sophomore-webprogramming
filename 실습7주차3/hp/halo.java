package hp;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.PrintWriter;

@WebServlet("/halo")
public class halo extends HttpServlet{
	private static final long serialVersionUID = 1L;
	
	public halo() {
		super();
	}
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
		response.setContentType("text/html;charset=UTF-8");
		
		PrintWriter out = response.getWriter();
				
		out.println("<html>" + "<body>" + "<h1>XML에서 Servlet URL mapping 하기</h1>" + "</body>" + "</html>");
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
		doGet(request, response);
	}
}
