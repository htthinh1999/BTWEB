package evdictionary.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import evdictionary.model.DatabaseManager;

/**
 * Servlet implementation class AddNewWord
 */
@WebServlet("/add-new-word")
public class AddNewWord extends HttpServlet {
	
    static final String url = "/home";
	private static final long serialVersionUID = 1L;
	
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AddNewWord() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String newWord = request.getParameter("txtNewWord");
		String newWordTranslated = request.getParameter("txtNewWordType") + "<br>- " + request.getParameter("txtNewWordTranslated");
		DatabaseManager.AddNewWord(newWord, newWordTranslated);
		RequestDispatcher rd = request.getRequestDispatcher(url);
		rd.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
