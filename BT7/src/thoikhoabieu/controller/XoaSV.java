package thoikhoabieu.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import thoikhoabieu.model.DatabaseManager;

/**
 * Servlet implementation class XoaSV
 */
@WebServlet("/XoaSV")
public class XoaSV extends HttpServlet {
	private static final long serialVersionUID = 1L;
	static String url = "Home";
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public XoaSV() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String maSV = request.getParameter("txtMaSV");
		DatabaseManager.DeleteSV(maSV);

		RequestDispatcher rd = request.getRequestDispatcher(url);
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
