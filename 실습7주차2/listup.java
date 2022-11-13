

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
		
		int num1 = Integer.parseInt(request.getParameter("num1"));
		int num2 = Integer.parseInt(request.getParameter("num2"));
		PrintWriter out = response.getWriter();
		int add =num1 + num2;
		int sub =num1 - num2;
		int mul =num1 * num2;
		int div =num1 / num2;
		out.println("<HTML>");
		out.println("<HEAD></HEAD>");
		out.println("<BODY>");
		out.println("ADD = " + add + "<br>");
		out.println("SUB = " + sub + "<br>");
		out.println("MUL = " + mul + "<br>");
		out.println("DIV = " + div + "<br>");
		out.println("</BODY>");
		out.println("</HTML>");
	}

}
