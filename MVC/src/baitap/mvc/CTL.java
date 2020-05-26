package baitap.mvc;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class CTL
 */
@WebServlet("/CTL")
public class CTL extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	final private String errorPage = "fail.jsp";
	final private String successPage = "success.jsp";
	final private String indexPage = "index.jsp";
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CTL() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
//		doGet(request, response);
		
		try {
			String action = request.getParameter("tbAction");
			if(action.equals("Login")) {
				String username = request.getParameter("username");
				String password = request.getParameter("password");
				String url = errorPage;
				if(username.length()>0) {
					url = successPage;
					
					Model model = new Model();
					boolean check = model.checkLogin();
					
				}
				RequestDispatcher rd = request.getRequestDispatcher(url);
				rd.forward(request, response);
				
			}
		}catch (Exception e) {
			e.printStackTrace();
		}
		
	}

}
