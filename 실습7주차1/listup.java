

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class listup
 */
@WebServlet("/listup")
public class listup extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public listup() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.setContentType("text/html;charset=utf-8");
		
		String name = request.getParameter("name");
		String phone = request.getParameter("phone");
		String address = request.getParameter("address");
		PrintWriter out = response.getWriter();
		
		out.println("<HTML>");
		out.println("<HEAD></HEAD>");
		out.println("<BODY>");
		out.println("NAME = " + name + "<br>");
		out.println("PHONE = " + phone + "<br>");
		out.println("ADDRESS = " + address + "<br>");
		out.println("</BODY>");
		out.println("</HTML>");
	}

}
