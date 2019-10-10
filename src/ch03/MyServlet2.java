package ch03;

import java.io.*;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class MyServlet2
 */
@WebServlet(name = "myServlet2", urlPatterns = { "/myServlet2" })
public class MyServlet2 extends HttpServlet {
	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset=EUC-KR");
        PrintWriter out = response.getWriter();
        out.println("<html>");
        out.println("<head>");
        out.println("<title>MyServlet2</title>");
        out.println("</head>");
        out.println("<body>");
        out.println("<h1>파이팅 코리아!!!</h1>");
        out.println("</body>");
        out.println("</html>");
	}

}
