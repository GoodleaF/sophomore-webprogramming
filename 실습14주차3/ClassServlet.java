

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.*;

/**
 * Servlet implementation class ClassServlet
 */
@WebServlet(name="Class", urlPatterns= {"/Class"})
public class ClassServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ClassServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
		// TODO Auto-generated method stub
		String Class= request.getParameter("CLASS");
		HttpSession session=request.getSession();
		session.setAttribute("CLASS", Class);
		response.setContentType("text/html;charset=utf-8");
		PrintWriter out = response.getWriter();
		out.println("<HTML>");
		out.println("<HEAD><TITLE>Q3</TITLE></HEAD>");
		out.println("<BODY>");
		out.println("<H3>현재 날짜와 시간은?</H3>");
		out.println("<FORM ACTION=result>");
		out.println("<INPUT TYPE=TEXTFIELD NAME=TIME>");
		out.println("<INPUT TYPE=SUBMIT VALUE='확인'>");
		out.println("</FORM>");
		out.println("</BODY>");
		out.println("</HTML>");
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */

}
